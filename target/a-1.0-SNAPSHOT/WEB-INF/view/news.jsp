<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>论坛+新创作</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../css/layui/css/layui.css">
    <script src="../css/layui/layui.js"></script>
    <script src="../js/login.js"></script>
    <script src="../js/news.js"></script>
</head>
<body>
<%--这里是小说内容区--%>
<%--头部--%>
<div class="layui-fluid" style="background: #393D49">
    <div class="layui-container">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <a href="javascript:exit()"><i class="layui-icon layui-icon-share">论坛+新创作官网</i></a>
            </li>
            <li class="layui-nav-item">
                <a href="">首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/author/author?r=1">书库</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/news">新闻</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/author/author">创作者专区</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/book">小说中心</a>
            </li>
            <li class="layui-nav-item" style="float: right">
                <input id="loginluder" type="hidden" value="${pageContext.request.contextPath}">
                <div class="layui-btn-container" id="layerDemo">
                    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">登陆</button>
                </div>
            </li>
        </ul>
    </div>
</div>
<div id="content">
    <%--主要显示区--%>
    <div class="layui-fluid">
        <div class="layui-container">
            <div class="layui-row">
                <div class="layui-col-md1" style="width: 10%">
                    <div class="layui-panel" style="background: #01AAED">
                        <ul class="layui-menu" id="docDemoMenu1" style="background: #01AAED;">
                            <li lay-options="{id: 100}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-subtraction"></i> 遍历时事<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            <li lay-options="{id: 101}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-addition"></i>新闻主版<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            <li lay-options="{id: 102}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-addition"></i>论坛网事<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            <li lay-options="{id: 103}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-addition"></i>论坛别院<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            <li lay-options="{id: 104}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-addition"></i>区域论坛<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            <li lay-options="{id: 105}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-subtraction"></i>旅游论坛<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            </li>
                            <li lay-options="{id: 106}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-addition"></i>职业交流<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            </li></li>
                            <li lay-options="{id: 107}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-addition"></i>大学校园<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                            </li> </li></li>
                            <li lay-options="{id: 108}">
                                <div class="layui-menu-body-title">
                                    <a href="#"><i class="layui-icon layui-icon-subtraction"></i>论坛问答<span
                                            class="layui-badge-dot"></span></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="layui-col-md11" style="background: white; margin-left: 10px;width: 88%;">
                    <ul class="layui-nav" lay-filter="" style="background: #01AAED">
                        <li class="layui-nav-item layui-this"><a href="">默认</a></li>
                        <li class="layui-nav-item"><a href="javascript:void(0)" onmousedown="abc(1)">最新</a></li>
                        <li class="layui-nav-item"><a href="javascript:void(0)" onmousedown="abc(2)">排行</a></li>
                        <li class="layui-nav-item"><a href="javascript:void(0)" onmousedown="abc(3)">精品</a></li>
                        <li class="layui-nav-item"><a href="javascript:void(0)" onmousedown="abc(8)">问答</a></li>
                        <li class="layui-nav-item"><a href=""></a></li>
                        <li class="layui-nav-item"><input id="select" type="text" style="height: 35px"
                                                          placeholder="版内搜索"></li>
                        <li class="layui-nav-item" style="margin-left: 10px"><a href="javascript:void(0) "
                                                                                onmousedown="abc(5)"
                                                                                class="layui-btn layui-btn-primary layui-border-green"><i
                                class="layui-icon layui-icon-search"></i></a></li>
                        <li class="layui-nav-item" style="margin-left: 10px"><a href=""
                                                                                class="layui-btn layui-btn-primary layui-border-green">刷新</a>
                        </li>
                        <li class="layui-nav-item" style="margin-left: 10px"><a href="javascript:void(0) "
                                                                                onmousedown="abc(6)"
                                                                                class="layui-btn layui-btn-primary layui-border-green">提问</a>
                        </li>
                        <li class="layui-nav-item" style="margin-left: 10px"><a href="javascript:void(0) "
                                                                                onmousedown="abc(14)"
                                                                                class="layui-btn layui-btn-primary layui-border-green">发帖</a>
                        </li>
                        <li class="layui-nav-item" style="margin-left: 10px"><a href="javascript:void(0) "
                                                                                onmousedown="abc(13)"
                                                                                class="layui-btn layui-btn-primary layui-border-green">我的帖</a>
                        </li>
                    </ul>
                    <div id="none">
                        <table id="demo" lay-filter="test"></table>
                    </div>
                    <%--用于提问渲染--%>
                    <div id="de"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--fooder--%>
<div class="layui-fluid" style="margin-top: 60px;">
    <div id="orderInfoabc" class="layui-container">
    </div>
    <div class="layui-container" style="text-align: center;">
        河池学院@2021大创项目
    </div>
</div>
<%--登陆之后的菜单模板--%>
<script type="text/html" id="login">
    <div class="layui-btn-container">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/information">个人中心<span class="layui-badge-dot"></span></a>
            </li>
            <li class="layui-nav-item">
                <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">${username}</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">修改信息</a></dd>
                    <dd><a href="javascript:;">安全管理</a></dd>
                    <dd><a href="javascript:window.close();">退了</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</script>
<%--阅读模板--%>
<script type="text/html" id="workreader">
    <div class="layui-form-item layui-form-text">
        <div class="layui-form-item" style="margin-top: -4%">
            <input id="newsid" type="hidden" value='{{d.newsid}}'>
            <input id="userid" type="hidden" value='{{d.userid}}'>
            <input id="username" type="hidden" value='${username}'>
            <input id="chapter" style="width: 100%;border: none;text-align: center;font-size: 18px;">
        </div>
        <div class="layui-form-item">
            <p style="width: 100%;border: none;text-align: center;"><i class="layui-icon layui-icon-face-smile"
                                                                       style="color: #1E9FFF;"></i> 楼主：{{d.author}}
                <span class="layui-badge">Lv5</span> 时间:{{d.date}} 点击量：{{d.count}} 获赞：{{d.like}}</p>
        </div>
        <div class="layui-form-item" style="background: #a4e9c1">
            <textarea id="desc" readonly="readonly" class="layui-textarea"
                      style="height: 400px;font-size: 18px;line-height: 50px;background: #a4e9c1"></textarea>
            <a href="javascript:void(0)" onmousedown="abc(11)" class="layui-btn layui-btn-primary layui-border-blue"
               style="float: right;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">举报</a>
            <a href="#mao" class="layui-btn layui-btn-primary layui-border-blue"
               style="float: right;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">回复</a>
            <a href="javascript:void(0)" onmousedown="abc(12)" class="layui-btn layui-btn-primary layui-border-blue"
               style="float: right;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">
                <i id="like" class="layui-icon layui-icon-praise" style="color: #1E9FFF;"></i> </a>
            <a href="javascript:void(0)" onmousedown="abc(9)" class="layui-btn layui-btn-primary layui-border-blue"
               style="float: right;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">打赏</a>
        </div>
        <div class="layui-form-item">
            <a href="" style="float: left;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">赏金最多 |</a>
            <a href="" style="float: left;margin-left: 5px;margin-top: 5px;margin-bottom: 5px"> 打赏最多</a>
        </div>
        <div class="layui-form-item">
            <div id="desc1" style="background: #aaaaaa"></div>
        </div>
        <div class="layui-form-item">
            <input id="text" type="textarea" placeholder="请输入内容" style="width: 100%;height: 80px">
            <a href="#top" class="layui-btn layui-btn-primary layui-border-blue"
               style="float: right;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">返回顶部</a>
            <a name="mao" href="javascript:void(0)" onmousedown="abc(4)"
               class="layui-btn layui-btn-primary layui-border-blue"
               style="float: right;margin-left: 5px;margin-top: 5px;margin-bottom: 5px">回复</a>
        </div>
    </div>
</script>
<%--回复模板--%>
<script type="text/html" id="view">
    <div>
        <a href="" style="color: blue;margin-left: 30px">{{d.username}}:</a>
        <p style="float: right">{{d.time}} </p>
    </div>
    <div>
        <p>{{d.content}}<a href="Javascript:void(0)" onmousedown="bcd({{d.viewnewsid}})"
                           style="float: right;margin-top: 5px;margin-bottom: 5px;color: blue">举报内容</a></p>
        <hr class="layui-border-green">
    </div>
</script>
<%--提问模板--%>
<script type="text/html" id="ask">
    <div class="layui-form-item" style="margin-top: 20px">
        <input type="hidden" id="type" value="{{d.i}}">
        <label class="layui-form-label">问题</label>
        <div class="layui-input-block">
            <input id="quetion" type="text" name="chapter" required lay-verify="required" placeholder="问题描述"
                   autocomplete="off" class="layui-input" style="width: 400px;">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">问题补充</label>
        <div class="layui-input-block">
            <textarea id="quetion1" name="content" placeholder="对问提进行补充说明" class="layui-textarea"
                      style="width:100%;height: 400px;"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <label style="color: #6a6a6a">请遵守社区公约言论规则，不得违反国家法律法规</label>
            <a href="javascript:void(0)" onmousedown="abc(7)" class="layui-btn" lay-submit lay-filter="formdemo"
               style="float: right">提问</a>
        </div>
    </div>
</script>
<%--渲染登陆模板--%>
<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var laytpl = layui.laytpl;
        if ($.isEmptyObject(${userid})) {
            var orderInfoTpl1 = login.innerHTML
                , orderInfoDiv1 = document.getElementById("layerDemo");
            laytpl(orderInfoTpl1).render(${userid}, function (html) {
                orderInfoDiv1.innerHTML = html;
            })
        }
    });
</script>
<%--工具--%>
<script type="text/html" id="titleTpl">
    <a href="javascript:void(0)">
        <i class="layui-icon layui-icon-face-smile" style="color: #1E9FFF;"></i> {{d.title}}
        {{# if(d.type=="提问"){}}
        <span class="layui-badge layui-bg-orange">问</span>
        {{# }else{ }}
        <span class="layui-badge">赏</span></a>
    {{#  } }}
</script>
</body>
</html>