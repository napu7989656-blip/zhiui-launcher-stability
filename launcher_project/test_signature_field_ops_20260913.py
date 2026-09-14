from pathlib import Path
import json,importlib.util
from stability_static_checks_20260905 import scan,OUT
t=OUT/'field_ops_regression_r22';assert not t.exists();(t/'smali/o').mkdir(parents=True)
p=t/'smali/o/Fields.smali'
prefix='.class public Lo/Fields;\n.super Ljava/lang/Object;\n.field public value:I\n.field public static shared:I\n'
cases=[]
for op in ['iget','iput','sget','sput','iget-object','iput-object','sget-object','sput-object','iget-wide','iput-wide','sget-wide','sput-wide']:
 for kind in ['valid','missing','mismatch']:
  target=('shared' if op.startswith('s') else 'value') if kind=='valid' else 'missing' if kind=='missing' else ('value' if op.startswith('s') else 'shared')
  p.write_text(prefix+'.method public run()V\n.locals 3\n'+op+' v0, '+('v1, ' if op.startswith('i') else '')+'Lo/Fields;->'+target+':I\nreturn-void\n.end method\n',encoding='utf-8')
  # Descriptor/width validation is not supplied by this signature checker.
  result=scan(t,{})
  assert len(result)==int(kind!='valid'),(op,kind,result)
  if result:assert result[0]['issue']==('unresolved_signature' if kind=='missing' else 'static_instance_mismatch')
  cases.append(dict(op=op,kind=kind))
# Demonstrate the original defect on a missing put field, using the preserved scanner.
spec=importlib.util.spec_from_file_location('old_scan',OUT/'tool_archive_before_r22/stability_static_checks_20260905.py');old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
p.write_text(prefix+'.method public run()V\n.locals 2\nsput v0, Lo/Fields;->missing:I\nreturn-void\n.end method\n',encoding='utf-8')
assert old.scan(t,{})==[] and len(scan(t,{}))==1
(t/'result.json').write_text(json.dumps(dict(cases=cases,original_put_defect_reproduced=True,limits='Signature and static-instance only; object/wide register typing not tested'),indent=2),encoding='utf-8')
print('36 field opcode/signature cases passed; old put omission reproduced.')
