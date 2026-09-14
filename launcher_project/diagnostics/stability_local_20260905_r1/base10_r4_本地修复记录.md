# BASE-10 r4 本地修复记录


## 44. BASE-10 r4 磁贴读取进入同一有界线程池（2026-09-08，未实车）

当前本地检查点 `D:/apk/zhiui-stability-local-base10-r4.apk`，SHA-256 `10E02F54A657144210CF7B85D3DD074D55A4A19DF5882C2C838A6AB6999AB404`，父版本 BASE-10 r3。磁贴首次读取（ff.Ό→ag16）和8秒轮询中的磁贴读取（ie5→ie22）接入既有线程池，同属类别6。至此九处已核实的后台读取使用进程级2工作线程/8等待项；没有另开第二个线程池。

静态复核 Lo/ef 的全部基线实现 ke/le：le返回固定false；ke.get/字幕读取走平台状态getter、固定get请求或已有缓存；列表编辑方法不是这两条worker的调用目标。两条worker只计算状态/说明后投递原UI回调，点击/长按监听、getter、实际查询和其他共享selector保持原方法体。详细索引 `base10_tile_read_audit.json`、`base10_r4_manual_audit.json`。

源码和成品分别验证两条新接线以及前七条接线：原任务构造参数/selector一致，所属控制器和类别正确；继承主线程主题19项、队列6项、60生命周期入口和15清理分支通过。原Java池10,000次提交、线程/等待上限、同key替换、所有者隔离、销毁与异常测试继续有效。替身未打包；测试不是ART或厂商调用运行证明。

本次只改ff/ie两个文件；累计62文件全部可归属，22保护APK哈希保持，原资源声明不变。全量构建、zipalign、同开发证书V2/V3签名、aapt/apkanalyzer、最终apktool回解/指令比对通过；Android29声明级候选仍127无新增。JADX控制器显示实际提交/取消接线，DEBUG日志仅既有NavBarService.Ε(ImageButton,String)反编译错误。证据 `base10_r4_verification.json`、`base10_r4_branch_tests_final.json`、`base10_r4_cumulative_content.json`、`base10_r4_cumulative_signature_check.json`。

BASE-10仍为部分完成：同一控制器同类别的已运行读取可能并行，尚无查询/面板代次保证；队列有界不代表厂商调用完成时间有界。背景玻璃处理仍直接建线程，用户操作线程需按操作语义另审，不能当成可丢弃状态读取。下一步优先防止旧结果覆盖新面板/新查询，然后处理背景任务与中断、其余调用方，再推进V2/V3完整功能修复回引和总本地门禁。

未连接车机、未安装、未执行查询或车辆指令、未进入正式交付目录。旧包及回滚参照保留，当前包仍是本地开发检查点。
