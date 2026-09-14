"""Record completed nav freshness/key checkpoints without touching car artifacts."""
import json,csv,shutil
from pathlib import Path
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');ROOT=Path('D:/apk')

def main():
    for tag in ['base10_r5','base10_r6']:
        for suffix in ['verification','branch_tests_final','cumulative_content','cumulative_signature_check']:
            assert (OUT/f'{tag}_{suffix}.json').exists(),(tag,suffix)
    r5=json.loads((OUT/'base10_r5_verification.json').read_text());r6=json.loads((OUT/'base10_r6_verification.json').read_text())
    current=OUT/'本地整改进度.md';archive=OUT/'本地整改进度_归档_截至base10_r4.md'
    assert not archive.exists();shutil.copy2(current,archive)
    record=f'''# BASE-10 r5/r6 导航读取有效性与队列类别修复（2026-09-08）

当前独立检查点：`D:/apk/zhiui-stability-local-base10-r6.apk`，SHA-256 `{r6['sha256'].upper()}`。父版本 r5 `{r5['sha256'].upper()}`；r5 父版本为 r4。两个新包及所有旧包保留，均未实车，不进入正式交付目录。

## 功能变化

1. r5：每个快捷设置控制器持有独立 LatestRead 状态，导航初始化及轮询在构造任务时捕获不可复用的查询标识和所属面板根视图。普通关闭起始、最终关闭、永久销毁使既有标识失效。标识不持有控制器，不使用全局所有者表。
2. 两处导航 worker 的缓存写入改到所属主线程发布：先核对永久销毁、所属 Service 与当前 Service 身份、查询标识及活动/预备根视图，再同时提交导航缓存和原显示回调。查询方法、负值跳过、原回调 selector（初始化2、轮询0）和仪表 worker 完整保留。没有新增车辆请求。
3. r6：只改导航轮询的一条队列类别常量 1→2。经实际 packed-switch 复核，je selector1 是仪表初始化，selector0/default2 才是导航；此前按分配顺序推定的用途标签错误。正确映射为仪表初始化 key1、导航初始化/轮询 key2，其余类别保持原状。

## 验证与已纠正的检查缺口

- LatestRead 生产 Java：10,014 项断言，包括真实延迟线程、10,000 次替换、关闭失效、所有者状态隔离；D8 min24 后仅3项自有类进入 DEX，测试替身不打包。
- r5/r6 的源码和各自最终 APK 回解分别执行23项导航有效性/乱序/关闭/根视图/Service身份/异常分支。原缓存-界面同时回退到旧值3的问题已复现；现在新值9保持，旧任务不能更新缓存或界面。关闭挂钩按实际插入指令测试，不等于执行了完整 Android 开关窗流程。
- 继承九处读取提交、主题19项、队列6项、60入口与15清理分支。源码恢复测试只撤销清单中的已知修改，即可与各自父版本逐字匹配；最终指令仅允许调试信息、标签命名及既有归一化差异。
- 原有接线测试只验证了“参数与当时清单一致”，没有验证类别对应的业务用途，因而漏掉仪表/导航队列冲突。新增测试从实际 selector 分支及提交常量提取用途/类别，再交给生产 QuickSettingsReadExecutor 的真实 JVM 工作线程执行。r5 复现只留下 old_nav/new_nav、仪表任务被替换；r6 保留 instrument/new_nav。证据 `modules/read_key_regression_r1/jvm_tests.json`。旧检查记录保留，早期“所有类别正确”结论由本记录纠正。
- 两包均完成 apktool build、zipalign、项目开发签名验证、aapt/apkanalyzer、最终 apktool 回解。r5 变化6文件，r6 只变1文件；累计66文件均可归属，22份保护APK哈希未变，原资源声明保持。Android29声明候选127且无新增；这些候选的全部人工调用方复核仍未完成。
- JADX 新 NavVolumeApply 输出与最终 smali 对照通过；r6 ie 输出显示 key2 导航轮询。JADX 两次非零退出均在 DEBUG 日志定位到既有 `NavBarService.Ε(ImageButton,String)` 的 RegionMakerVisitor 错误，不能把它称作零错误反编译。

## 关键文件与范围

- 补丁：`launcher_project/stability_base10_nav_patch_20260908.py`、`stability_base10_read_keys_patch_20260908.py`；实际工作树 `worktrees/base10_read_keys_r6`。
- 自有模块：`launcher_project/stability_modules/src/com/byd/launcher/stability/LatestRead.java`；导航发布小范围 smali 由前述补丁脚本维护。
- 回归：`test_base10_nav_smali_20260908.py`、`test_base10_read_keys_20260908.py --final`、`stability_run_read_key_jvm_20260908.py`。
- 成品证据：`base10_r5/r6_verification.json`、对应 `branch_tests_final`、`cumulative_content`、`cumulative_signature_check`，以及 `logs/` 的构建/回解/解析/JADX记录。

此次只解决导航的同类别读取覆盖与关闭前结果失效。仪表/磁贴缓存和结果代次、主题偏好 A→B→A、用户操作后迟到读取、背景玻璃任务与中断、完整调用方覆盖及 V2/V3 功能回引仍待完成。两个正在运行的 native 请求仍可能重叠，未被强制取消；Handler积压/真实主线程时序仍需整体审计。UI发布发生Exception时会记录并停止传播，不保证已经写入的缓存回滚。

这些验证使用生产 Java 和实际 smali，Android/查询/队列/控件边界为隔离替身；不等于 ART、真实 WindowManager、OEM权限、native 或实车验证。未连接车机、未安装或执行查询。

## 后续实车项与回滚（当前不执行）

全部本地门禁通过后，由用户安全停车执行：只打开/关闭快捷设置，观察导航音量显示，不拖动滑块；快速关闭重开并观察读数是否回退、旧面板是否更新；采集定向 QuickSettingsMgr/AndroidRuntime 日志、窗口与线程快照。预期无旧值回写、无叠窗或异常。失败先保存表现/日志并回原车桌面；包回滚以已验证 V2 为参照，安装前核对证书/版本及配置兼容，不卸载、不清数据。r5/r4仅用于本地对比，不作为已验证实车回滚承诺。
'''
    (OUT/'base10_r6_本地修复记录.md').write_text(record,encoding='utf-8')
    summary=f'''# 本地整改进度（2026-09-08，BASE-10 r6）

**全部本地检查尚未完成。未连接车机，仍未达到进入实车阶段的条件。** 当前包是原版架构上的分项修复检查点，V2/V3完整功能尚未回引，不能作为全功能稳定版交付。

## 当前检查点

- APK：`D:/apk/zhiui-stability-local-base10-r6.apk`
- SHA-256：`{r6['sha256'].upper()}`
- 父版本 r5，包含 r4 及前序基线修复；包名 com.byd.launcher，versionCode1、minSdk24、targetSdk34、arm64-v8a，项目开发证书。
- 构建/签名/对齐/解析/成品回解与精确差异通过，累计66文件归属，22保护APK哈希未变。Android29声明候选127且无新增，尚未全部人工判定。

## 已完成的本地分项

| 范围 | 已有结果 |
|---|---|
| BASE-01～04 | 壁纸页面回调释放、Adapter队列/线程退出、视频Retriever异常释放、过期壁纸结果与复用控件误写保护 |
| BASE-05/07 | 壁纸2线程/4等待、每Adapter至多2个待UI结果 |
| BASE-06 | 核实的policy_control写入双入口拦截、设置只读与历史残留显示 |
| BASE-08/09 | 状态栏失败回滚与控制器复用；快捷设置永久清理、失败资源保留重试、60入口守卫 |
| BASE-10 r1/r2 | 所属主线程队列销毁后投递/执行保护；主题发布核对Service身份和观察到的偏好 |
| BASE-10 r3/r4/r6 | 九处读取共用2线程/8等待池、按所有者取消；r6纠正导航轮询与仪表初始化类别冲突 |
| BASE-10 r5 | 导航查询标识、普通关闭失效、面板根视图身份检查；缓存与原显示回调在有效结果发布时更新 |

最新新增验证：LatestRead真实JVM线程及10,014项断言；源码/成品23项导航分支；真实生产线程池复现旧类别误删仪表任务并验证修正；继承九处提交及主题/队列/入口/清理回归。完整记录见 `base10_r6_本地修复记录.md`。JADX非零退出已定位既有Service反编译错误，实际行为以最终smali为准。

## 仍需完成

1. **BASE-10仍为部分完成。** 仪表/磁贴结果与本地缓存有效性、主题偏好A→B→A、用户操作与迟到读取、完整面板/调用方时序、背景玻璃任务与中断、其余操作线程。
2. **V2/V3功能修复回引。** 设置窗口释放、目录/轮播、原布局契约、模式键/空调入口、媒体会话/封面/空值、歌词生命周期/有界网络、HOME及点击兼容等。
3. **完整人工代码覆盖。** 修改方法/关联调用方及Android29候选的guard/factory/继承链复核，不能把声明初筛当兼容性完成。
4. **整体本地门禁。** 功能组合回归、配置升级/回滚、最终实车最小步骤与日志/恢复清单。

先继续仪表和磁贴缓存/结果的过期写入，再处理后台任务和功能回引。已完成阶段不从头重跑；只对新修改或新发现的风险补充检查。

## 证据与边界

`issues.csv`、`feature_matrix.md`、各检查点JSON和修复记录保存证据；版本沿革见 `D:/apk/PROJECT_MAP.md`，执行顺序见 `D:/apk/智UI稳定性修复计划_本地优先_20260905.md`。此前进度归档于 `本地整改进度_归档_截至base10_r4.md`。

JVM生产代码和真实线程测试、受限smali执行均使用隔离框架/车辆查询替身，不等于ART、真实窗口、OEM/native或实车。原包、V2和原车桌面恢复路径保留；没有候选进入正式交付目录。此前“类别正确”的接线结论已由r6业务用途复核纠正，旧证据保留。
'''
    current.write_text(summary,encoding='utf-8')
    maptext=f'''

## 45. BASE-10 r5/r6 导航结果有效性与队列类别（2026-09-08，未实车）

当前本地检查点 r6：`D:/apk/zhiui-stability-local-base10-r6.apk`，SHA-256 `{r6['sha256'].upper()}`；r5 `{r5['sha256'].upper()}` 是保留的父检查点，r5父版本r4。

r5新增每个控制器独立LatestRead查询标识，普通关闭开始/最终关闭/永久销毁使导航旧查询失效；je导航两处分支保持原查询，将后台缓存写入搬至NavVolumeApply，在所属主线程核对Service、查询和活动/预备面板身份后写缓存并执行原be回调。仪表worker和原查询方法完整保留。LatestRead的Java8/D8/自有类回解通过，10,014项JVM断言含真实延迟线程；源码/最终回解各23项结果/关闭/身份/异常分支通过。缓存提交后UI异常只隔离异常，不提供缓存回滚。

r6只修正ie轮询的一条key常量1→2。实际je selector1为仪表初始化、0/default2为导航。r3/r4旧接线测试仅按清单核对常量，漏掉业务类别冲突；此前“类别正确”结论更正。新增用途映射和真实生产线程池测试复现r5下导航轮询挤掉等待仪表任务，r6保留仪表与最新导航读取。类别现在仪表初始化1、导航初始化/轮询2。

两包构建、zipalign、项目开发证书签名、aapt/apkanalyzer、最终apktool回解及精确差异通过；r5变化6文件、r6变化1文件，累计66文件归属，原资源声明/22保护APK哈希保持，Android29候选127无新增。JADX新helper及r6轮询代码与smali对照；DEBUG非零错误仍是既有NavBarService.Ε(ImageButton,String) RegionMakerVisitor。没有将反编译失败称为全通过。

所有九处提交与前序主题19/队列6/60入口/15清理回归通过。测试不是ART/实车。未连接/安装/执行查询，未放入正式目录。完整改动、关键路径、实车最小观察步骤和回滚边界见 `launcher_project/diagnostics/stability_local_20260905_r1/base10_r6_本地修复记录.md`。

BASE-10与全计划仍未完成；继续仪表/磁贴缓存与结果代次、主题A-B-A、操作后旧查询、玻璃后台任务/中断、完整调用方、V2/V3回引和总本地门禁。旧“当前r4/问题未修”的追加记录是历史状态，其中导航乱序缓存问题已由r5处理，其余范围不据此宣告完成。
'''
    for p,text in [(ROOT/'PROJECT_MAP.md',maptext),(OUT/'local_findings.md',maptext),
      (ROOT/'launcher_project/README.md','\n\n当前本地检查点为BASE-10 r6（2026-09-08）：导航查询失效、缓存/界面受控发布及读取队列类别纠正；完整本地门禁仍未完成。见diagnostics/stability_local_20260905_r1/本地整改进度.md。\n'),
      (ROOT/'launcher_project/stability_modules/README.md','\n\nBASE-10 r5/r6：LatestRead.java提供独立状态/不可复用ticket，latest_read_r1模块10,014项JVM断言通过；NavVolumeApply小范围smali由stability_base10_nav_patch_20260908.py维护。九处有界读取仍在，类别已由r6业务用途测试纠正（仪表初始化1，导航初始/轮询2）。read_key_regression_r1使用生产线程池真实线程复现父版本冲突并验证修正。只对导航接入查询有效性，不代表其他读取也已处理。\n'),
      (ROOT/'智UI项目日志.md',maptext)]:
        with p.open('a',encoding='utf-8') as f:f.write(text)
    p=OUT/'issues.csv'
    with p.open(encoding='utf-8-sig',newline='') as f:reader=csv.DictReader(f);columns=reader.fieldnames;rows=list(reader)
    for row in rows:
        if row['id']=='BASE-10':
            row['checkpoint']='base10_r6';row['status']='PARTIAL_LOCAL_PASS'
            row['local_action_or_result']='r1-r4队列/主题/九处有界读取；r5导航查询标识及关闭失效、缓存+UI主线程发布，源/成品23分支；r6修正仪表与导航队列key冲突，真实生产线程池复现/修正通过；累计66文件/22保护APK；仪表磁贴缓存代次、A-B-A、操作/玻璃任务/中断及完整调用方仍待修'
    rows.append(dict(id='BUILD-02',versions='BASE-10 r3/r4/r5',priority='P1',impact='导航轮询队列类别误与仪表初始化相同，等待仪表任务可被替换',evidence='je packed-switch + base10_r6_key_manifest.json + modules/read_key_regression_r1/jvm_tests.json',status='FIXED_LOCAL_PENDING_VEHICLE',checkpoint='base10_r6',local_action_or_result='只改轮询key1→2，使导航初始/轮询同类、仪表独立；真实JVM生产线程池与源码/成品语义映射通过',vehicle_dependency='实际初始化/轮询显示与长时间资源验证'))
    with p.open('w',encoding='utf-8-sig',newline='') as f:w=csv.DictWriter(f,fieldnames=columns);w.writeheader();w.writerows(rows)
    p=OUT/'feature_matrix.md';s=p.read_text(encoding='utf-8').replace('BASE-10 r4 已修销毁后队列、所属主题发布及九处读取限流；打开/查询代次及其余后台调用方待修','BASE-10 r6 已修所属队列/主题发布、九处限流及类别冲突；导航查询失效与缓存/界面受控发布通过，仪表/磁贴代次及其余后台调用方待修');p.write_text(s,encoding='utf-8')
    p=OUT/'base10_read_executor_module.json';v=json.loads(p.read_text());v['status']='MODULE_LOCAL_PASS_INTEGRATED_IN_BASE10_R6';v['integration']['checkpoint']='base10_r6';v['integration']['semantic_category_correction']='r3-r5 instrument initialization key1 collided with nav polling key1; r6 nav polling key2 matches nav initialization; JVM regression passed';p.write_text(json.dumps(v,indent=2),encoding='utf-8')
    p=ROOT/'智UI稳定性修复计划_本地优先_20260905.md';s=p.read_text(encoding='utf-8');old='从 **L0 基线门禁核对、全量差异覆盖清单和历史日志索引** 开始，随后完成 L1 检查矩阵，再按 L01 起逐项修复、构建、累计验证。当前不运行 ADB 采集脚本，不以“先上车看看”替代本地检查。'
    assert old in s;s=s.replace(old,'2026-09-08续作位置：当前检查点BASE-10 r6，基线门禁和已有分项证据沿用，不从L0重做。下一步修仪表/磁贴的过期结果与缓存写入，再处理玻璃后台任务/中断、调用方覆盖及V2/V3功能回引，最后完成第8节总本地门禁。导航结果有效性与队列类别已修，细节见本地整改进度.md；BASE-10和全计划仍未完成。当前不运行ADB采集，不以实车尝试替代未完成的本地检查。');p.write_text(s,encoding='utf-8')
    print('Recorded r5/r6 evidence, corrected prior semantic-key conclusion, updated progress/map/issue/module/plan. Overall local phase remains incomplete.')
if __name__=='__main__':main()
