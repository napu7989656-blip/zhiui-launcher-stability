# P1 状态等待与背景任务审计（2026-09-09）

审计参照R11工作树；R12独立树base10_wait_interrupt_r12是修复草稿，源码11项新增及183项继承测试通过，成品门禁尚在进行。R11分项已收尾；总计划未完成。

## 状态等待

三处实际CountDownLatch.await均为2秒：ff静态ͼ(String,String)读Core整型、ie selector28仪表刷新、je selector1仪表初始化。原代码忽略await返回值并读取数组；在超时边界可能读到晚到的值，且没有成功await的同步保证。InterruptedException被Exception捕获后仅记日志，未恢复标志。

R12仅在await成功时读取数组；超时保持-1失败结果，仪表沿原无效值路径（刷新保留原重试策略，初始化保留原退出行为）；中断走独立catch恢复Thread中断并直接退出。ff在调用IPC前检查既有中断，避免后续轮询继续发起读取。磁贴批量发布入口检测中断，不提交因查询失败而返回的缓存或默认值。未修改原IPC命令、参数、超时时长、native或车辆控制。

调用方：ff静态查询被ie SOC轮询、sj SOC初始化、ke各状态getter调用。SOC原值域判断拒绝-1，不创建显示回调。ke有原getter与纯读取getter，失败返回旧缓存；累计磁贴由TileSnapshots.post提交，因此中断时必须同时拦该发布入口，不能只让ff返回-1。

回调：te（仪表）和ve（通用整型）仅保存本次查询数组、CountDownLatch和必要键/selector；success先写数组再countDown，error只countDown，没有面板/UI引用或直接写控制器缓存。退出后的晚回调只改变不可再提交的局部结果，不重新唤起界面。异常JSON/native/IPC具体行为仍属厂商运行边界，未执行任何真实调用。

验证限制：新增解释器测试执行实际await返回分支和typed catch处理，await结果由替身注入；catch表另核对绑定实际await区间。它不执行ART，也不能证明厂商调用耗时。新增代码不主动中断正在运行的厂商/native调用。

## 玻璃背景与剩余线程（尚未修复）

真实背景入口为ff.ˋ(View)附近创建QSGlassBg线程，任务x9(ff,boolean,View)使用selector1。先读取ak静态Bitmap；不可用时投递lII selector16准备背景，等待300ms再读并用pe回调设置背景。x9 InterruptedException标签直接落入后续读取，吞掉中断；任务未按控制器限量，pe持有旧View且缺少新旧面板归属。需要独立R13处理后台有界、请求/根身份、准备任务归属和结果释放，不能仅改sleep。

尚需继续检查lII selector16的具体调用链是否引入更多线程/等待，pe两个selector所有调用方，以及玻璃图像资源释放。ie默认分支的300ms是蓝牙回退，ee selector0为Wi-Fi，不能当作同一个背景任务。ff.Ή(int,String)通过h2 selector5创建的线程属于原操作链，要单独分类，不能混入可丢弃读取池。

P1其他线程全覆盖、P2 L01～L12+完整V2/V3回引、P3 API/方法/配置/组合总门禁仍未完成。当前没有进入实车阶段。

## 2026-09-10续查

R12已完成成品门禁和人工记录，见base10_r12_本地修复记录.md；上文草稿状态为历史。

已继续追到背景准备的真实链：x9→lII selector16→MainActivity.ͷ()→y7 selector10→MainActivity.Ί()→新BarBlur线程h2 selector1（run中pswitch7）。MainActivity.ͷ先清Κ缓存并排y7；Ί增加Θ代次并新建线程。h2处理缩放/模糊及三块裁切图，直接回写MainActivity.Κ及ak.ͺ，然后把a8投递给Activity Handler。它另有无图时的延迟重试，需要核对重试唯一性与销毁；仅给x9换线程池不足以解决准备链的无界线程和旧位图回写。

ff.ˋ(View)三处调用（ff面板创建、ie主题改变、NavBarService主题更新）都传入ff.ʹ背景View；R13应捕获该具体View、当前控制器和请求标识，在普通关闭/重建/销毁/主题改变时失效。pe只有x9两处构造调用，两个selector都直接setBackground；可保留原显示操作并增加所属请求检查。

注意区分：h2后部900/350ms sleep属于应用启动动作分支，不是BarBlur，不应改为可丢弃状态读取。BarBlur自身本次检查未见300ms sleep；该等待在x9。接续应先明确x9与MainActivity准备链的分项修复边界，再实施有界队列、待UI结果及位图所有权。当前尚未创建R13树/包。

## 2026-09-10 最新续查：R15完成，R16成品检查中

上文R13“尚未创建”等文字为历史状态。R13已完成快捷面板玻璃任务限流；R14保护共享原图不被误回收；R15完成主桌面模糊生成单线程/单等待队列、有效主线程缓存提交、三个子回调槽位和五次重试归属。各有独立APK、源码/成品测试及人工审计记录，均未实车。R15已有260项源码/成品场景与12073项生产JVM断言，完整计划仍未完成。

R16已建立独立树base10_blur_cleanup_r16并构建，补裁剪/stack-blur内部异常分配清理；源码24异常场景加继承260项通过，成品门禁与人工记录尚在进行，不能提前标通过。

新增base10_remaining_threads_r16.json列出业务o/com.byd包185处直接线程/等待引用、76方法，当前状态均为待人工分类。该数量包括同线程构造/start两处引用和已有修复/模块，不能作为185个缺陷数。间接任务、线程池、回调及库线程仍需单独覆盖。接续按可替换读取、用户动作、初始化/ADB连接、图片/媒体和系统生命周期分类，再核对具体selector、生产者和释放路径，不把用户动作放入丢弃式读取池。

R15全部12处h2构造器已单独核对：MainActivity selector1为模糊生成；ag两处及oc为9、e8为4、ff为5、g8为6、h2自排为3、jj为7、nd为8、y7为2、DeviceProfileWriter为0。后续审查不能把h2中900/350ms的应用启动等待当作BarBlur。