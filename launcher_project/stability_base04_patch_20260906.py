"""One wallpaper async lifecycle patch; preserve all unrelated selectors."""
import json,shutil,re,difflib
from pathlib import Path
from stability_local_audit_20260905 import sha,methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
SRC=OUT/'worktrees/base03_retriever_release_r1';DST=OUT/'worktrees/base04_wallpaper_results_r1'
HELPER='Lcom/byd/launcher/stability/WallpaperFrameApply;'

def one(text,old,new):
    assert text.count(old)==1,old
    return text.replace(old,new)

def patch_method(text,signature,fn):
    pat=r'(?ms)^\.method [^\n]*'+re.escape(signature)+r'\n.*?^\.end method'
    found=re.findall(pat,text);assert len(found)==1,signature
    return text.replace(found[0],fn(found[0]))

def guard(body,ret):
    return re.sub(r'(    \.locals \d+\n)',r'\1\n    iget-boolean v0, p0, Lo/ak;->Ͳ:Z\n    if-eqz v0, :stability_active\n'+ret+'\n    :stability_active\n',body,count=1)

def main():
    assert json.loads((OUT/'base03_r1_verification.json').read_text())['unexpected_final_business_changes']==[]
    if DST.exists():raise ValueError('Refuse overwrite')
    shutil.copytree(SRC,DST,ignore=lambda d,n:[x for x in n if Path(d)==SRC and x in ('build','dist','.audit_decode_ok')])
    changes=[];diffs=[]
    def save(rel,after):
        p=DST/rel;before=p.read_text(encoding='utf-8') if p.exists() else ''
        p.parent.mkdir(parents=True,exist_ok=True);p.write_text(after,encoding='utf-8',newline='\n')
        diffs.extend(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='base03_r1/'+rel,tofile='base04_r1/'+rel))
        changes.append(dict(path=rel,before_sha=sha(SRC/rel) if (SRC/rel).exists() else '',after_sha=sha(p)))
    rel='smali/o/ak.smali';t=(DST/rel).read_text(encoding='utf-8')
    t=one(t,'.field public Ͳ:Z','.field public volatile Ͳ:Z')
    def bind(b):
        b=guard(b,'    return-void')
        # The caller should never bind an empty dataset, but fail closed if a
        # late RecyclerView callback arrives during a data/adapter transition.
        b=one(b,'    move p2, v1\n','    return-void\n')
        b=one(b,'    check-cast v6, Landroid/widget/ImageView;','    check-cast v6, Landroid/widget/ImageView;\n    if-eqz v6, :stability_no_poster\n    const v2, 0x7f08032e\n    invoke-virtual {v6, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V\n    :stability_no_poster')
        b=one(b,'    invoke-virtual {v7, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V','    invoke-virtual {v7, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V\n    const v0, 0x7f08032e\n    invoke-virtual {v7, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V')
        return b
    t=patch_method(t,'onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V',bind)
    t=patch_method(t,'Ͳ(I)V',lambda b:guard(b,'    return-void'))
    t=patch_method(t,'ˋ(I)Landroid/graphics/Bitmap;',lambda b:guard(b,'    const/4 v0, 0x0\n    return-object v0'))
    save(rel,t)
    rel='smali/o/sj.smali';t=(DST/rel).read_text(encoding='utf-8');a=t.index('    :pswitch_6\n');b=t.index('    :try_end_2',a)
    part=t[a:b];part=one(part,'    check-cast v0, Lo/ak;','    check-cast v0, Lo/ak;\n    iget-boolean v1, v0, Lo/ak;->Ͳ:Z\n    if-nez v1, :cond_c')
    k=part.index('    move-result-object v1',part.index('VideoThumbnail;->read'))+len('    move-result-object v1')
    part=part[:k]+f'\n    invoke-static {{v0, v2, v1, v3}}, {HELPER}->submit(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V\n'
    save(rel,t[:a]+part+t[b:])
    rel='smali/o/tj.smali';t=(DST/rel).read_text(encoding='utf-8');a=t.index('    :cond_5\n');b=t.index('    :try_end_4',a)
    t=t[:a]+f'    :cond_5\n    invoke-static {{v0, v1, v3, v4}}, {HELPER}->submit(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V\n'+t[b:]
    save(rel,t)
    rel='smali/o/y7.smali';t=(DST/rel).read_text(encoding='utf-8')
    t=patch_method(t,'run()V',lambda b:one(b,'    .locals 15','    .locals 15\n    iget-object v0, p0, Lo/y7;->ͱ:Lcom/byd/launcher/MainActivity;\n    iget-boolean v0, v0, Lcom/byd/launcher/MainActivity;->ͺ:Z\n    if-eqz v0, :stability_activity_alive\n    return-void\n    :stability_activity_alive'))
    save(rel,t)
    for rel,line in [('res/values/ids.xml','    <id name="stability_wallpaper_binding" />'),('res/values/public.xml','    <public type="id" name="stability_wallpaper_binding" id="0x7f08032e" />')]:
        t=(DST/rel).read_text(encoding='utf-8');assert 'stability_wallpaper_binding' not in t and '0x7f08032e' not in t
        save(rel,one(t,'</resources>',line+'\n</resources>'))
    save('smali/com/byd/launcher/stability/WallpaperFrameApply.smali',(OUT/'modules/WallpaperFrameApply.smali').read_text(encoding='utf-8'))
    (OUT/'base04_r1.patch').write_text(''.join(diffs),encoding='utf-8')
    (OUT/'base04_r1_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    print('BASE-04: image/video result publication on owner Handler; weak owners, active/closed and view binding checks; 7 files.')
if __name__=='__main__':main()
