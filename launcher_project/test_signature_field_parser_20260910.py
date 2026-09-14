import json
from pathlib import Path
from stability_static_checks_20260905 import load_app,scan,OUT
root=OUT/'modules/signature_field_parser_r1';assert not root.exists();(root/'smali/o').mkdir(parents=True)
(root/'smali/o/Fields.smali').write_text('''.class public Lo/Fields;
.super Ljava/lang/Object;
.field count:I
.field action:Ljava/lang/Runnable;
.field final values:[I
.field public static TOTAL:I = 4
.field private static text:Ljava/lang/String; = "a:b c"
.method public check()V
    .locals 1
    iget v0, p0, Lo/Fields;->count:I
    iget-object v0, p0, Lo/Fields;->action:Ljava/lang/Runnable;
    iget-object v0, p0, Lo/Fields;->values:[I
    sget v0, Lo/Fields;->TOTAL:I
    sget-object v0, Lo/Fields;->text:Ljava/lang/String;
    iget v0, p0, Lo/Fields;->missing:I
    sget v0, Lo/Fields;->count:I
    iget v0, p0, Lo/Fields;->TOTAL:I
    return-void
.end method
''',encoding='utf-8')
db,_=load_app(root);assert db['Lo/Fields;']['fields']=={'count:I':0,'action:Ljava/lang/Runnable;':0,'values:[I':0,'TOTAL:I':8,'text:Ljava/lang/String;':8}
rows=scan(root,{})
assert [(r['target'],r['issue']) for r in rows]==[('Lo/Fields;->missing:I','unresolved_signature'),('Lo/Fields;->count:I','static_instance_mismatch'),('Lo/Fields;->TOTAL:I','static_instance_mismatch')]
(root/'result.json').write_text(json.dumps(dict(fields=5,retained_negative_findings=rows,pass_=True),indent=2),encoding='utf-8')
print('PASS 5 field declarations and 3 genuine missing/static-instance counterexamples.')
