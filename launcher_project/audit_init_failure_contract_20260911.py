import json,hashlib,re
from pathlib import Path
from stability_local_audit_20260905 import methods
from test_base10_nav_smali_20260908 import NavVM
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
TREE=OUT/'worktrees/base10_init_owner_r17'
NAV='Lcom/byd/launcher/NavBarService;'
def method(rel,sig):return next(b for s,(b,_) in methods(TREE/rel).items() if s.split()[-1]==sig)
class JavaString(str):
 def __bool__(self):return True # Java reference is non-null even for empty text.
b=method('smali/com/byd/launcher/NavBarService.smali','Κ()V')
start=b.index('    invoke-static {v0, v10}, Lo/c0;->execAdbCmd(Ljava/lang/String;I)Ljava/lang/String;')
start=b.index('    move-result-object v0',start);start=b.index('\n',start)
end=b.index('    :goto_1\n',start)+len('    :goto_1\n')
fragment=b[start:end]+'    return v10\n'
rows=[]
for name,value,expected in [('null',0,0),('error_sentinel',JavaString('HULU_ERROR'),0),('empty_failure',JavaString(''),1),('permission_error',JavaString('Permission denied'),1)]:
 vm=NavVM(TREE)
 def extra(target,args):
  assert target=='Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',target
  return int(args[0].startswith(args[1]))
 vm.extra_call=extra
 got=vm.execute(NAV,'Κ()V',[],body=fragment,initial={'v0':value,'v13':1,'v11':0})
 assert got==expected,(name,got)
 rows.append(dict(input=name,reported_success=bool(got)))
raw=method('smali/o/c0.smali','ˋ(ILjava/lang/String;)Ljava/lang/String;')
catch=raw[raw.index('    :catch_0\n'):raw.index('    :catch_2\n')]
assert 'const-string p0, ""' in catch and 'return-object p0' in catch
assert b.index('->readLine()Ljava/lang/String;')<b.index('Lo/g0;->Ι(Ljava/lang/Process;Ljava/util/concurrent/TimeUnit;)V')
assert '->destroy()V' not in b and '.catch Ljava/lang/InterruptedException;' not in b
files=['smali/com/byd/launcher/NavBarService.smali','smali/o/ea.smali','smali/o/m9.smali','smali/o/c0.smali','smali/o/g0.smali']
result=dict(tree=str(TREE),source_sha256={r:hashlib.sha256((TREE/r).read_bytes()).hexdigest() for r in files},cases=rows,confirmed='Wrapper exception path returns empty text; actual listener success branch treats that non-null empty text as success.',limits='Actual isolated smali success decision, framework string comparison doubled with Java reference truthiness. No ADB, permission changes, process execution, ART or vehicle test. Permission-denied string is an injected negative case, not a captured device result.')
(OUT/'base10_r17_nested_init_findings.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
print('Confirmed false-success on empty failure result; four actual smali decision cases recorded.')
