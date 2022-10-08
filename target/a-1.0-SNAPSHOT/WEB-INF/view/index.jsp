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
<hr>
<%--主要显示区--%>
<div id="content">
    <div class="layui-row">
        <div class="layui-col-md3">
            <div id="section" class="section">
                <div class="title">
                    聊天 窗
                </div>
                <div id="body" class="body">
                    <p id="date" style="margin-left: 30%"></p>
                    <p style="margin-left: 24%">您已加入聊天室</p>
                    <hr>
                </div>
                <ul class="content">
                </ul>
                <div class="footer" style="align-content: center">
                    <input type="text" id="text" placeholder="说点什么吧...">
                    <span id="btn">发送</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md8">
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
    <div class="layui-row">
        <div id="bookchat" class="layui-col-md3" style="display: none">
            <div class="section">
                <div class="title">
                    <input id="stop" type="hidden" value="1">
                    小说专属聊天 窗 <i class="layui-icon layui-icon-tips" style="color: #1E9FFF;"></i>
                </div>
                <div id="body1" class="body">
                    <p id="date1" style="margin-left: 30%"></p>
                    <p style="margin-left: 24%">您已加入聊天室</p>
                    <hr>
                </div>
                <ul id="content1" class="content">
                </ul>
                <div class="footer" style="align-content: center">
                    <input type="text" id="text1" placeholder="说点什么吧...">
                    <span id="btn1">发送</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md8">
            <div id="orderInfoabc" class="layui-container">
            </div>
            <div class="layui-container" style="text-align: center;">
                河池学院@2021大创项目
            </div>
        </div>
    </div>
</div>
<%--声明部分--%>
<%--<script>--%>
<%--    alert("以下账号可用于登陆：\n超级管理员账号:123  密码:123\n管理员账号：cq   密码：123\n普通用户:wgq   密码：123\n" --%>
<%--</script>--%>
</body>
<%--加载聊天js--%>
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
    var arrIcon = ['http://www.xttblog.com/wp-content/uploads/2016/03/123.png', 'http://www.xttblog.com/wp-content/uploads/2016/03/123.png'];
    var num = 0;     //控制头像改变
    var iNow = -1;    //用来累加改变左右浮动
    var btn = document.getElementById('btn');
    var text = document.getElementById('text');
    var content = document.getElementsByTagName('ul')[1];
    var img = content.getElementsByTagName('img');
    var span = content.getElementsByTagName('span');
    var d = new Date();
    document.getElementById("date").innerText = d.toLocaleDateString();
    btn.onclick = function () {
        num = 0;
        if (text.value == '') {
            layer.msg('不能发送空消息');
        } else {
            var data1 = {"chatcontent": text.value};
            $.ajax({
                url: "${pageContext.request.contextPath}/chat/insert?r=1",
                data: data1,
                success: function (data) {
                    if (data.total == 0) {
                        content.innerHTML += '<li><img src="' + arrIcon[num] + '" style="width: 40px;height: 40px;"><span>' + text.value + '</span></li>';
                        iNow++;
                        if (num == 0) {
                            img[iNow].className += 'imgright';
                            span[iNow].className += 'spanright';
                        } else {
                            img[iNow].className += 'imgleft';
                            span[iNow].className += 'spanleft';
                        }
                        text.value = '';
                        layer.msg("发言成功");
                    } else {
                        layer.msg(data.msg);
                    }
                }
            })
        }
    }
    var $ = layui.jquery;
    var paypal_ajax = setInterval("paypal_ajax_return()", 10000); //5秒执行一次YourFunction函数。
    function paypal_ajax_return() {
        var url = null;
        if (document.getElementById("content").style.display == "none") {
            content = document.getElementById("content1");
            url = "${pageContext.request.contextPath}/chat/select?r=2";
        } else {
            content = document.getElementsByTagName('ul')[1];
            url = "${pageContext.request.contextPath}/chat/select?r=1";
        }
        $.get(url, function (data) {
            if (data.total == 0) {
                num = 1;
                content.innerHTML += '<li><img src="' + arrIcon[num] + '" style="width: 40px;height: 40px;"><span>' + data.rows.content + '</span></li>';
                iNow++;
                if (num == 0) {
                    img[iNow].className += 'imgright';
                    span[iNow].className += 'spanright';
                } else {
                    img[iNow].className += 'imgleft';
                    span[iNow].className += 'spanleft';
                }
            }
        });
    }
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
                <div style="width: 100%;height:80px; overflow: hidden;text-overflow: ellipsis;"><cite>{{d.rows[0].remark}}</cite>
                </div>
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
            <textarea id="desc" class="layui-textarea" style="height: 1200px;overflow: hidden"></textarea>
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
    <div class="layui-fluid" style="margin-left:40px; height: 350px; background: #a4e9c1;width: 925px">
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
</html>