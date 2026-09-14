# BASE-10 R23 媒体管理器释放与初始化归属（2026-09-13）

APK：D:/apk/zhiui-stability-local-base10-r23.apk
SHA256：`2447514FA38B89CDBF6C409C1FA78473EDFB5B40E3C7FF6D46A0C81147FDC5B4`
父R22保留。6增量/159累计文件，源码和最终回解各390组，22保护包不变，API候选127无新增。分项本地通过，未实车，整体计划未完成。

重连和Service销毁共用幂等释放：先标记失效、清除ia中的Service归属链，再逐项清Future、封面owner、Handler、controller callback及活动会话监听；单项RuntimeException不阻断后续清理。缓存引用释放但不recycle借用图片。框架注销失败时只能保证旧回调失效与Service引用清除，不能宣称外部监听必定释放。

延迟初始化改为捕获具体manager并排入该manager自己的Handler。销毁可撤销未执行启动；执行时验证Service/manager真实归属。一次成功初始化只创建一个周期轮询，不再重置destroyed；复用已有已注册监听。缺少系统服务、初始化异常或Handler拒绝轮询入队时允许以后显式重试。原首次3秒、周期5秒保留。

源码/成品21组新增异常清理/启动/替换回归，继承369组，明确替换R21两项旧生命周期探针，总390组。只是Android/Handler/注册替身，不是ART。构建、zipalign、开发签名、属性、回解、精确逆补丁与累计检查通过。

JADX a9的startup/dispose已与成品smali交叉；退出3为既有NavBarService.Ε错误。ea/llI退出0但run仍是占位，实际新selector代码按最终smali和执行探针审核；c8媒体分支及新MediaManagerStart还原符合。没有把JADX退出0当整个方法可执行证明。

成品校验工具修正同地址标签被.catch分隔的格式等价问题，保留异常范围/类型/处理器顺序；7项专门断言与goto5/switch6全部通过。旧工具、最初比对失败及测试标签假设失败记录保留。未扩大业务白名单，未为格式差异重建APK。

下一项已复现：旧z8/u8媒体动作重试在回调逃过Handler移除时，disposed后仍可能重新排队，证据media_late_retry_r23_audit.json；拟R24补入口守卫，不能将R23当媒体整体验收完成。之后继续影像叠层配置/资源、ADB/IME/其余等待、完整L01～L12+回引和P3全部门禁。

本地总门禁后由用户停车观察HOME/服务恢复、切播放器和退出重进的会话监听/轮询数量，收集MusicCtrlMgr/NavBarSvc/media_session/crash。当前不连接实车，不执行播放或车辆控制命令。失败先返回原车桌面保留证据，核对签名/版本/配置后恢复已验证V2。R22/R23只作本地检查点；未实车包不进正式交付目录。
