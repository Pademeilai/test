//登陆事件
layui.use('layer', function() { //独立版的layer无需执行这一句
    var $ = layui.jquery,
        layer = layui.layer; //独立版的layer无需执行这一句
    var laytpl=layui.laytpl;
    //触发事件
    var active = {
        offset: function(othis) {
            var type = othis.data('type'),
                text = othis.text();
            layer.open({
                type: 1,
                title:'用户登陆',
                offset: type,
                id: 'layerDemo' + type,
                content: '<div style="padding: 20px 100px;">' +
                    '<form action="" method="get" class="layui-form">'+
                    '<div class="layui-form-item">' +
                    '<label class="layui-form-label">*账号</label>' +
                    '<div class="layui-input-block">' +
                    '<input type="text" name="name" required lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">' +
                    '<div class="layui-form-mid layui-word-aux">注意区分大小写</div>' +
                    '</div>' +
                    '</div>' +
                    '<div class="layui-form-item">' +
                    '<label class="layui-form-label">*密码</label>' +
                    '<div class="layui-input-block">' +
                    '<input type="password" name="pass" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">' +
                    '<div class="layui-form-mid layui-word-aux">6~16位英文字母(区分大小写)或数字，数字字母需同时出现</div>' +
                    '</div>' +
                    '</div>' +'<div class="layui-form-item">\n' +
                    '    <div class="layui-input-block">\n' +
                    '      <button class="layui-btn" lay-submit lay-filter="formDemo">登陆</button>\n' +
                    '      <button type="reset" class="layui-btn layui-btn-primary" onclick="register()">去注册</button>\n' +
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
                //监听提交事件
                var elementById = document.getElementById("loginluder").value;
                form.on('submit(formDemo)', function (data) {
                    $.post(elementById+"/user/selectByPrimaryKey", data.field, function (res) {
                        if (!res.total) {
                            var orderInfoTpl1=login.innerHTML
                                ,orderInfoDiv1=document.getElementById("layerDemo");
                            laytpl(orderInfoTpl1).render(res,function (html) {
                                orderInfoDiv1.innerHTML=html;
                            })
                            layer.closeAll();
                            layer.msg(res.msg);
                            //快乐ajax，无法页面跳转
                            if (res.rows.type==0){
                                window.location.href="./admin";
                            }else if (res.rows.type==1){
                                window.location.href="./ordinaryAdmin";
                            }
                        } else {
                            layer.msg(res.msg);
                        }
                    })
                    return false;  //阻止表单跳转。如果需要表单跳转，去掉这段即可。
                })
            })
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
})