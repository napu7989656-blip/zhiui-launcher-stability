# BASE-10 R20b 媒体实际所有者修正（2026-09-12）

当前本地检查点R20b，整体计划未完成，未实车。

APK D:/apk/zhiui-stability-local-base10-r20b.apk，SHA-256 `86AD91C705651039CFEAE42FE2C5C53F361C55855092D71C3655197D039EA4FA`，30,080,319字节。工作树base10_media_owner_r20b；父R20和此前所有包保留。

## 修复的重要错误

R20新增a9.stabilityCurrent误把a9.ˋ Context当作NavBarService；实际构造器先调用p1.getApplicationContext再保存，常规Android运行会得到Application，故原守卫错误拒绝全部媒体会话准入。此前测试直接把Service塞入该字段，遗漏了真实构造语义。R20历史分项通过已明确更正为存在已知缺陷，不能安装使用；不隐藏或删除旧报告。

R20b仅修改a9.stabilityCurrent，从现有a9.ʹ UI callback的ia.ˏ取得Service。实际llI selector15先保存新a9到Service，再构造ia(Service,9)并赋callback，然后安排延迟启动。新守卫检查callback/Service有效、Service未销毁、O0及Service持有的manager准确一致。Application Context原用途完全保留，不改为强行保存Service，也不新增持有字段。

## 验证及证据质量

测试使用真实ia构造方法赋所属Service，并执行真实a9构造器中getApplicationContext与字段写入片段（Android调用返回Application替身）。同一个实际构造状态令旧R20守卫返回false、R20b返回true，明确复现旧错误及修正。重复验证会话/manager/Service替换、销毁、注册注销异常和延迟恢复，源码/成品各345组（19媒体owner/session＋326既有）通过。不是完整Android构造或ART执行，不再以Service-as-Context替身证明此链路。

1增量/133累计文件，精确逆补丁恢复R20；源码/成品全文件规范化比对通过，22保护包不变。构建、zipalign、签名、aapt/apkanalyzer通过；Android29候选127无新增，既有API人工审查未完成。JADX o.a9退出3仅原有NavBarService.Ε RegionMaker错误，新守卫还原正确，ia.ˏ与Service身份分支已对照实际smali。

附加133已修改文件文本筛查找到a9与y7；y7的instance-of实际检查Adapter类型Lo/ak，不是Context-as-Service守卫。此筛查不是跨文件数据流审计或所有测试替身正确性的证明，P3应继续核实构造与框架返回值假设。

## 同轮封面管线准备与后续

MediaArtworkPipeline完成Java8及38项真实异步模块断言，与已准备MediaArtworkWork配合；仍未接入APK，不能计入R20b成品修复。详见媒体封面管线模块进度_20260912.md。尚无R21工作树/APK。

后续继续metadata快照/Android桥接、三个后台来源与直接分支接入、旧executor替换、URI缓存过期写/流连接清理与上限、重复管理器和监听释放；P1/P2/P3及完整V2/V3回引仍开放。

回滚保留原车桌面与已实车验证zhiui-final-v2.apk；R20不得作为推荐回滚候选。此轮未安装、卸载、连接设备、网络请求或车辆操作。
