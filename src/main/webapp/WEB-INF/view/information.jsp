<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>个人中心</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../css/information.css">
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/layui/css/layui.css">
    <script src="../css/layui/layui.js"></script>
</head>
<body>
<div class="wrap">
    <div class="head head-nologin">
        <div class="logo">
            <a href="./index"><img src="http://rcode.zongheng.com/v2018/images/logo.png" alt="logo"></a>
        </div>
        <div class="spcoline"></div>
        <div class="home_tit">个人中心</div>
        <div class="homenav">
            <ul>
                <li class=""><a href="${pageContext.request.contextPath}/author/author?r=1">我的书架</a></li>
                <li class="active"><a href="http://home.zongheng.com/account">账户设置</a></li>
                <li class=""><a href="">我的消息</a>
                    <em class=></em>
                </li>
                <li class=""><a href="">我的动态</a></li>
            </ul>
        </div>
        <div class="home_rbox">
            <ul>
                <li class="home_lnk"><a href="./index"><span>返回首页</span></a></li>
            </ul>
        </div>
    </div>
</div>
<div id="ac" class="wrap">
    <!-- 账户内容头部 -->
    <header class="top">
        <div class="left"><img src="http://static.zongheng.com/userimage/default/image_120_120.gif" alt="">
            <p><a href=""></a></p></div>
        <section class="right">
            <p class="name">书友:${username}
                <i class="star"></i>
                <b class="vip vip0"></b>
                <span><i></i><a href="javascript:abc(1)">账户信息修改</a></span>
            </p>
            <p id="introduce" class="introduce"><i>简介&nbsp;&nbsp;</i>暂无简介~
            </p>
            <p id="num" class="num">
                <span>账户余额&nbsp;&nbsp;<i>0</i><i>&nbsp;RMP&nbsp;</i></span>
            </p>
            <p class="btn-iphone">
                <a href=""><i>立即充值</i></a>
                <a href="javascript:abc(2)"><i>申请管理员</i></a>
            </p>
        </section>
    </header>
    <div id="layerDemo">

    </div>
    <div id="content">
        <!-- 列表和分类 -->
        <nav class="account-nav">
            <i><a href="#record">充值记录</a></i>
            <i><a href="#subscribe">订阅消费</a></i>
            <i><a href="#automatic">自动订阅</a></i>
        </nav>
        <section class="nav-content">

        </section>
    </div>
</div>
<div class="h40-blank"></div>
<%--fooder--%>
<div class="layui-fluid" style="margin-top: 60px;">
    <%--    渲染模板的div放在这里--%>
    <div id="orderInfoabc" class="layui-container">
    </div>
    <div class="layui-container" style="text-align: center;">
        河池学院@2021大创项目
    </div>
</div>
<%--修改个人信息模板--%>
<script type="text/html" id="information">
    <div class="layui-tab">
        <ul class="layui-tab-title">
            <li class="layui-this">基本信息</li>
            <li>修改密码</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-block">
                            <input type="textarea" name="qq" required lay-verify="required"
                                   value="${username}" autocomplete="off" class="layui-input"
                                   style="width: 40%;border-style: none" readonly>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户昵称</label>
                            <div class="layui-input-block">
                                <input type="text" name="username" required lay-verify="required"
                                       placeholder="{{d.username}}" value="{{d.username}}" autocomplete="off" class="layui-input"
                                       style="width: 40%;">
                                <div class="layui-form-mid layui-word-aux">30天内只能修改一次</div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                                <input type="sex" name="sex" required lay-verify="required"
                                       value="{{d.sex}}"  autocomplete="off" class="layui-input"
                                       style="width: 40%;">
                            </div>
                        </div>
                        <label class="layui-form-label">个性签名</label>
                        <div class="layui-input-block">
                            <textarea id="desc" name="introduce" class="layui-textarea"
                                      style="width: 40%;height: 150px;"></textarea>
                            <div class="layui-form-mid layui-word-aux">你还可以输入100字</div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="layui-tab-item">
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">用户昵称</label>
                        <div class="layui-input-block">
                            <input type="textarea" name="qq" required lay-verify="required"
                                   value="书友wgq" autocomplete="off" class="layui-input"
                                   style="width: 40%;border-style: none" readonly>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-form-item">
                            <label class="layui-form-label">原密码</label>
                            <div class="layui-input-block">
                                <input type="text" name="oldpass" required lay-verify="required"
                                       placeholder="请输入原密码" autocomplete="off" class="layui-input"
                                       style="width: 40%;">
                                <div class="layui-form-mid layui-word-aux">5~12位数字</div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">新密码</label>
                            <div class="layui-input-block">
                                <input type="text" name="pass" required lay-verify="pass|required"
                                       placeholder="请输入新密码" autocomplete="off" class="layui-input"
                                       style="width: 40%;">
                                <div class="layui-form-mid layui-word-aux">6~16位英文字母(区分大小写)或数字，数字字母需同时出现</div>
                            </div>
                        </div>
                        <label class="layui-form-label">确认密码</label>
                        <div class="layui-input-block">
                            <input type="text" name="pass1" required lay-verify="pass|required" placeholder="请输入新 密码"
                                   autocomplete="off" class="layui-input" style="width: 40%;">
                            <div class="layui-form-mid layui-word-aux">6~16位英文字母(区分大小写)或数字，数字字母需同时出现</div>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</script>
<%--修改个人信息--%>
<script>
    // 提交修改信息
    layui.use('form', function () {
        var form = layui.form;
        $ = layui.jquery;
        //提交修改个人信息
        form.on('submit(formDemo)', function (data) {
            if (data.field.oldpass != null && data.field.oldpass != '') {
                if (data.field.pass == data.field.pass1) {
                    // 修改密码
                    $.ajax({
                        url: '${pageContext.request.contextPath}/user/updateByPrimaryKey',
                        method: 'post',
                        data: data.field,
                        dataType: 'JSON',
                        success: function (data) {
                            if (data.total == 0) {
                                alert("密码修改成功")
                                window.location.href = '';
                            } else {
                                layer.msg(data.rows)
                            }
                        },
                        error: function (data) {
                            layer.msg(data.msg);
                        }
                    });
                } else {
                    layer.msg("两次输入的密码不一样");
                }
            } else {
                //修改个人信息
                $.ajax({
                    url: '${pageContext.request.contextPath}/information/update',
                    method: 'post',
                    data: data.field,
                    dataType: 'JSON',
                    success: function (data) {
                        if (data.total == 0) {
                            layer.msg("修改成功")
                            window.location.href = '';
                        }
                    },
                    error: function (data) {
                        layer.msg(data.msg);
                    }
                });
            }
            return false;
        });
    });

    function abc(i) {
        if (i==1){
            var d = document.getElementById("content");
            d.style.display = "none";
            layui.use('layer', function () { //独立版的layer无需执行这一句
                $.ajax({
                    url: '${pageContext.request.contextPath}/information/select',
                    success: function (data) {
                        if (data.total == 0) {
                            var laytpl = layui.laytpl;
                            var orderInfoTpl1 = information.innerHTML
                                , orderInfoDiv1 = document.getElementById("layerDemo");
                            laytpl(orderInfoTpl1).render(data.rows, function (html) {
                                orderInfoDiv1.innerHTML = html;
                            })
                        }
                    }
                })
            });
        }else if (i==2){
            //申请成为管理员
            $.ajax({
                url: '${pageContext.request.contextPath}/user/updateByPrimaryKey?r=3',
                success: function (data) {
                    if (data.total == 0) {
                        alert("申请成功，等待后台工作人员审核");
                    }
                }
            })
        }
    }
</script>
<%--初始化参数、--%>
<script>
    var $ = layui.jquery;
    //追加简介
    $.ajax({
        url: '${pageContext.request.contextPath}/information/select',
        success: function (data) {
            if (data.total == 0) {
                document.getElementById("introduce").innerHTML = '<i>简介&nbsp;&nbsp;</i>' + data.rows.introduce+'';
            }
        }
    })
    $.ajax({
        url: '${pageContext.request.contextPath}/money/selectByPrimaryKey',
        success: function (data) {
            if (data.total == 0) {
                document.getElementById("num").innerHTML = '<span>账户余额&nbsp;&nbsp;<i>' + data.rows + '</i><i>&nbsp;RMP&nbsp;</i></span>';
            }
        }
    })
</script>
</body>
</html>