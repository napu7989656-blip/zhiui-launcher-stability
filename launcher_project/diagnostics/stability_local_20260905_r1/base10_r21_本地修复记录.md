# BASE-10 R21 媒体封面请求接入（2026-09-13收尾）

最新分项本地检查点，整体未完成、未实车。APK D:/apk/zhiui-stability-local-base10-r21.apk，SHA256 `C1F4E91A419BFB35E380DE111E4EE55FDBC6FB8CF235BFC2C2BC4EA9C82DC034`，30096703字节；父R20b保留。18增量/148累计文件，源码/成品各367组，22保护包不变，API127无新增。

三类后台源与直接小图统一经本次metadata快照和MediaArtworkPipeline提交；原去重/收藏/标题回退前缀已精确核对保留。描述信息备用封面只取本次metadata，不再用旧标题搭配执行时的新controller数据。加载中仍允许旧缓存作为占位图；不能宣称所有时刻封面与歌曲完全对应。

原每manager无界executor不再创建；独立媒体池1工作/1等待，每owner1待UI结果。会话解除invalidate、Service销毁与manager替换close封面owner；不强制终止已进入provider/native的调用。Host采用R20b真实ia owner链，校验Service/manager/session，有效主线程提交缓存和原ia回调。未回收借用位图，过期结果释放引用。

Java生产Work/Pipeline与测试class字节一致，分别12050/38断言；新增22组实际快照、桥接、构造/销毁/替换及异常处理测试，加345既有组。Android和管线效果有替身，异常处理器分别执行并核对捕获范围，不等于ART运行。源码、成品全文件规范化和逆补丁通过。构建、对齐、开发证书签名、aapt/apkanalyzer通过。

JADX四个自有类退出0；a9退出3仅既有NavBarService.Ε错误，partial退出1，元数据尾部明确调用新入口。Work.begin伪源码遗漏Request的owner实参；实际成品smali明确传p0、p1、synthetic null，不能将伪源码直接编译。ia显示链已展开：vl主线程直接执行，hd另投到nd主线程；下游完整组合/生命周期仍待审查。

URI读取仍沿用原函数，其HTTP缓存过期写入、异常时流/连接关闭、字节/像素/总时限未修复。manager的其余监听释放、其他P1、V2/V3回引、P3仍开放。回滚保留R20b及已实车验证V2/原车桌面；R20有已知错误，不推荐安装。没有网络、设备、安装或车辆操作。
