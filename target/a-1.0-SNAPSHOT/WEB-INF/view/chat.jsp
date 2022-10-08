<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/icon.css">
    <%--下面三个js文件必须是按顺序进行，不能搞乱顺序--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" href="../css/layui/css/layui.css">
    <script src="../css/layui/layui.js"></script>
    <script type="text/javascript">
        $(function() {
            $('#tt').tree({
                onClick: function(node) {
                    /*单击管理员列表时把中间区域的标题设置为管理员信息列表*/
                    $(".layout-panel-center .panel-title").text(node.text);
                    //动态加js文件
                    if(typeof(initadmin) != "function") {
                        $.getScript("${pageContext.request.contextPath}/js/admin.js", function() {
                            initadmin(node.id);
                        })
                    } else {
                        initadmin(node.id);
                    }
                }
            });
        });
    </script>
    <link rel="stylesheet" href="../css/layui/css/layui.css">
    <link rel="stylesheet" href="../css/chat.css">
    <script src="../css/layui/layui.js"></script>
    <script src="../js/login.js"></script>
    <script src="../js/Register.js"></script>
    <script src="../js/init.js"></script>
    <script src="../js/color.js"></script>
</head>
<body class="easyui-layout" >
<!--<%--这是北边的区域用于显示系统的主标题--%>-->
<div data-options="region:'north',split:true" style="mapping-left:10px; height:80px;font-size:46px;background: #01AAED">
    <a href="" style="margin-left: 10%;color: white">管理员中心</a>
    <div style="float:right;margin-right: 10%;">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/information">个人中心<span class="layui-badge-dot"></span></a>
            </li>
            <li class="layui-nav-item">
                <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">${username}</a>
            </li>
        </ul>
    </div>
</div>
<!--<%--这是南边的区域用于显示系统的版权相关的信息--%>-->
<div data-options="region:'south',split:true" style="height:100px;"></div>
<!-- 布局中的东边区域去掉    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>    -->
<!--<%--这是西边的区域用于作为系统的侧边导航--%>-->
<div data-options="region:'west',title:'管理员操作导航',split:true" style="width:210px;background: #01AAED">
    <!--<%--下边的无序列表是构成我们的树型导航--%>-->
    <ul id="tt" class="easyui-tree">
        <li>
            <span>用户管理</span>
            <ul>
                <li id="a" value="管理员申请列表">
                    <span>申请管理员列表</span>
                </li>
                <li id="b" value="用户信息列表">
                    <span>用户信息列表</span>
                </li>
                <li id="c" value="违规用户列表">
                    <span>违规用户列表</span>
                </li>
            </ul>
        </li>
        <li>
            <span>内容审核</span>
            <ul>
                <li id="d" value="小说审核列表">
                    <span>小说审核管理中心</span>
                </li>
                <li id="e" value="帖子审核列表">
                    <span>帖子举报管理中心</span>
                </li>
            </ul>
        </li>
        <li>
            <span>平台数据分析</span>
            <ul>
                <li id="f" value="用户使用量">
                    <span>用户使用量</span>
                </li>
            </ul>
        </li>
        <li>
            <span>个人信息管理</span>
            <ul>
                <li id="g" value="修改信息列表">
                    <span>修改个人信息</span>
                </li>
                <li id="h">
                    <span>退出系统</span>
                </li>
            </ul>
        </li>
    </ul>
</div>
<!--<%--这是中间区域用于显示我们操作中心--%>-->
<div id="west" data-options="region:'center'">
    <%--主要显示区--%>
    <div id="content">
        <div class="layui-fluid">
            <div class="layui-fluid">
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
</div>
</body>
</html>