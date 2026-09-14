"""Verify an explicit patch parent, source, and completed final decode; no source mutation."""
import argparse,json,re,csv,xml.etree.ElementTree as ET
from pathlib import Path
from stability_local_audit_20260905 import treehash,sha,methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
def norm(path):
    result=[];text=path.read_text(encoding='utf-8')
    for sig,(body,_) in methods(path).items():
        labels={}
        def label(m):
            value=m.group(0)
            if value not in defined:return value
            if value not in labels:labels[value]=':label_'+str(len(labels))
            return labels[value]
        clean='\n'.join(l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('#','.line ')))
        # goto widths encode the same unconditional jump; preserve its target.
        clean=re.sub(r'(?m)^goto/(?:16|32)(?= :\w+$)', 'goto', clean)
        # DEX payloads need 32-bit alignment. apktool may insert one padding nop
        # immediately before an unexecutable switch/array payload, not elsewhere.
        clean=re.sub(r'(?m)^nop\n(?=:\w+\n\.(?:packed-switch|sparse-switch|array-data)\b)', '', clean)
        # Packed-switch entries are references, not adjacent label definitions.
        # Preserve every entry and its order before coalescing address aliases.
        marked=[];in_packed=False
        for line in clean.splitlines():
            if line.startswith('.packed-switch '):in_packed=True
            elif line=='.end packed-switch':in_packed=False
            elif in_packed and re.fullmatch(r':\w+',line):line='switch-target '+line
            marked.append(line)
        clean='\n'.join(marked)
        # Catch directives emit no code. apktool can place a directive between
        # two labels at the same address. Keep all ranges/types/handler order,
        # but place declarations after instructions so those aliases coalesce.
        catch_lines=[l for l in clean.splitlines() if l.startswith(('.catch ','.catchall '))]
        if catch_lines:
            clean='\n'.join([l for l in clean.splitlines() if not l.startswith(('.catch ','.catchall '))]+catch_lines)
        # apktool may split one address into separate goto/conditional labels.
        # Coalesce only adjacent label definitions, never across an instruction
        # or directive; all aliases then denote exactly the same bytecode address.
        aliases={}
        def coalesce(match):
            names=match.group(0).splitlines()
            for name in names[1:]:aliases[name]=names[0]
            return names[0]
        clean=re.sub(r'(?m)^:\w+(?:\n:\w+)+$',coalesce,clean)
        clean=re.sub(r':\w+',lambda m:aliases.get(m.group(0),m.group(0)),clean)
        defined=set(re.findall(r'(?m)^(:\w+)$',clean))
        # Labels left by removed branches carry no semantics when no instruction,
        # exception handler or payload refers to them. Assemblers omit them.
        unused={v for v in defined if len(re.findall(re.escape(v)+r'(?!\w)',clean))==1}
        clean='\n'.join(l for l in clean.splitlines() if l not in unused)
        defined-=unused
        result.append((sig,re.sub(r':\w+',label,clean)))
    fields=sorted(l.strip() for l in text.splitlines() if l.strip().startswith(('.class ','.super ','.implements ','.field ')))
    return fields,sorted(result)

def resource_table(path):
    # Only public.xml and ids.xml are unordered declarations. Never use this
    # for layouts or other ordered XML structures.
    root=ET.parse(path).getroot()
    return root.tag,root.attrib,sorted((c.tag,tuple(sorted(c.attrib.items())),(c.text or '').strip()) for c in root)
def main():
    p=argparse.ArgumentParser();p.add_argument('tag');p.add_argument('parent');p.add_argument('work');p.add_argument('apk');p.add_argument('allow',nargs='+');a=p.parse_args()
    parent=OUT/'worktrees'/a.parent;work=OUT/'worktrees'/a.work;final=OUT/'final_redecode'/a.tag
    # Only run after the decode command has completed, not while it is producing files.
    logs=(OUT/'logs'/f'{a.tag}_final_decode.txt').read_text(encoding='utf-8')
    assert 'Copying unknown files' in logs,'Final decode is incomplete'
    hp,hw,hf=map(treehash,(parent,work,final))
    changes=sorted(k for k in hp.keys()|hw.keys() if hp.get(k)!=hw.get(k));assert set(changes)==set(a.allow),changes
    unexpected=[];normalized=[]
    for k in hw.keys()|hf.keys():
        if k=='apktool.yml' or k.startswith('original/') or hw.get(k)==hf.get(k):continue
        if k.endswith('.smali') and k in hw and k in hf and norm(work/k)==norm(final/k):
            normalized.append(dict(path=k,kind='smali debug/labels/member order/payload alignment'));continue
        if k in ('res/values/public.xml','res/values/ids.xml') and k in hw and k in hf and resource_table(work/k)==resource_table(final/k):
            normalized.append(dict(path=k,kind='identical XML declarations; order/whitespace only'));continue
        unexpected.append(k)
    assert not unexpected,unexpected
    artifact=Path('D:/apk')/a.apk
    result=dict(candidate=str(artifact),sha256=sha(artifact),bytes=artifact.stat().st_size,parent=a.parent,source_files=len(hw),changed_files=changes,
        unexpected_source_changes=[],unexpected_final_business_changes=[],normalized_final_differences=normalized,status='SINGLE_PATCH_LOCAL_PASS; NOT_FULL_PLAN_PASS; NOT_VEHICLE_TESTED')
    (OUT/f'{a.tag}_verification.json').write_text(json.dumps(result,indent=2),encoding='utf-8');print(json.dumps(result))
if __name__=='__main__':main()
