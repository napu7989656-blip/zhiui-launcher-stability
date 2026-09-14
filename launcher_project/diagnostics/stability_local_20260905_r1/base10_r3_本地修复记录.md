# BASE-10 r3 本地修复记录


## 43. BASE-10 r3 七处读取接入有界线程池（2026-09-08，未实车）

当前检查点 `D:/apk/zhiui-stability-local-base10-r3.apk`，SHA-256 `A88184A1659BE4FD5191FFEA8012EEB88BF7EAF4EA314A5E2350CE2FD61BAA30`，父版本 BASE-10 r2。独立模块已正式接入七处读取：仪表亮度刷新/初始化、导航音量初始化/轮询、SOC目标初始化/刷新和系统主题查询。运行中的这些读取进程内共用2个线程，等待队列上限8；同一所有者/类别替换仍在等待的旧读取，满时丢弃最早等待的读取。控制器先标记停止，再清除属于自己的等待项；不会打断已发送请求或强制中断native。

已有 Java 模块的10,000次提交、所有者隔离、销毁/队列替换/异常用例通过。源码与成品实际指令测试确认七个原Runnable及参数保持，提交key/所属控制器正确，停止后取消与重复销毁有效，继承主题19项、队列6项和60入口/15清理分支通过。测试替身不进入DEX，不是ART。第一版接线测试脚本误将三值fixture拆成两值，修正测试解包后通过，产品代码未因此修改。

五个允许文件变化（ff、ie及3个编译模块类），累计62文件均可归属；原查询方法、用户操作和其他selector完整保留。全量构建、zipalign、同证书V2/V3签名、aapt/apkanalyzer、最终回解/JADX模块核对通过；22保护APK哈希未变，Android29声明级127候选无新增。证据 `base10_r3_verification.json`、`base10_r3_branch_tests_final.json`、`base10_r3_manual_audit.json`、`base10_r3_cumulative_content.json`、`base10_r3_cumulative_signature_check.json`。

BASE-10仍未全部完成：磁贴刷新两处后台producer已完成getter分类（`base10_tile_read_audit.json`），准备接入；背景玻璃处理、面板/查询代次、A-B-A偏好变化和中断仍待修。之前“线程池模块尚未接入”是r3以前的历史状态，不适用于上述七处。未连接车机，当前不作为V2/V3全功能交付包。
