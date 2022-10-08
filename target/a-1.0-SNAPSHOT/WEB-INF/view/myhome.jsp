<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>书库</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../css/layui/css/layui.css">
    <script src="../css/layui/layui.js"></script>
    <script src="../js/myhome.js"></script>
    <script src="../js/color.js"></script>
</head>
<body>
<%--这里是小说内容区--%>
<%--头部--%>
<div class="layui-fluid" style="background: #393D49">
    <div class="layui-container">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <a href="./index.jsp"><i class="layui-icon layui-icon-share">论坛+新创作官网</i></a>
            </li>
            <li class="layui-nav-item">
                <a href="">首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/myhome">书库</a>
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
<%--主要显示区--%>
<div id="content">
    <div class="layui-fluid">
        <div class="layui-container">
            <div class="layui-row">
                <div id="orderInfoDiv1">
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

<%--榜单模板引擎--%>
<script type="text/html" id="orderInfo1">
    <div class="layui-col-md2" style="margin-top: 10px;align-content: center">
        <div><img src="{{d.url}}" height="100%" width="40%"></div>
        <a href="javascript:void(0)" onmousedown="abc({{d.bookid}})" style="margin-top: 5px"><span
                class="layui-badge">1</span>{{d.name}}</a>
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
                    <dd><a href="javascript:;">修改信息</a></dd>
                    <dd><a href="javascript:;">安全管理</a></dd>
                    <dd><a href="javascript:window.close();">退了</a></dd>
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
<%--nobook页面模板引擎--%>
<script type="text/html" id="orderInfod">
    <div class="layui-fluid">
        <div class="layui-carousel" style=" background: url('http://static.zongheng.com/author/v2015/images/nobook.png') no-repeat center;height:372px; text-align:center; font-size:18px; color:#333;padding-top: 120px; line-height:30px; overflow:hidden; width:100%;">
            您还没有作品哦，快去创作吧!
        </div>
    </div>
</script>
</body>
</html>