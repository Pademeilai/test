<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>作家中心</title>
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
            /*jquery easyui的代码在这里写*/
            $('#tt').tree({
                onClick: function(node) {
                    /*单击导航栏中的管理员列表结点*/
                    if(node.id == "adminlistall") {
                        /*单击管理员列表时把中间区域的标题设置为管理员信息列表*/
                        $(".layout-panel-center .panel-title").text("书籍列表");
                        //动态加js文件
                        if(typeof(initadmin) != "function") {
                            $.getScript("${pageContext.request.contextPath}/js/webmaster.js", function() {
                                initadmin(1);
                            })
                        } else {
                            initadmin(1);
                        }
                    }
                    /*单击导航栏中的课程安排信息列表结点*/
                    if(node.id == "money"||node.id == "adminlist") {
                        /*单击课程安排信息列表时把中间区域的标题设置为程信息列表课程安排信息列表*/
                        location.href="${pageContext.request.contextPath}/admin/information"
                    }
                    if(node.id == "book") {
                        /*单击课程安排信息列表时把中间区域的标题设置为程信息列表课程安排信息列表*/
                        $(".layout-panel-center .panel-title").text("书籍大数据");
                    }if(node.id == "exitlist") {
                        location.href="${pageContext.request.contextPath}/admin/index"
                    }
                    if(node.id == "share") {
                        /*单击课程安排信息列表时把中间区域的标题设置为程信息列表课程安排信息列表*/
                        $(".layout-panel-center .panel-title").text("共享书籍");
                        //动态加js文件
                        if(typeof(initadmin) != "function") {
                            $.getScript("${pageContext.request.contextPath}/js/webmaster.js", function() {
                                initadmin(3);
                            })
                        } else {
                            initadmin(3);
                        }
                    }
                }
            });
        });
    </script>
</head>
<body class="easyui-layout" >
<!--<%--这是北边的区域用于显示系统的主标题--%>-->
<div data-options="region:'north',split:true" style="mapping-left:10px; height:80px;font-size:46px;text-align: center;background: #393D49">作家中心</div>
<!--<%--这是南边的区域用于显示系统的版权相关的信息--%>-->
<div data-options="region:'south',split:true" style="height:100px;"></div>
<!-- 布局中的东边区域去掉    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>    -->
<!--<%--这是西边的区域用于作为系统的侧边导航--%>-->
<div data-options="region:'west',title:'管理员操作导航',split:true" style="width:210px;background: #393D49">
    <!--<%--下边的无序列表是构成我们的树型导航--%>-->
    <ul id="tt" class="easyui-tree">
        <li>
            <span>书籍管理</span>
            <ul>
                <li id="adminlistall">
                    <span>书籍信息列表</span>
                </li>
            </ul>
        </li>
        <li>
            <span>收益管理</span>
            <ul>
                <li id="money">
                    <span>查看收益</span>
                </li>
                <li id="book">
                    <span>书籍数据</span>
                </li>
            </ul>
        </li>
        <li>
            <span>我的共享</span>
            <ul>
                <li id="share">
                    <span>查看共享书籍</span>
                </li>
            </ul>
        </li>
        <li>
            <span>个人信息管理</span>
            <ul>
                <li id="adminlist">
                    <span>修改信息列表</span>
                </li>
                <li id="exitlist">
                    <span>退出系统</span>
                </li>
            </ul>
        </li>
    </ul>
</div>
<!--<%--这是中间区域用于显示我们操作中心--%>-->
<div id="west" data-options="region:'center',title:'工作区域'" style="padding:5px;">
    <!--<%--显示区域--%>-->
    <%--    渲染模板的div放在这里--%>
    <div id="orderInfoDiv1">
    </div>
    <%--            解决在js中找不到项目路径的问题--%>
    <input id="pageContext" type="hidden" value="${pageContext.request.contextPath}" />

    <div id="layerDemo" style="margin-bottom: 0;">
        <div class="layui-btn-container" style="margin-top: 30px;text-align: center;">
            <button data-method="setTop" class="layui-btn">创建新书</button>
        </div>
    </div>
</div>
<%--book模板引擎--%>
<script type="text/html" id="orderInfo">
    <div class="layui-fluid" style="background: #a4e9c1">
<%--        保存bookid用于更新章节信息--%>
        <input type="hidden" value="{{d.bookid}}">
        <div class="layui-col-md2">
            <div><img src="{{d.url}}" height="200px" width="150px"></div>
            <button type="button" class="layui-btn  layui-btn-sm" style="margin-left: 10%">
                <i class="layui-icon">&#xe67c;</i>上传封面
            </button>
        </div>
        <div class="layui-col-md10">
            <div class="layui-form-item">
                <label class="layui-form-label">书名：</label>
                <div class="layui-form-mid layui-word-aux">{{d.name}}</div>
                <button type="button" class="layui-btn layui-btn-sm">修改</button>
                <a href="${pageContext.request.contextPath}/book/creation?r={{d.bookid}}" class="layui-btn layui-btn-sm">共享我的书</a>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">类型：</label>
                <div class="layui-form-mid layui-word-aux">{{d.type}}</div>
                <button type="button" class="layui-btn layui-btn-sm">修改</button>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">简介：</label>
                <div class="layui-form-mid layui-word-aux" style="width: 95%;margin-left: 5%">{{d.remark}}</div>
                <button type="button" class="layui-btn layui-btn-sm">修改</button>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="width: 100px;">最新章节：</label>
                <div class="layui-form-mid layui-word-aux">{{d.star}}</div>
                <a href="${pageContext.request.contextPath}/admin/creation?r={{d.bookid}}" class="layui-btn">继续发布新章</a>
            </div>
        </div>
        <hr>
    </div>
</script>
<%--共享book模板引擎--%>
<script type="text/html" id="orderInfoshare">
    <div class="layui-fluid" style="background: #a4e9c1">
<%--        保存bookid用于更新章节信息--%>
        <input type="hidden" value="{{d.bookid}}">
        <div class="layui-col-md2">
            <div><img src="{{d.url}}" height="200px" width="150px"></div>
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
                <div class="layui-form-mid layui-word-aux" style="width: 95%;margin-left: 5%">{{d.remark}}</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="width: 100px;">最新章节：</label>
                <div class="layui-form-mid layui-word-aux">{{d.star}}</div>
                <a href="${pageContext.request.contextPath}/admin/creation?r={{d.bookid}}" class="layui-btn">前往一起发布新章</a>
            </div>
        </div>
        <hr>
    </div>
</script>
<%--nobook页面模板引擎--%>
<script type="text/html" id="orderInfod">
    <div class="layui-fluid">
        <div class="layui-carousel" style=" background: url('http://static.zongheng.com/author/v2015/images/nobook.png') no-repeat center;height:372px; text-align:center; font-size:18px; color:#333;padding-top: 120px; line-height:30px; overflow:hidden; width:100%;">
            您还没有作品哦，快去创作吧!
        </div>
    </div>
</script>
<%--初始化nobook--%>
<script>
    // 使用同一个div,先渲染没有作品的情况
    layui.use(['laytpl'], function() {
        var laytpl = layui.laytpl
        var data = {};
        var orderInfoTpl1 = orderInfod.innerHTML,
            orderInfoDiv1 = document.getElementById("orderInfoDiv1");
        laytpl(orderInfoTpl1).render(data,function(html) {
            orderInfoDiv1.innerHTML = html;
        })
    });
    function ton() {
            if(typeof(initadmin) != "function") {
                $.getScript("${pageContext.request.contextPath}/js/webmaster.js", function() {
                    initadmin(2);
                })
            } else {
                initadmin(2);
            }
        layer.closeAll();
    }
</script>
<%--添加新书页面--%>
<script>
    layui.use('layer', function() { //独立版的layer无需执行这一句
        var $ = layui.jquery,
            layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            setTop: function() {
                var that = this;
                //多窗口模式，层叠置顶
                layer.open({
                    type: 1 //此处以iframe举例
                    ,
                    title: '作品信息',
                    area: ['890px', '760px'],
                    shade: 0,
                    maxmin: true,
                    offset: [ //为了演示，随机坐标
                        Math.random() * ($(window).height() - 500), Math.random() * ($(window).width() - 590)
                    ],
                    content: '<div style="padding: 15px;" xmlns="http://www.w3.org/1999/html"><div class="layui-form-item"><label class="layui-form-label">*书名</label><div class="layui-input-block"><input type="text" id="title" required lay-verify="required" placeholder="请输入书名" autocomplete="off" class="layui-input" style="width: 60%"></div></div><div class="layui-form-item"><label class="layui-form-label" style="width:100px">*作品类型</label><div class="layui-input-block"><select id="type" lay-verify="required"><option value="玄幻">玄幻</option><option value="修真">修真</option><option value="都市">都市</option><option value="历史">历史</option><option value="网游">网游</option><option value="科幻">科幻</option></select></div></div></div><div class="layui-form-item layui-form-text"><label class="layui-form-label" style="width:100px">*作品简介</label><div class="layui-input-block"><textarea id="desc" placeholder="给你的作品来个小说明，更吸引读者哦。400字以内" class="layui-textarea" style="width: 600px;height: 400px;"></textarea></div></div><div class="layui-btn-container" style="margin-top: 30px;text-align: center;"><button class="layui-btn" onclick="ton()">创建新书</button></div>'
                    ,
                    btn: ['继续弹出', '全部关闭'] //只是为了演示
                    ,
                    yes: function() {
                        $(that).click();
                    },
                    btn2: function() {
                        layer.closeAll();
                    }

                    ,
                    zIndex: layer.zIndex //重点1
                    ,
                    success: function(layero, index) {
                        layer.setTop(layero); //重点2. 保持选中窗口置顶

                        //记录索引，以便按 esc 键关闭。事件见代码最末尾处。
                        layer.escIndex = layer.escIndex || [];
                        layer.escIndex.unshift(index);
                        //选中当前层时，将当前层索引放置在首位
                        layero.on('mousedown', function() {
                            var _index = layer.escIndex.indexOf(index);
                            if(_index !== -1) {
                                layer.escIndex.splice(_index, 1); //删除原有索引
                            }
                            layer.escIndex.unshift(index); //将索引插入到数组首位
                        });
                    },
                    end: function() {
                        //更新索引
                        if(typeof layer.escIndex === 'object') {
                            layer.escIndex.splice(0, 1);
                        }
                    }
                });
            }
        };

        $('#layerDemo .layui-btn').on('click', function() {
            var othis = $(this),
                method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

        //多窗口模式 - esc 键
        $(document).on('keyup', function(e) {
            if(e.keyCode === 27) {
                layer.close(layer.escIndex ? layer.escIndex[0] : 0);
            }
        });
    });
</script>
<%--刷新作品信息--%>
<script>
    // 登陆状态下刷新作品信息
    var userid="${userid}";
    if (userid!=-1){
        $.getScript("${pageContext.request.contextPath}/js/webmaster.js", function() {
            initadmin(1);
        })
    }
</script>
<%--其他操作--%>
</body>
</html>