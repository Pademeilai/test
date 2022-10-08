//用户注册
function register() {
    layer.open({
        type: 1,
        title:'用户注册',
        content: '<div style="padding: 20px 100px;">' +
            '<form action="" method="get" class="layui-form">'+
            '<div class="layui-form-item">' +
            '<label class="layui-form-label">*账号：</label>' +
            '<div class="layui-input-block">' +
            '<input type="text" name="name" required lay-verify="username|required" placeholder="请输入账号" autocomplete="off" class="layui-input">' +
            '<div class="layui-form-mid layui-word-aux">注意区分大小写</div>' +
            '</div>' +
            '</div>' +
            '<div class="layui-form-item">' +
            '<label class="layui-form-label">*密码：</label>' +
            '<div class="layui-input-block">' +
            '<input type="password" name="pass" required lay-verify="required|pass" placeholder="请输入密码" autocomplete="off" class="layui-input">' +
            '<div class="layui-form-mid layui-word-aux">6~16位英文字母(区分大小写)或数字，数字字母需同时出现</div>' +
            '</div>' +
            '</div>' +
            '<div class="layui-form-item">' +
            '<label class="layui-form-label">*再次输入密码：</label>' +
            '<div class="layui-input-block">' +
            '<input type="password" name="pass1" required lay-verify="required|pass" placeholder="请输入密码" autocomplete="off" class="layui-input">' +
            '<div class="layui-form-mid layui-word-aux">6~16位英文字母(区分大小写)或数字，数字字母需同时出现</div>' +
            '</div>' +
            '</div>' +'<div class="layui-form-item">\n' +
            '    <div class="layui-input-block">\n' +
            '      <button class="layui-btn" lay-submit lay-filter="formDemo1">注册</button>\n' +
            '    </div>\n' +
            '  </div>'+'</form>'+
            '</div>',
        shade: 0 //不显示遮罩
        ,
        yes: function() {

        }
    });
    layui.use([ 'element', 'jquery', 'laydate', 'form'],function() {
        var $ = layui.jquery;
        var form = layui.form;
        //获取当前地址
        var elementById = document.getElementById("loginluder").value;
        //监听提交事件
        form.on('submit(formDemo1)', function (data) {
            $.post(elementById+"/user/insert", data.field, function (res) {
                if (!res.total) {
                    var orderInfoTpl1=login.innerHTML
                        ,orderInfoDiv1=document.getElementById("layerDemo");
                    laytpl(orderInfoTpl1).render(res,function (html) {
                        orderInfoDiv1.innerHTML=html;
                    })
                    layer.closeAll();
                    layer.msg(res.msg);
                    $.ajax({url:elementById+"/information/insert"})//初始化用户个人信息
                    $.ajax({url:elementById+"/money/insert"})//初始化用户个人钱包
                    //快乐ajax，无法页面跳转
                    if (res.rows.type==0||res.rows.type==1){
                        window.location.href="./admin";
                    }
                } else {
                    layer.msg(res.msg);
                }
            })
            return false;  //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        })
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
    })
}