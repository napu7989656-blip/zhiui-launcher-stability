import csv
from pathlib import Path
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
rows=[
('BASE-01','原版及所有后续','P1','全局壁纸回调保留销毁页面','MainActivity.onCreate/onDestroy; o/ak.ͳ(Bitmap)','LOCAL_PASS_PENDING_VEHICLE','base01_r2','最终包差异/六项分支用例通过','实车重建/内存'),
('BUILD-01','本轮 BASE-01 r1','P1','复制脚本误排嵌套 build 元数据','stability_base01_patch_20260905.py','FIXED_LOCAL','base01_r2','6702 文件保留，r1 保留失败记录','无'),
('BASE-02','原版及所有后续','P1','销毁未接入壁纸 Adapter 线程池关闭','MainActivity.onDestroy; o/ak.onDetachedFromRecyclerView','LOCAL_PASS_PENDING_VEHICLE','base02_r1','解除 Adapter/取消其 Handler；用例和最终包差异通过','实际线程/媒体资源；晚到任务另列 BASE-04'),
('BASE-03','原版及所有后续','P1','视频封面异常时 native Retriever 未释放','o/sj.run selector=0','BUILD_VALIDATION_IN_PROGRESS','base03_r1','VideoThumbnail 自有 helper 已做7项异常分支测试','真实文件解码/native资源'),
('BASE-04','原版及所有后续','P1','销毁后后台解码仍可投递旧 View/全局封面','o/sj.run selector=0; o/j9.run selector=1; o/y7.run','STATIC_CONFIRMED','','待给结果增加 Adapter/页面归属和销毁检查','前后台重建/快切壁纸'),
('V2-01','V2；V3残留','P0','原状态栏禁用/失效反射与重挂','NavBarService.Ϡ/attachStatusBarToMainActivity; MainActivity.onResume','NOT_IMPORTED_IN_BASE_BRANCH','','基线分支保留原架构；并非V2功能已修复','状态栏更新/合成/触摸'),
('V2-02','V2至V3.11','P0','原车辆信息布局契约破坏','vehicle_control_panel; o/oj inflate使用方','NOT_IMPORTED_IN_BASE_BRANCH','','恢复分支保留原布局；新增空调待独立布局','打开旧页面不点击车控'),
('V2-03','V2至V3.11','P1','设置窗口只隐藏未移除','WallpaperRotationOptionListener.onClick(View); o/vl','STATIC_CONFIRMED','','待接窗口所有者关闭','设置循环20次'),
('V2-04','V2至V3.11','P1','模式键前置强拦截绕过配置','NavBarService.onKeyEvent','STATIC_CONFIRMED','','待保留用户开关和映射顺序','四种模式键配置'),
('V2-05','V2至V3.11','P1','面板多入口叠窗/静态Dialog残留','AirControlPanel; ModeKeyReceiver; NavBarService','STATIC_CONFIRMED','','待服务实例所有权/来源约束/去重','仅开关面板，不操作车控'),
('V2-06','V2至V3.11','P1','轮播任务未随Activity停止','WallpaperAutoRotateRunnable; MainActivity','STATIC_CONFIRMED','','待统一可取消调度与可见性','轮播/后台/重建'),
('V2-07','V2至V3.11','P2','目录策略不一致及残留设置实现','WallpaperDirectoryResolver; MainActivity; o/y7/o/uk','STATIC_CONFIRMED','','待统一有效壁纸目录策略','实际存储权限/视频壁纸'),
('V2-08','V2至V3.11','P2','媒体卡空封面不复位','o/ia.ˏ(Bitmap,String,String)','STATIC_CONFIRMED','','待空值/会话切换复位','真实媒体会话'),
('V3-01','V3.6至V3.11','P0','歌词TICK生命周期不完整','NeteaseLyricsBridge; o/y8; NavBarService','STATIC_CONFIRMED','','待唯一start/stop/reset及旧结果失效','播放退出/熄屏'),
('V3-02','V3.6至V3.11','P0','歌词网络线程及响应大小不受控','NeteaseLyricsBridge.FetchTask/readAll','STATIC_CONFIRMED','','待单工作线程、有界队列、关闭流和连接','网络切换/超时'),
('V3-03','V3.3至V3.11','P0','状态栏双所有者与多个延迟重挂','NavBarService; MainActivity; activity_main','STATIC_CONFIRMED','','基线分支不带入；待功能兼容确认','窗口/合成/OEM事件'),
('V3-04','V3.8至V3.11','P1','UI同步shell及policy_control残留','o/zk; o/vl','STATIC_CONFIRMED','','待独立分支，主线不写全局策略','原值/开关/恢复'),
('V3-05','V3.6至V3.11','P1','800ms限流漏查及同key旧结果回写','NeteaseLyricsBridge.onTrackChanged/FetchTask.run','STATIC_CONFIRMED','','待最新曲目有界调度和generation标记','快速切歌/A-B-A'),
('V3-06','V3.6至V3.11','P1','空播放状态/销毁后回调可重新激活桥接','o/y8.onPlaybackStateChanged; NeteaseLyricsBridge','STATIC_CONFIRMED','','待在桥接前检查管理器与会话身份','播放器退出/服务重建'),
('API-01','原版','REVIEW','127项初筛告警并非127缺陷','signature_findings.csv','REVIEW_REQUIRED','','继承构造器/高版本API调用方待逐项分类','厂商隐藏API/ART'),
('RISK-01','原版','REVIEW','既有8888/底层控制安全风险','PROJECT_MAP 第9节','READONLY_REVIEW_BOUNDARY','','不发送车辆指令；不夹带修改控制能力','不执行车辆写控制测试'),
]
p=OUT/'issues.csv'
if p.exists():raise RuntimeError('Issue ledger already exists; update individual statuses instead')
with p.open('w',encoding='utf-8-sig',newline='') as f:
    w=csv.writer(f);w.writerow(['id','versions','priority','impact','evidence','status','checkpoint','local_action_or_result','vehicle_dependency']);w.writerows(rows)
print('Created issue ledger:',len(rows),'items; no full-plan completion claim')
