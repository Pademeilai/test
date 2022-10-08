<%@ page import="jdk.nashorn.internal.ir.RuntimeNode" %><%--
  Created by IntelliJ IDEA.
  User: 吴光清
  Date: 2022/3/1
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑新章节</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css//layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css//chat.css">
    <script src="${pageContext.request.contextPath}/css//layui/layui.js"></script>
</head>
<body style="background: #92B8B1">
<!--<%--header--%>-->
<div class="layui-fluid" style="background: #393D49;">
    <div class="layui-container" style="text-align: center;">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <i style="font-size: 22px;">${bookname}</i>
            </li>
            <li class="layui-nav-item" style="float: right;">
                <a href="${pageContext.request.contextPath}/admin/webmaster" class="layui-btn">作品库</a>
            </li>
        </ul>

    </div>
</div>
<!--<%--main--%>-->
<div class="layui-container" style="margin-top: 20px;">
    <div class="layui-row">
        <div class="layui-col-md2" style="background: white;width: 30%;">
            <div class="layui-panel">
                <ul class="layui-menu" id="docDemoMenu1">
                    <li lay-options="{id: 101}">
                        <div class="layui-menu-body-title">
                            <h2 style="text-align: center;font-family: 'microsoft yahei';font-size: 18px;color: green;">目录</h2>
                        </div>
                    <li class="layui-menu-item-divider">

                    </li>
                    <table id="demo" lay-filter="test"></table>
                    <li class="layui-menu-item-divider"></li>
                    <table id="demo1" lay-filter="test1"></table>
                    </li>
                    <li class="layui-menu-item-divider">
                    <li style="background: #aacccc">
                        <a href="${pageContext.request.contextPath}/admin/creation?r=${bookid}">添加新章节</a>
                    </li>
                    </li>
                </ul>
            </div>
            <div class="section">
                <div class="title">
                    小说专属聊天 窗  <i class="layui-icon layui-icon-tips" style="color: #1E9FFF;"></i>
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
        <div class="layui-col-md9" style="background: white; margin-left: 10px;width: 68%;">
            <form class="layui-form" action="" style="margin-top: 20px;">
                <input name="bookid" type="hidden" value="${bookid}"/>
                <input id="dt" type="hidden" name="count" value="0"/>
                <div id="a" class="layui-form-item" style="width: 30%;">
                    <label class="layui-form-label">*所在分卷</label>
                    <div class="layui-input-block">
                        <select name="bunding" lay-verify="required">
                            <option value="正文">正文</option>
                            <option value="作品相关">作品相关</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">*章节名</label>
                    <div class="layui-input-block">
                        <input id="chapter" type="text" name="chapter" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input" style="width: 400px;">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">*章节内容</label>
                    <div class="layui-input-block">
                        <textarea id="desc" name="content" placeholder="请输入内容50000字以内" class="layui-textarea" style="width: 600px;height: 800px;"></textarea>
                    </div>
                    <div id="de" class="layui-form-label" style="float: right;margin-right: 100px;width: 100px;">*总字数：
                    </div>
                </div>
                <div id="b" class="layui-form-item">
                    <label class="layui-form-label">*发布模式</label>
                    <div  class="layui-input-block">
                        <input type="radio" name="modle" value="VIP" title="VIP">
                        <input type="radio" name="modle" value="免费" title="免费" checked>
                    </div>
                </div>
                <div id="c" class="layui-form-item">
                    <label class="layui-form-label">*发布方式</label>
                    <div class="layui-input-block">
                        <input type="radio" name="time" value="立即发布" title="立即发布" checked>
                        <input type="radio" name="time" value="暂存草稿" title="暂存草稿">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button id="dr" class="layui-btn" lay-submit lay-filter="formDemo">上传章节</button>
                        <button id="del" class="layui-btn" lay-submit lay-filter="formDel" style="display: none;float: right;margin-right: 100px">删除章节</button>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="upload_warn">
                        <p class="warn_p"><em class="pub_ico ico_err" style="margin-left:0;"></em>上传章节说明 </p>
                        <p>1、编辑、移动、删除章节在作品库中的作品列表里该作品的【章节管理】里。</p>
                        <p>2、分卷不能移动，创建分卷、章节的顺序即为分卷、章节在目录中的展示顺序，也就是书的顺序。</p>
                        <p>3、程序能处理绝大多数文本格式的排版，但请不要录入带硬回车换行的作品</p>
                        <p>4、添加的章节会被程序识别为作品或当前卷的最新一章，请注意选择章节所在卷。章节请按顺序输入，不要颠倒。</p>
                        <p>5、章节名字应与内容相符，不具有文学性、故意夸大其词的广告性、政治性以及恶搞性章节名将会被删除。</p>
                        <p>6、上传的章节内容必须与符合纵横收录标准，不符合收录标准的作品将被禁阅或删除。</p>
                        <p>7、凡是六小时内重复上传新章节、单章字数低于2000字将不在首页更新列表，以及分类更新列表内显示更新情况(漫画作品除外)</p>
                    </div>
                </div>
            </form>
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
</body>
<%--对编辑框操作--%>
<script>
    var a=${userType};
    if (a==0||a==1){
        //隐藏章节发布模式以及权限
        document.getElementById("a").style.display='none';
        document.getElementById("b").style.display='none';
        document.getElementById("c").style.display='none';
    }else {
        //字数统计
        document.onkeydown = Ctrlkeydown;
        function Ctrlkeydown(){
            var length = document.getElementById("desc").value.length;
            var dr=document.getElementById("dr");
            document.getElementById("de").innerHTML=("总字数："+length);
            document.getElementById("dt").value=length;
            if(length>=50000){
                document.getElementById("de").innerHTML=("超过最大总字数限制："+length);
                document.getElementById("de").style.color="red";
                document.getElementById("dr").innerHTML=("超过最大字数限制无法上传");
            }else{
                document.getElementById("de").style.color="black";
                if (document.getElementById("del").style.display=="block"){
                    document.getElementById("dr").innerHTML=("重新上传");
                }else {
                    document.getElementById("dr").innerHTML=("上传章节");
                }
            }
        }
    }
    // 提交章节信息
    layui.use('form', function() {
        var form = layui.form;
        $=layui.jquery;
        // 添加\更新 新章节
        form.on('submit(formDemo)', function(data) {
            if (document.getElementById("dr").innerHTML=="上传章节"){
                $.ajax({
                    url: '${pageContext.request.contextPath}/chapter/insert',
                    method: 'post',
                    data: data.field,
                    dataType: 'JSON',
                    success: function (res) {
                        if (res = "1") {
                            alert("添加新章节成功,等待管理员审核");
                            location.href="${pageContext.request.contextPath}/admin/webmaster";
                        } else
                        // 防止内部参数错误
                            location.href="${pageContext.request.contextPath}/admin/webmaster";
                    },
                    error: function (res) {
                        layer.msg(res.msg);
                    }
                });
            }else if (document.getElementById("dr").innerHTML=="重新上传"){
                $.ajax({
                    url: '${pageContext.request.contextPath}/chapter/update',
                    method: 'post',
                    data: data.field,
                    dataType: 'JSON',
                    success: function (res) {
                        if (res = "1") {
                            alert("修改章节上传成功,等待管理员重新审核！");
                            location.href="${pageContext.request.contextPath}/admin/webmaster";
                        } else
                        // 防止内部参数错误
                            location.href="${pageContext.request.contextPath}/admin/webmaster";
                    },
                    error: function (res) {
                        layer.msg(res.msg);
                    }
                });
            }else if (document.getElementById("dr").innerHTML=="审核通过"){
                $.ajax({
                    url: '${pageContext.request.contextPath}/chapter/updateTime',
                    method: 'post',
                    data: data.field,
                    dataType: 'JSON',
                    success: function (res) {
                        if (res = "1") {
                            alert("审核成功！");
                            location.href="${pageContext.request.contextPath}/admin/admin";
                        } else
                        // 防止内部参数错误
                            location.href="${pageContext.request.contextPath}/admin/admin";
                    },
                    error: function (res) {
                        layer.msg(res.msg);
                    }
                });
            }
            return false;
        });
        // 删除章节
        form.on('submit(formDel)', function(data) {
            $.ajax({
                url: '${pageContext.request.contextPath}/chapter/del',
                dataType: 'JSON',
                success: function (data) {
                    if (data.total = "1") {
                        alert(data.msg);
                        location.href="${pageContext.request.contextPath}/admin/creation";
                    } else
                    // 防止内部参数错误
                        location.href="${pageContext.request.contextPath}/admin/creation";
                },
                error: function (data) {
                    layer.msg(data.msg);
                }
            });
            return false;
        });
    });
</script>
<%--对目录进行操作--%>
<script>
    layui.use('table', function(){
        var table = layui.table;
        //渲染作品相关
        table.render({
            elem: '#demo'
            ,id:'idTest'
            ,height: 312
            ,url: '${pageContext.request.contextPath}/chapter/listallchapter?r=2' //数据接口
            ,where:{"bunding":"作品相关"}
            ,parseData: function(res){ //res 即为原始返回的数据
                return {
                    "code": res.total, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "data": res.rows //解析数据列表
                }}
            , cols: [[ //表头
                {title: '作品相关',templet: '#timeTpl'}
                , {field: '', title: '操作',width:'80', align:'right', toolbar: '#barDemo'}
            ]]
            ,error:function (data) {
                alert("错误");
            }
        });
        // 渲染正文
        table.render({
            elem: '#demo1'
            ,height: 312
            ,url: '${pageContext.request.contextPath}/chapter/listallchapter?r=2' //数据接口
            ,where:{"bunding":"正文"}
            ,parseData: function(res){ //res 即为原始返回的数据
                return {
                    "code": res.total, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "data": res.rows //解析数据列表
                }},
            cols: [[ //表头
                {title: '正文' ,templet: '#timeTpl'}
                , {field: '', title: '操作',width:'80', align:'right', toolbar: '#barDemo'}
            ]]
        });
        // 作品相关   行工具事件
        table.on('tool(test)', function(obj){
            var name = obj.data; //获得当前行数据
            $.ajax({
                "url":'${pageContext.request.contextPath}/chapter/selectContent',
                "type":'post',
                data:name,
                success:function (data) {
                    if (data.total==0){
                        document.querySelector('textarea').value=data.rows[0].content;
                        document.getElementById("chapter").value=name.chapter;
                        document.getElementById("de").innerHTML=("总字数："+data.rows[0].content.length);
                        // 当用户未做修改直接上传的情况下，章节字数会置0，下面语句防止出错
                        $('modle').value=data.rows[0].modle;
                        $('time').value=data.rows[0].time;
                        document.getElementById("dt").value=data.rows[0].content.length;
                        document.getElementById("dr").innerHTML=("重新上传");
                        document.getElementById("del").style.display="block";
                    }
                },
                error:function (data) {
                    alert(data.msg);
                }
            })
        });
        // 正文   行工具事件
        table.on('tool(test1)', function(obj){
            var name = obj.data; //获得当前行数据
            $.ajax({
                "url":'${pageContext.request.contextPath}/chapter/selectContent',
                "type":'post',
                data:name,
                success:function (data) {
                    if (data.total==0){
                        document.querySelector('textarea').value=data.rows[0].content;
                        document.getElementById("chapter").value=name.chapter;
                        document.getElementById("de").innerHTML=("总字数："+data.rows[0].content.length);
                        // 当用户未做修改直接上传的情况下，章节字数会置0，下面语句防止出错
                        document.getElementById("dt").value=data.rows[0].content.length;
                        var a=${userType};
                        if (a==0||a==1){
                            document.getElementById("dr").innerHTML=("审核通过");
                        }else {
                            document.getElementById("dr").innerHTML=("重新上传");
                            document.getElementById("del").style.display="block";
                        }
                    }
                },
                error:function (data) {
                    alert(data.msg);
                }
            })
        });
    });
</script>
<%--绑定行工具条--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
</script>
<script type="text/html" id="timeTpl">
    {{d.chapter}}
    {{#  if(d.time=="暂存草稿"||d.time=="待审核"){ }}
    <span class="layui-badge-rim layui-bg-orange">{{d.time}}</span>
    {{#  } else { }}
    <span class="layui-badge-rim layui-bg-orange">{{d.modle}}</span>
    {{#   }  }}
</script>
<script>
    var arrIcon = ['http://www.xttblog.com/wp-content/uploads/2016/03/123.png','http://www.xttblog.com/wp-content/uploads/2016/03/123.png'];
    var num = 0;     //控制头像改变
    var iNow = -1;    //用来累加改变左右浮动
    var btn = document.getElementById('btn');
    var text = document.getElementById('text');
    var content = document.getElementsByTagName('ul')[2];
    var img = content.getElementsByTagName('img');
    var span = content.getElementsByTagName('span');
    var d = new Date();
    document.getElementById("date").innerText = d.toLocaleDateString();
    btn.onclick = function(){
        num = 0;
        if(text.value ==''){
            layer.msg('不能发送空消息');
        }else {
            var data1 = {"chatcontent": text.value};
            $.ajax({
                url: "${pageContext.request.contextPath}/chat/insert?r=1",
                data: data1,
                success: function (data) {
                    if (data.total == 0) {
                        content.innerHTML += '<li><img src="'+arrIcon[num]+'" style="width: 40px;height: 40px;"><span>'+text.value+'</span></li>';
                        iNow++;
                        if(num==0){
                            img[iNow].className += 'imgright';
                            span[iNow].className += 'spanright';
                        }else {
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
        var url = "${pageContext.request.contextPath}/chat/select?r=2";
        $.get(url, function (data) {
            if (data.total == 0) {
                num = 1;
                content.innerHTML += '<li><img src="'+arrIcon[num]+'" style="width: 40px;height: 40px;"><span>'+data.rows.content+'</span></li>';
                iNow++;
                if(num==0){
                    img[iNow].className += 'imgright';
                    span[iNow].className += 'spanright';
                }else {
                    img[iNow].className += 'imgleft';
                    span[iNow].className += 'spanleft';
                }
            }
        });
    }
</script>
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
</html>
