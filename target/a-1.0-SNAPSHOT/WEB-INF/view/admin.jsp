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
<div id="west" data-options="region:'center',title:'工作区域'" style="padding:5px;">
    <input type="hidden" id="miss" value="${pageContext.request.contextPath}">
    <%--    渲染模板的div放在这里--%>
    <div id="orderInfoDiv1">
        <table id="demo" lay-filter="test"></table>
    </div>
</div>
<%-- 工具栏模板：--%>
<script type="text/html" id="toolbarDemo">
    <div>
        <input id="select" type="text" style="height: 35px"
               placeholder="请输入用户名进行搜索">
        <button class="layui-btn layui-btn-sm" lay-event="add">搜索</button>
        <button class="layui-btn layui-btn-sm" lay-event="delete">批量封号</button>
    </div>
</script>
<%--工具列模板--%>
<script type="text/html" id="barDemo">
    {{#  if(d.permission == 1){ }}
    <a class="layui-btn layui-btn-xs" lay-event="del">封号</a>
    {{#  } }}
    {{#  if(d.permission == 2){ }}
    <a class="layui-btn layui-btn-xs" lay-event="del">解封</a>
    {{#  } }}
    {{#  if(d.applyfor == 1){ }}
    <a class="layui-btn layui-btn-xs" lay-event="tt">任命管理员</a>
    {{#  } }}
    {{#  if(d.type == 1){ }}
    <a class="layui-btn layui-btn-xs" lay-event="tt">解除管理员</a>
    {{#  } }}
</script>
<%--工具列模板--%>
<script type="text/html" id="barDemo1">
    <a class="layui-btn layui-btn-xs" lay-event="delview">删除此条评论</a>
</script>
<%--内容工具模板--%>
<script type="text/html" id="titleTpl">
    {{#  if(d.type ==0){ }}
    <a href="/detail/{{d.id}}" class="layui-table-link">超级管理员</a>
    {{#  }  }}
    {{#  if(d.type ==1){ }}
    管理员
    {{#  }  }}
    {{#  if(d.type ==2){ }}
    普通用户
    {{#  }  }}
</script>
<%--内容工具模板--%>
<script type="text/html" id="titleTpl1">
    {{#  if(d.permission ==1){ }}
    正常
    {{#  }  }}
    {{#  if(d.permission ==2){ }}
    封号中
    {{#  }  }}
</script>
<%--book模板引擎--%>
<script type="text/html" id="orderInfo">
    <div class="layui-fluid" style="background: #a4e9c1;">
        <%--        保存bookid用于更新章节信息--%>
        <input type="hidden" value="{{d.bookid}}">
        <div class="layui-col-md1">
            <div><img src="{{d.url}}" height="200px" width="150px"></div>
            <button type="button" class="layui-btn  layui-btn-sm">
                <i class="layui-icon layui-icon-close-fill" style="margin-left:10%; color: #FF0000">禁封面</i>
            </button>
        </div>
        <div class="layui-col-md11">
            <div class="layui-form-item">
                <label class="layui-form-label">书名：</label>
                <div class="layui-form-mid layui-word-aux">{{d.name}}</div>
                <button type="button" class="layui-btn layui-btn-sm">
                    <i class="layui-icon layui-icon-close-fill" style="margin-left:3%; color: #FF0000;">禁书名</i>
                </button>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">类型：</label>
                <div class="layui-form-mid layui-word-aux">{{d.type}}</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">简介：</label>
                <div class="layui-form-mid layui-word-aux" style="width: 95%;margin-left: 5%">{{d.remark}}</div>
                <button type="button" class="layui-btn layui-btn-sm">
                    <i class="layui-icon layui-icon-close-fill" style="margin-left:3%; color: #FF0000;">禁简介</i>
                </button>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" style="width: 100px;">最新章节：</label>
                <div class="layui-form-mid layui-word-aux">{{d.star}}</div>
                <a href="${pageContext.request.contextPath}/admin/creation?r={{d.bookid}}" class="layui-btn">前往审核</a>
            </div>
        </div>
        <hr>
    </div>
</script>
</body>
</html>