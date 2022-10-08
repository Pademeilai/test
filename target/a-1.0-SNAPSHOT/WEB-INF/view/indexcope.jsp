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
    <link rel="stylesheet" href="../css/chat.css">
    <script src="../css/layui/layui.js"></script>
    <script src="../js/login.js"></script>
    <script src="../js/Register.js"></script>
    <script src="../js/init.js"></script>
    <script src="../js/color.js"></script>
    <style type="text/css">
        @font-face {
            font-family: 'Merriweather Sans';
            font-style: italic;
            font-weight: 800;
            src: local('Merriweather Sans ExtraBold Italic'), local('MerriweatherSans-ExtraBldItalic'), url(http://fonts.gstatic.com/s/merriweathersans/v5/nAqt4hiqwq3tzCecpgPmVfrUSW10CwTuVx9PepRx9ls.woff2) format('woff2'), url(http://fonts.gstatic.com/s/merriweathersans/v5/nAqt4hiqwq3tzCecpgPmVW2xy75WLVt7UI7Cycabsy8.woff) format('woff');
        }

        @font-face {
            font-family: "open";
            font-style: normal;
            font-weight: 300;
            src: local("Open Sans Light"), local("OpenSans-Light"), url(https://themes.googleusercontent.com/static/fonts/opensans/v6/DXI1ORHCpsQm3Vp6mXoaTZ1r3JsPcQLi8jytr04NNhU.woff) format('woff');
        }

        *,
        *:before,
        *:after {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        .section {
            position: absolute;
            width: 300px;
            margin: 7px auto;
            height: 69px;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
            overflow: hidden;
            -webkit-transition: .35s;
            transition: .35s;
        }

        .title {
            padding: 20px;
            padding-top: 24px;
            background: #00C37E;
            color: #fff;
            cursor: pointer;
            text-shadow: 0 1px 0 #666;
            width: 100%;
            text-transform: capitalize;
            font-family: 'Merriweather Sans', sans-serif;
            font-style: italic;
            position: relative;
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            z-index: 10;
        }

        .title:before,
        .title:after {
            content: "";
            display: block;
            position: absolute;
            right: 20px;
            top: 21px;
            font-style: normal;
            height: 21px;
            line-height: 1;
            overflow: hidden;
            font-family: FontAwesome;
            font-size: 20px;
            background: #00C37E;
            -webkit-transition: .35s;
            transition: .35s;
        }


        .title:after {
            top: 25px;
            -webkit-transform: rotate(180deg);
            -ms-transform: rotate(180deg);
            -moz-transform: rotate(180deg);
            transform: rotate(180deg);
        }

        .open .title:before {
            height: 0;
        }

        .body {
            font: 16px open, sans-serif;
            background: #fff;
            padding: 20px 20px 40px;
            color: #777;
            -moz-transform: translateY(-100%);
            -ms-transform: translateY(-100%);
            -webkit-transform: translateY(-100%);
            transform: translateY(-100%);
            overflow: hidden;
            -webkit-transition: .35s;
            transition: .35s;
        }

        .body h2 {
            color: #333;
            font-size: 22px;
        }

        .body h2:before {
            content: '▪';
            padding-right: 7px;
            color: #00C37E;
        }

        .body a {
            color: #00C37E;
        }

        .body span {
            font-size: 12px;
        }

        .section.open {
            height: 100%;
            max-height: 788px;
        }

        .open .body {
            -webkit-transform: none;
            -ms-transform: none;
            -moz-transform: none;
            transform: none;
        }

        .in {
            padding: 20px 20px 40px;
        }
    </style>
</head>
<body>
<%--这里是小说内容区--%>
<%--头部--%>
<div class="layui-fluid" style="background: #393D49">
    <div class="layui-container">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <i class="layui-icon layui-icon-share">论坛+新创作官网</i>
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
            <li class="layui-nav-item" style="float: right">
                <input id="loginluder" type="hidden" value="${pageContext.request.contextPath}">
                <div class="layui-btn-container" id="layerDemo">
                    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">登陆</button>
                </div>
            </li>
        </ul>
    </div>
</div>
<hr>
<%--主要显示区--%>
<div id="content">
    <div class="layui-fluid">
        <div class="layui-row">
            <div class="section">
                <div class="title">
                    聊天 窗
                </div>
                <div id="body" class="body">
                    <p id="date" style="margin-left: 30%"></p>
                    <p style="margin-left: 24%">您已加入聊天室</p>
                    <hr>
                </div>
                <div id="chat" class="body" style="margin-top: -40px; height:580px;overflow:auto;border-style: dashed">

                </div>
                <div class="in" style="align-content: center">
                    <textarea id="chatcontent" placeholder="输入内容"></textarea>
                    <a href="javascript:void (0)" onmousedown="chation()" class="layui-layer-btn">发送</a>
                </div>
            </div>
        </div>
        <div class="layui-container">
            <div class="layui-row">
                <i class="layui-icon layui-icon-read" style="font-size: 20px">推荐阅读</i>
            </div>
            <%--        轮播图1--%>
            <div class="layui-row" style="padding-top: 5px;padding-bottom: 10px">
                <div class="layui-carousel" id="test1">
                    <div carousel-item>
                        <div><img src="https://uploadfile.bizhizu.cn/up/23/14/78/231478a09aedf9f0a69ce50168b2a71f.jpg"
                                  alt="some_text"></div>
                        <div><img src="https://uploadfile.bizhizu.cn/2015/0416/20150416105223384.jpg" alt="some_text">
                        </div>
                        <div><img src="https://x0.ifengimg.com/cmpp/fck/2020_30/65cca65a549d6c2_w1024_h578.jpg"
                                  alt="some_text"></div>
                        <div><img
                                src="https://img.zcool.cn/community/01ba0655490e430000019ae97d3fa3.jpg@1280w_1l_2o_100sh.jpg"
                                alt="some_text"></div>
                        <div><img src="https://pic39.photophoto.cn/20160509/0011034671998576_b.jpg" alt="some_text">
                        </div>
                    </div>
                </div>
            </div>
            <%--        榜单1--%>
            <div class="layui-row">
                <div id="orderInfoDiv1">
                    <div class="layui-row">
                        <i class="layui-icon layui-icon-read" style="font-size: 20px">玄幻小说排行榜</i>
                    </div>
                </div>
                <div id="orderInfoDiv2">
                    <div class="layui-row">
                        <i class="layui-icon layui-icon-read" style="font-size: 20px">修真小说排行榜</i>
                    </div>
                </div>
                <div id="orderInfoDiv3">
                    <div class="layui-row">
                        <i class="layui-icon layui-icon-read" style="font-size: 20px">都市小说排行榜</i>
                    </div>
                </div>
                <%--            轮播图2--%>
                <div class="layui-row" style="padding-top: 10px;padding-bottom: 10px">
                    <div class="layui-carousel" id="test2">
                        <div carousel-item>
                            <div><img
                                    src="https://uploadfile.bizhizu.cn/up/23/14/78/231478a09aedf9f0a69ce50168b2a71f.jpg"
                                    alt="some_text"></div>
                            <div><img src="https://uploadfile.bizhizu.cn/2015/0416/20150416105223384.jpg"
                                      alt="some_text"></div>
                            <div><img src="https://x0.ifengimg.com/cmpp/fck/2020_30/65cca65a549d6c2_w1024_h578.jpg"
                                      alt="some_text"></div>
                            <div><img
                                    src="https://img.zcool.cn/community/01ba0655490e430000019ae97d3fa3.jpg@1280w_1l_2o_100sh.jpg"
                                    alt="some_text"></div>
                            <div><img src="https://pic39.photophoto.cn/20160509/0011034671998576_b.jpg" alt="some_text">
                            </div>
                        </div>
                    </div>
                </div>
                <%--            榜单2--%>
                <div id="orderInfoDiv4">
                    <div class="layui-row">
                        <i class="layui-icon layui-icon-read" style="font-size: 20px">历史小说排行榜</i>
                    </div>
                </div>
                <div id="orderInfoDiv5">
                    <div class="layui-row">
                        <i class="layui-icon layui-icon-read" style="font-size: 20px">网游小说排行榜</i>
                    </div>
                </div>
                <div id="orderInfoDiv6">
                    <div class="layui-row">
                        <i class="layui-icon layui-icon-read" style="font-size: 20px">科幻小说排行榜</i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--fooder--%>
<div class="layui-fluid" style="margin-top: 60px;">
    <%--    渲染模板的div放在这里--%>
    <div id="orderInfoabc" class="layui-container">
    </div>
    <div class="layui-container" style="text-align: center;">
        河池学院@2021大创项目
    </div>
</div>
<%--声明部分--%>
<%--<script>--%>
<%--    alert("以下账号可用于登陆：\n超级管理员账号:123  密码:123\n管理员账号：cq   密码：123\n普通用户:wgq   密码：123\n" --%>
<%--</script>--%>
</body>
<%--聊天js--%>
<script>
    !(function (w, d) {

        'use strict';

        var titles = d.querySelectorAll('.title'),

            i = 0,
            len = titles.length;

        for (; i < len; i++)
            titles[i].onclick = function (e) {

                for (var j = 0; j < len; j++)
                    if (this != titles[j])
                        titles[j].parentNode.className = titles[j].parentNode.className.replace(/ open/i, '');

                var cn = this.parentNode.className;

                this.parentNode.className = ~cn.search(/open/i) ? cn.replace(/ open/i, '') : cn + ' open';

            };

    })(this, document);
</script>
<%--榜单模板引擎--%>
<script type="text/html" id="orderInfo1">
    <div class="layui-col-md4">
        <p style="font-family:Arial;font-size:18px;"><cite>{{d.rows[0].type}}小说排行榜</cite></p>
        <div class="layui-col-md3">
            <div><img src="{{d.rows[0].url}}" height="100%" width="95%"></div>
        </div>
        <div class="layui-col-md9">
            <div class="grid-demo">
                <a href="javascript:void(0)" onmousedown="abc({{d.rows[0].bookid}})"><span class="layui-badge">1</span>{{d.rows[0].name}}</a>
            </div>
            <div class="grid-demo">
                <div class="layui-col-md3" style="background: #aaaaaa">
                    <p><cite>{{d.rows[0].type}}</cite></p>
                </div>
                <div class="layui-col-md9" style="background: #aaaaaa;">
                    <p><cite>{{d.rows[0].author}}</cite></p>
                </div>
            </div>
            <div class="grid-demo">
                <p style="width: 100%;height:20%; white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><cite>{{d.rows[0].remark}}</cite>
                </p>
            </div>
        </div>
        <hr>
        <div class="grid-demo">
            <a href="javascript:void(0)" onmousedown="abc({{d.rows[1].bookid}})"><span
                    class="layui-badge layui-bg-orange">2</span><cite>{{d.rows[1].name}}/{{d.rows[1].author}}</cite></a>
        </div>
        <hr>
        <div class="grid-demo">
            <a href="javascript:void(0)" onmousedown="abc({{d.rows[2].bookid}})"><span
                    class="layui-badge layui-bg-green">3</span><cite>{{d.rows[2].name}}/{{d.rows[2].author}}</cite></a>
        </div>
        <hr>
        <div class="grid-demo">
            <a href="javascript:void(0)" onmousedown="abc({{d.rows[3].bookid}})"><span
                    class="layui-badge layui-bg-cyan">4</span><cite>{{d.rows[3].name}}/{{d.rows[3].author}}</cite></a>
        </div>
        <hr>
    </div>
</script>
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
                    <dd><a href="${pageContext.request.contextPath}/admin/information">修改信息</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/admin/information">安全管理</a></dd>
                    <dd><a href="javascript:exit()">退了</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</script>
<%--小说阅读界面模板--%>
<script type="text/html" id="workreader">
    <div class="layui-form-item layui-form-text" id="readerBook">
        <div class="layui-form-item" style="margin-top: -4%">
            <input id="chapter" style="width: 100%;border: none;text-align: center;font-size: 18px;">
        </div>
        <div class="layui-form-item" style="float: right;">
            <label>背景：</label>
            <select onchange="changebgcolor(this)">
                <option value="#E9FAFF" style="background-color: #E9FAFF;">默认底色</option>
                <option value="#E9FAFF" style="background-color: #E9FAFF;">淡蓝海洋</option>
                <option value="#FFFFED" style="background-color: #FFFFED;">明黄清俊</option>
                <option value="#EEFAEE" style="background-color: #EEFAEE;">绿意淡雅</option>
                <option value="#FCEFFF" style="background-color: #FCEFFF;">红粉世家</option>
                <option value="#FFFFFF" style="background-color: #FFFFFF;">白雪天地</option>
                <option value="#EFEFEF" style="background-color: #EFEFEF;">灰色世界</option>
            </select>
            <label>字色：</label>
            <select onchange="changecolor(this)" id="txtcolor" name="txtcolor">
                <option value="#555555" style="color: #555555;">默认</option>
                <option value="#000000" style="color: #000000;">黑色</option>
                <option value="#ff0000" style="color: #FF0000;">红色</option>
                <option value="#006600" style="color: #006600;">绿色</option>
                <option value="#0000ff" style="color: #0000FF;">蓝色</option>
                <option value="#660000" style="color: #660000;">棕色</option>
            </select>
            <label>字号：</label>
            <select onchange="changesize(this)" id="fonttype" name="fonttype">
                <option value="20px" selected="selected">默认</option>
                <option value="12px">小号</option>
                <option value="15px">中号</option>
                <option value="18px">大号</option>
                <option value="20px">较大</option>
                <option value="24px">特大</option>
            </select>
        </div>
        <div class="layui-form-item">
            <textarea id="desc" readonly="readonly" class="layui-textarea"
                      style="overflow:scroll;overflow-y:hidden;overflow-x:hidden;font-size: 18px;"
                      onfocus="window.activeobj=this;this.onload=setInterval(function(){activeobj.style.height=activeobj.scrollHeight+'px';},200);"></textarea>
        </div>
        <div class="layui-form-item" style="text-align: center">
            <ul class="layui-nav">
                <li class="layui-nav-item">
                    <input id="last" type="hidden" value="{{d.array}}">
                    <a href="javascript:void(0)" onmousedown="bcd(1)">上一章</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:void(0)" onmousedown="abc({{d.bookid}})">目录</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:void(0)" onmousedown="bcd(2)">下一章</a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:void(0)" onmousedown="bcd(4)">加入书库</a>
                </li>
            </ul>
        </div>
    </div>
</script>
<%--小说详情模板引擎--%>
<script type="text/html" id="orderInfoqqq">
    <div class="layui-fluid" style="height: 350px; background: #a4e9c1;">
        <%--        保存bookid用于更新章节信息--%>
        <input id="ViewBookid" type="hidden" value="{{d.bookid}}"/>
        <input id="BookName" type="hidden" value="{{d.star}}"/>
        <div class="layui-col-md2">
            <div><img src="{{d.url}}" height="100%" width="100%"></div>
        </div>
        <div class="layui-col-md10">
            <div class="layui-form-item">
                <label class="layui-form-label">书名：</label>
                <div class="layui-form-mid layui-word-aux">{{d.name}}</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">类型：</label>
                <div class="layui-form-mid layui-word-aux">{{d.type}}</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">简介：</label>
                <div class="layui-form-mid layui-word-aux" style="width: 90%;margin-left: 10%">{{d.remark}}</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="width: 100px;">最新章节：</label>
                <a href="javascript:void(0)" class="layui-form-mid layui-word-aux">{{d.star}}</a>
            </div>
        </div>
    </div>
    <div class="layui-fluid">
        <table id="demo" lay-filter="test"></table>
    </div>
</script>
<%--渲染小说章节类型（免费or vip）--%>
<script type="text/html" id="timeTpl">
    <a href="javascript:void(0)">{{d.chapter}}</a>
    {{#  if(d.time=="暂存草稿"||d.time=="待审核"){ }}
    <span class="layui-badge-rim layui-bg-orange">{{d.time}}</span>
    {{#  } else { }}
    <span class="layui-badge-rim layui-bg-orange">{{d.modle}}</span>
    {{#   }  }}
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
<%--聊天模板1--%>
<script type="text/html" id="chatmodel">
    <div>
        <h2 style="width: 100%;text-align: right">:${username}<i class="layui-icon layui-icon-username" style="color: #1E9FFF;"></i></h2>
        <li style="width: 100%;text-align: center;"><span style="background: rgba(0,0,0,0.1);border-radius:10px;font-size: 16px;">{{d.chatcontent}}</span></li>
    </div>

</script>
<%--聊天模板2--%>
<script type="text/html" id="chatmodel1">
    <h2><i class="layui-icon layui-icon-username" style="color: #1E9FFF;"></i>{{d.username}}</h2>
    <li style="margin-left: 60px;"><span style="background: rgba(0,0,0,0.1);border-radius:10px;font-size: 16px;">{{d.content}}</span></li>
</script>
<script>
    var d=new Date();
    document.getElementById("date").innerText=d.toLocaleDateString();
    var $ = layui.jquery;
    var laytpl = layui.laytpl;
    function chation() {
        if (document.getElementById("chatcontent").value != null&&document.getElementById("chatcontent").value!='') {
            var data1={"chatcontent":document.getElementById("chatcontent").value};
            $.ajax({
                url: "${pageContext.request.contextPath}/chat/insert?r=1",
                data: data1,
                success: function (data) {
                    if (data.total == 0) {
                        layer.msg("发言成功");
                        var body=document.getElementById("chat");
                        var orderInfoTpl=chatmodel.innerHTML;
                        laytpl(orderInfoTpl).render(data1,function (html) {
                            body.innerHTML+=html;
                        })
                    }else {
                        layer.msg(data.msg);
                    }
                }
            })
        } else {
            layer.msg("不能发送空内容客官");
        }
    }
    var paypal_ajax = setInterval("paypal_ajax_return()", 2000); //5秒执行一次YourFunction函数。
    function paypal_ajax_return() {
        var url = "${pageContext.request.contextPath}/chat/select";
        $.get(url, function (data) {
            if (data.total==0){
                var laytpl = layui.laytpl;
                var body=document.getElementById("chat");
                var orderInfoTpl=chatmodel1.innerHTML;
                laytpl(orderInfoTpl).render(data.rows,function (html) {
                    body.innerHTML+=html;
                })
            }
        });
    }
</script>
</html>