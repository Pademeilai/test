<%--
  Created by IntelliJ IDEA.
  User: 吴光清
  Date: 2022/2/26
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创作者专区</title>
    <link rel="stylesheet" href="../css/layui/css/layui.css">
    <script src="../css/layui/layui.js"></script>
</head>
<body style="background: #92B8B1;">
<!--<%--header--%>-->
<div class="layui-fluid" style="background: #393D49">
    <div class="layui-container">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <i class="layui-icon layui-icon-share" style="font-size: 22px;">作者专区</i>
            </li>
        </ul>
    </div>
</div>
<!--<%--main--%>-->
<div class="layui-fluid" style="background:url(http://static.zongheng.com/author/v2015/images/loginbg.jpg);height: 550px" id="d0">
    <div class="layui-container" style="padding-top: 60px" id="d1">
        <div class="layui-anim layui-anim-fadein">
            <div class="layui-card" style="float: right">
                <div class="layui-card-header" style="background-color:rgba(223,38,38,0.2);">HI，书友${username}，您已登录，成为作者只差一步！</div>
                <div class="layui-card-body">
                    <div class="layui-fluid" style="font-size:20px;line-height:35px;color:green;">
                        申请作者！
                    </div>
                    <div class="layui-card" style="font-size:14px;line-height:35px;color:#333;">
                        您已是论坛的一员，马上申请作者，进行创作，开启您的作家之路。
                    </div>
                    <div class="llayui-container" style="font-size:18px;line-height:35px;color:#333;">
                        <button type="button" class="layui-btn" style="margin-left: 20%;padding-left: 20%;padding-right: 20%;" id="d">立即申请</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-container" id="d2" style="background: white;">
        <div class="layui-tab layui-tab-brief" lay-filter="test1">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="1">注册通行证</li>
                <li lay-id="2">接受协议</li>
                <li lay-id="3">填写资料</li>
                <li lay-id="4">注册成功</li>
            </ul>
            <div class="layui-tab-content">
                <!--第一张卡片-->
                <div class="layui-tab-item layui-show">
                    <div class="layui-container" style="padding-top: 60px">
                        <div class="layui-anim layui-anim-fadein">
                            <div class="layui-card-body">
                                <div class="layui-fluid" style="font-size:20px;line-height:35px;color:green;">
                                    注册通行证！
                                </div>
                                <div class="layui-card" style="font-size:14px;line-height:35px;color:#333;">
                                    您已是论坛的一员，马上申请作者，进行创作，开启您的作家之路。
                                </div>
                                <div class="llayui-container" style="font-size:18px;line-height:35px;color:#333;">
                                    <button type="button" class="layui-btn" style="margin-left: 20%;padding-left: 20%;padding-right: 20%;" onclick="Ton1()">下一步</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第二张卡片-->
                <div class="layui-tab-item" style="font-size: 16px;">
                    <div class="layui-tab-content" style="text-align: center;">新创作平台作者注册投稿协议</div>
                    <h3>新创作平台作者注册投稿协议</h3>
                    <p>新创作平台（www.luntan.com）是河池学院@2021大创项目的中文原创阅读网站平台。当用户注册新创作平台（以下称“本站”）的作者时，请您仔细阅读并同意以下条款：<br><br> 一、作者注册
                        <br> 1 、请严格按照本站公布和提示的规则、流程进行作者注册操作。注册成为本站作者后，您有义务妥善保存您的作者账号和密码，并对您的账号进行的所有活动和行为负法律责任。如因您自身过错（包括但不限于转让账号、与他人共用、自己泄露等）或您所用计算机感染病毒或木马，导致账号密码泄漏、遗失或其他损失后果应由您自行承担，本站不承担任何法律责任。<br> 2 、注册成为本站作者后，即表示您同意授权本站在所属网站平台发表、上传、下载、排版、宣传您的作品，以及本站合作伙伴在本站所获授权范围内使用您作品的公众阅读章节。<br> 3 、作者的笔名、个人介绍等作者信息，不得含有违反国家法律、社会公德及本站规定的文字，否则本站有权随时无条件删除作者账号及其账号下发表的任何内容，不另行通知。<br> 4 、为有效利用网站资源，如作者注册后30天内未上传发表任何作品文字，或清空、锁定所有作品章节达7天，或声明离开本站的，本站有权选择无条件删除此作者账号及其账号下发表的任何内容，不另行通知。</p>
                    <p>二、作者投稿<br> 本站作者在发表、上传作品时，应遵守以下规定：
                        <br> 1 、作品禁止包含下列内容<br> a 、反对宪法所确定的基本原则的；<br> b 、危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br> c 、损害国家荣誉和利益的；<br> d 、煽动民族仇恨、民族歧视，破坏民族团结的；<br> e 、破坏国家宗教政策，宣扬邪教和封建迷信的；<br> f 、散布谣言，扰乱社会秩序，破坏社会稳定的；<br> g 、散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br> h 、侮辱或者诽谤他人，侵害他人合法权益的；<br> i 、含有法律、行政法规禁止的其他内容的。<br> 如作者违反上述规定的，本站有权立即无条件删除作者账号及其账号下发表的任何内容，不另行通知。
                        <br> 2 、作品内容要求：<br> a 、作品内容健康，表达青春内涵，彰显时尚风格，注重文学品位；<br> b 、作品确系署名作者本人所创作，谢绝转载，严禁剽窃、抄袭，文责自负；<br> 3 、凡在本站发表或上传的作品，需根据作者需求及本站规定选择作品授权级别/状态。根据作品授权的不同级别/状态，本站对作品拥有一般授权传播、独家发表、优先发表、作品转载等不同的版权权利，请作者在选择时仔细阅读并遵守相关规则、说明。<br> 4 、凡在本站注册作者并发表或上传作品的，应按照本站公布的相关规则进行申请、操作和使用，并愿受其约束。<br> 5 、作者在本站发表、上传的作品自动视为对本站及合作伙伴的宣传和转载授权。作者保证上述发表、上传内容合法合规、不侵犯他人合法权益，否则引起权利方发起索赔、纠纷与诉讼，应由作者承担相应法律责任，并赔偿本站及合作伙伴因此遭受的损失。<br>
                    </p>
                    <p>三、关于转载、剽窃、抄袭的特别说明<br> 1 、本站为原创作品阅读网站，发表上传的作品须为作者原创，谢绝转载。一经发现作者发表上传作品为转载他人作品，本站有权立即删除该作者账号及其发表的任何内容。作者转载行为的法律责任由其本人承担。<br> 2 、除特别规定外，本站作品在未经作者或本站同意的情况下，一律不得转载。<br> 3 、作者需保证在本站发表、上传的作品为其本人原创，严禁剽窃、抄袭（剽窃、抄袭是指未经作品原作者同意，把他人的作品原封不动或改头换面之后据为己有的行为）。作为网络服务提供者，本站对剽窃、抄袭行为的发生不具备充分的监控能力。但是一经发现，负有移除剽窃、抄袭作品停止继续传播的义务。本站对他人在本站上实施的此类侵权行为不承担法律责任，侵权的法律责任概由剽窃、抄袭者本人承担。<br> 4 、本站根据法律规定或司法部门要求其提供侵权人网络注册资料的情况下，负有提供该注册资料的协助义务。<br> 5 、如本站上发表上传的作品被认为有剽窃、抄袭等侵权之嫌的，在作品著作权人提供以下必要的资料后，本站会根据其要求采取包括移除、警告等协助措施：一是著作权人的身份证明，包括身份证、法人执照、营业执照等有效身份证件；二是著作权权属证明，包括有关著作权登记证书、发表书籍或期刊、创作手稿等；三是侵权情况证明，包括被控侵权信息的内容、所在位置等。如未提供上述资料或不满足要求的，本站将暂不采取相应措施。<br> 6 、向本站发表上传作品的作者视为同意新创作平台就前款情况采取的相应措施。除前款采取协助措施义务外，本站不对作品的侵权纠纷以及移除作品等相应措施承担侵权、违约或其他任何法律责任，包括但不限于因侵权指控不成立而给作者带来损失的赔偿责任等。</p>
                    <p>四、免责声明<br> 1 、凡有新创作平台用户未经作者许可，在新创作平台社区论坛内或用户BLOG系统转载作品，新创作平台对用户转载行为不负任何责任，但承诺接到作者投诉后，第一时间内删除该贴并对该用户进行相应处理。<br> 2 、属于评论、资料和学习性质的“书评杂论” 、“文学资料”等版面内容，新创作平台可进行转载或作品宣传，但不作为任何商业用途，如作者对此有异议，可以通知新创作平台将其删除。<br> 3 、如有人恶意冒充网络作者向新创作平台投稿，并被新创作平台接受录入非其所有的原创作品，本站不承担任何责任，但保证接到真实作者投诉时，经验证后第一时间内删除该作品及冒充者账号。<br> 4 、新创作平台不保证收录作品稿件的安全性，请作者自行留存原稿。<br> 5 、新创作平台有权将上述作品推荐给合作伙伴宣传或转载，不另行告知。<br> 6 、作者文责自负，任何作者及其发布内容的文字，不代表本站观点。<br>
                    </p>
                    <div class="llayui-container" style="font-size:18px;line-height:35px;color:#333;margin-top: 40px;height: 100px;">
                        <button type="button" class="layui-btn" style="margin-left: 20%;padding-left: 5%;padding-right: 5%;" onclick="Ton2()">我接受</button>
                        <button type="button" class="layui-btn" style="margin-left: 20%;padding-left: 5%;padding-right: 5%;">拒绝</button>
                    </div>
                </div>
                <!--第三张卡片-->
                <div class="layui-tab-item" style="font-size: 16px;">
                    <div class="layui-tab">
                        <ul class="layui-tab-title">
                            <li class="layui-this">手机注册</li>
                            <li>邮箱注册</li>
                        </ul>
                        <div class="layui-tab-content">
                            <div class="layui-tab-item layui-show">
                                <form class="layui-form" action="">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label">*笔名</label>
                                        <div class="layui-input-block">
                                            <input type="text" name="name" required lay-verify="username|required" placeholder="请输入笔名" autocomplete="off" class="layui-input"  style="width: 40%;">
                                            <div class="layui-form-mid layui-word-aux">1-12个字符，汉字、数字、字母开头，可包含下划线</div>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-form-item">
                                            <label class="layui-form-label">*QQ</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="qq" required lay-verify="required" placeholder="请输入QQ" autocomplete="off" class="layui-input"  style="width: 40%;">
                                                <div class="layui-form-mid layui-word-aux">5~12位数字</div>
                                            </div>
                                        </div>
                                        <div class="layui-form-item">
                                            <label class="layui-form-label">*手机</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="phone_mail" required lay-verify="phone" placeholder="请输入手机号" autocomplete="off" class="layui-input"  style="width: 40%;">
                                                <div class="layui-form-mid layui-word-aux">11位数字</div>
                                            </div>
                                        </div>
                                        <label class="layui-form-label">*验证码</label>
                                        <div class="layui-input-block">
                                            <input type="text" name="qq" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input" style="width: 40%;">
                                            <div class="layui-form-mid layui-word-aux">超过60秒，请重新输入验证码</div>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="layui-tab-item">
                                <form class="layui-form" action="">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label">*笔名</label>
                                        <div class="layui-input-block">
                                            <input type="text" name="name" required lay-verify="username|required" placeholder="请输入笔名" autocomplete="off" class="layui-input"  style="width: 40%;">
                                            <div class="layui-form-mid layui-word-aux">1-12个字符，汉字、数字、字母开头，可包含下划线</div>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-form-item">
                                            <label class="layui-form-label">*QQ</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="qq" required lay-verify="required" placeholder="请输入QQ" autocomplete="off" class="layui-input"  style="width: 40%;">
                                                <div class="layui-form-mid layui-word-aux">5~12位数字</div>
                                            </div>
                                        </div>
                                        <div class="layui-form-item">
                                            <label class="layui-form-label">*邮箱</label>
                                            <div class="layui-input-block">
                                                <input type="text" name="phone_mail" required lay-verify="email" placeholder="请输入邮箱地址" autocomplete="off" class="layui-input"  style="width: 40%;">
                                                <div class="layui-form-mid layui-word-aux">11位数字</div>
                                            </div>
                                        </div>
                                        <label class="layui-form-label">*验证码</label>
                                        <div class="layui-input-block">
                                            <input type="text" name="qq" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input" style="width: 40%;">
                                            <div class="layui-form-mid layui-word-aux">超过60秒，请重新输入验证码</div>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-input-block">
                                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!--第四张卡片-->
                <div class="layui-tab-item" style="font-size: 16px;">
                </div>
            </div>
        </div>
    </div>
</div>
<!--footer-->
<footer>
    <div class="layui-fluid" style="margin-top: 60px;">
        <div class="layui-container" style="text-align: center;">
            河池学院@2021大创项目
        </div>
    </div>
</footer>
<script>
    //先隐藏用户需要填写的注册成为作者的表单
    window.onload=function () {
        var d=document.getElementById("d2");
        d.style.display="none";
        function chickMe() {
            var d2 = document.getElementById("d2");
            d2.style.display = "block";
            var d1 = document.getElementById("d1");
            d1.style.display = "none";
            var d=document.getElementById("d0");
            d.style.background="none";
        }
        document.getElementById("d").addEventListener('click',chickMe)
    };
    // 提交用户填写的信息
    layui.use('form', function() {
        var form = layui.form;
        $=layui.jquery;
        form.on('submit(formDemo)', function(data) {
                $.ajax({
                    url: '${pageContext.request.contextPath}/author/insert',
                    method: 'post',
                    data: data.field,
                    dataType: 'JSON',
                    success: function (res) {
                        if (res = "1") {
                            location.href="${pageContext.request.contextPath}/admin/webmaster";
                            // parent.closeIframe(res.msg);
                        } else
                            layer.msg("注册成功");
                    },
                    error: function (data) {
                        layer.msg("笔名不可用！");
                    }
                });

            return false;//防止页面跳转
        });
        //各种基于事件的操作，下面会有进一步介绍
        form.verify({
            username: function(value, item){ //value：表单的值、item：表单的DOM对象
                if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                    return '笔名不能有特殊字符';
                }
                if(/(^\_)|(\__)|(\_+$)/.test(value)){
                    return '笔名首尾不能出现下划线\'_\'';
                }
                if(/^\d+\d+\d$/.test(value)){
                    return '笔名不能全为数字';
                }

                //如果不想自动弹出默认提示框，可以直接返回 true，这时你可以通过其他任意方式提示（v2.5.7 新增）
                if(value === 'xxx'){
                    return '用户名不能为敏感词';
                }
                if(value.length>12){
                    return '用户名过长';
                }
            }

            //我们既支持上述函数式的方式，也支持下述数组的形式
            //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
        });
    });
    // Ton1 Ton2表单页面切换（用户可以选择手机注册或者邮箱注册两种）
    function Ton1() {
        layui.use('element', function() {
            var element = layui.element;
            element.tabChange('test1', '2'); //假设当前地址为：http://a.com#test1=222，那么选项卡会自动切换到“发送消息”这一项
        });
    };
    function Ton2() {
        layui.use('element', function() {
            var element = layui.element;
            element.tabChange('test1', '3'); //假设当前地址为：http://a.com#test1=222，那么选项卡会自动切换到“发送消息”这一项
        });
    };
</script>
</body>
</html>
