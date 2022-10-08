//对表格进行操作
var laytpl = layui.laytpl;
var $ = layui.jquery;
layui.use('table', function () {
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    var table = layui.table;
    // 渲染帖子
    table.render({
        elem: '#demo'
        , url: elementById+'/news/selectAllNews' //数据接口
        , parseData: function (res) { //res 即为原始返回的数据
            return {
                "code": res.total, //解析接口状态
                "msg": res.msg, //解析提示文本
                "data": res.rows //解析数据列表
            }
        },
        cols: [[ //表头
            {title: '标题', width: 592, align: 'center', templet: '#titleTpl'}
            , {field: 'author', title: '作者', width: 80, align: 'center'}
            , {field: 'content', title: '正文', hide: 'true'}
            , {field: 'userid', title: '用户id', hide: 'true'}
            , {field: 'count', title: '阅读量', width: 80, align: 'center'}
            , {field: 'like', title: '点赞数', width: 80, align: 'center'}
            , {field: 'date', title: '日期', width: 165, align: 'center'}
        ]]
    });
    //触发行单击事件
    table.on('row(test)', function (obj) {
        //用户点击数
        $.ajax({"url": elementById+'/news/count', data: obj.data})
        if (obj.data != null) {
            var orderInfoTpl1 = workreader.innerHTML;
            var orderInfoDiv1 = document.getElementById("orderInfoabc");
            laytpl(orderInfoTpl1).render(obj.data, function (html) {
                orderInfoDiv1.innerHTML = html;
            })
            document.getElementById("chapter").value = obj.data.title;
            document.getElementById("content").style.display = "none";
            document.querySelector('textarea').value = obj.data.content;
            //下面这个ajax是获取评论
            $.ajax({
                "url": elementById+'/viewnews/selectnews',
                "type": 'post',
                async: true,//异步赋值出错
                data: obj.data,
                success: function (data) {
                    if (data != null) {
                        var orderInfoDiv = document.getElementById("desc1");
                        for (var i = 0 in data.rows) {
                            var data1 = {
                                "viewnewsid": data.rows[i].viewnewsid,
                                "username": data.rows[i].username,
                                "newsid": data.rows[i].newsid,
                                "title": data.rows[i].title,
                                "content": data.rows[i].content,
                                "remark": data.rows[i].remark,
                                "time": data.rows[i].time,
                            }
                            var orderInfoTpl1 = view.innerHTML;
                            laytpl(orderInfoTpl1).render(data1, function (html) {
                                if (i == 0) {
                                    orderInfoDiv.innerHTML = html;
                                } else {
                                    orderInfoDiv.innerHTML += html;
                                }
                            })
                        }
                    } else {
                        layer.msg("假")
                    }
                },
                error: function (data) {
                    alert(data.msg);
                }
            })
        }
    });
});
function abc(i) {
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    //最新。排行，精品
    var loder = null;
    var $ = layui.jquery;
    if (i == 1 || i == 2 || i == 3) {
        if (i == 1) {
            loder = "date"
        } else if (i == 2) {
            loder = "count"
        } else {
            loder = "count"
        }
        layui.use('table', function () {
            var table = layui.table;
            // 渲染帖子
            table.render({
                elem: '#demo'
                , url: elementById+'/news/selectMaxNew' //数据接口
                , where: {"loder": loder}
                , parseData: function (res) { //res 即为原始返回的数据
                    return {
                        "code": res.total, //解析接口状态
                        "msg": res.msg, //解析提示文本
                        "data": res.rows //解析数据列表
                    }
                },
                cols: [[ //表头
                    {title: '标题', width: 592, align: 'center', templet: '#titleTpl'}
                    , {field: 'author', title: '作者', width: 80, align: 'center'}
                    , {field: 'content', title: '正文', hide: 'true'}
                    , {field: 'userid', title: '用户id', hide: 'true'}
                    , {field: 'count', title: '阅读量', width: 80, align: 'center'}
                    , {field: 'like', title: '点赞数', width: 80, align: 'center'}
                    , {field: 'date', title: '日期', width: 165, align: 'center'}
                ]]
            });
        });
    }
    //回复
    if (i == 4) {
        $.ajax({
            "url": elementById+'/news/Login',
            "type": 'post',
            success: function (data) {
                var myDate=new Date();
                if (data.total == 0) {
                    if (document.getElementById("text").value==null||document.getElementById("text").value==''){
                        layer.msg("不能回复空内容");
                    }else {
                        var data = {
                            "username":document.getElementById("username").value,
                            "newsid": document.getElementById("newsid").value,
                            "chapter": document.getElementById("chapter").value,
                            "content": document.getElementById("text").value,
                            "time":myDate.toLocaleString()
                        }
                        $.ajax({
                            "url": elementById+'/viewnews/insert',
                            "type": 'post',
                            data: data,
                            success: function (data1) {
                                console.log(data)
                                var orderInfoDiv = document.getElementById("desc1");
                                var orderInfoTpl1 = view.innerHTML;
                                laytpl(orderInfoTpl1).render(data, function (html) {
                                    orderInfoDiv.innerHTML += html;
                                })
                            },
                            error: function (data) {
                                layer.msg("请登陆");
                            }
                        });
                    }
                } else {
                    layer.msg("请先登陆，再回复吧客官");
                }
            },
        });
    }
    //搜索
    if (i == 5) {
        //重新渲染
        layui.use('table', function () {
            var table = layui.table;
            // 渲染帖子
            table.render({
                elem: '#demo'
                , url: elementById+'/news/selectLike' //数据接口
                , where: {"title": document.getElementById("select").value}
                , parseData: function (res) { //res 即为原始返回的数据
                    return {
                        "code": res.total, //解析接口状态
                        "msg": res.msg, //解析提示文本
                        "data": res.rows //解析数据列表
                    }
                },
                cols: [[ //表头
                    {title: '标题', width: 592, align: 'center', templet: '#titleTpl'}
                    , {field: 'author', title: '作者', width: 80, align: 'center'}
                    , {field: 'content', title: '正文', hide: 'true'}
                    , {field: 'userid', title: '用户id', hide: 'true'}
                    , {field: 'count', title: '阅读量', width: 80, align: 'center'}
                    , {field: 'like', title: '点赞数', width: 80, align: 'center'}
                    , {field: 'date', title: '日期', width: 165, align: 'center'}
                ]]
            });
        });
    }
    //提问,发帖
    if (i == 6||i==14) {
        var data=null;
        //隐藏表格
        document.getElementById("none").style.display = 'none';
        var orderInfoTpl = ask.innerHTML;
        var orderInfoDiv = document.getElementById("de");
        if (i==6){
            data={"i":15}
        }else {
            data={"i":16}
        }
        laytpl(orderInfoTpl).render(data, function (html) {
            orderInfoDiv.innerHTML = html
        });
    }
    if (i == 7) {
        var $ = layui.jquery;
        var data = {
            "type":document.getElementById("type").value,
            "title": document.getElementById("quetion").value,
            "content": document.getElementById("quetion1").value
        }
        $.ajax({
            url: elementById+'/news/insert',
            method: 'post',
            data: data,
            dataType: 'JSON',
            success: function (res) {
                if (res.total == 0) {
                    layer.msg("提问成功");
                    window.location.href='';
                } else {
                    layer.msg(res.msg);
                }
            },
            error: function (res) {
                layer.msg(res.msg);
            }
        });
    }
    //我的帖
    if (i == 13) {
        $.ajax({
            "url": elementById+'/news/Login',
            "type": 'post',
            success: function (data) {
                if (data.total == 0) {
                    layui.use('table', function () {
                        var table = layui.table;
                        // 渲染帖子
                        table.render({
                            elem: '#demo'
                            , url: elementById+'/news/selectMy' //数据接口
                            , parseData: function (res) { //res 即为原始返回的数据
                                return {
                                    "code": res.total, //解析接口状态
                                    "msg": res.msg, //解析提示文本
                                    "data": res.rows //解析数据列表
                                }
                            },
                            cols: [[ //表头
                                {title: '标题', width: 592, align: 'center', templet: '#titleTpl'}
                                , {field: 'author', title: '作者', width: 80, align: 'center'}
                                , {field: 'content', title: '正文', hide: 'true'}
                                , {field: 'userid', title: '用户id', hide: 'true'}
                                , {field: 'count', title: '阅读量', width: 80, align: 'center'}
                                , {field: 'like', title: '点赞数', width: 80, align: 'center'}
                                , {field: 'date', title: '日期', width: 165, align: 'center'}
                            ]]
                        });
                    });
                } else {
                    layer.msg("请先登陆，再使用该功能");
                }
            },
        });

    }
    //问答
    if (i == 8) {
        layui.use('table', function () {
            var table = layui.table;
            // 渲染帖子
            table.render({
                elem: '#demo'
                , url: elementById+'/news/selectAsk' //数据接口
                , parseData: function (res) { //res 即为原始返回的数据
                    return {
                        "code": res.total, //解析接口状态
                        "msg": res.msg, //解析提示文本
                        "data": res.rows //解析数据列表
                    }
                },
                cols: [[ //表头
                    {title: '标题', width: 592, align: 'center', templet: '#titleTpl'}
                    , {field: 'author', title: '作者', width: 80, align: 'center'}
                    , {field: 'content', title: '正文', hide: 'true'}
                    , {field: 'userid', title: '用户id', hide: 'true'}
                    , {field: 'count', title: '阅读量', width: 80, align: 'center'}
                    , {field: 'like', title: '点赞数', width: 80, align: 'center'}
                    , {field: 'date', title: '日期', width: 165, align: 'center'}
                ]]
            });
        });
    }
    //打赏
    if (i == 9) {
        $.ajax({
            "url": elementById+'/news/Login',
            "type": 'post',
            success: function (data) {
                if (data.total == 0) {
                    layer.open({
                        type: 1,
                        title: '打赏',
                        content: '<div style="padding: 20px 100px;">' +
                            '<label>*输入金额：</label>' +
                            '<input id="money" type="text" name="money" required lay-verify="username|required" placeholder="请输入金额" autocomplete="off" class="layui-input">' +
                            '</div>' +
                            '<div class="layui-form-item">\n' +
                            '    <div class="layui-input-block">\n' +
                            '      <a href="javascript:void(0)" onmousedown="abc(10)" class="layui-btn" lay-submit lay-filter="formDemo1">打赏</a>\n' +
                            '    </div>\n' +
                            '</div>',
                        shade: 0 //不显示遮罩
                    });
                } else {
                    layer.msg("请先登陆，再打赏吧客官");
                }
            },
        });
    }
    if (i == 10) {
        var data2 = {
            "money": document.getElementById("money").value,
            "userid": document.getElementById("userid").value
        };
        console.log(data2);
        $.ajax({
            "url": elementById+'/money/updateByPrimaryKey',
            "type": 'post',
            data:data2,
            success: function (data) {
                if (data.total == 0) {
                    alert("打赏成功")
                    //打赏记录
                    $.ajax({"url": elementById+'/rewardRecod/insert', "type": 'post', data:data.rows});
                    window.location.href='';
                } else {
                    layer.msg(data.msg)
                }
            }
        })
    }
    //举报
    if (i == 11) {
        data = {"newsid": document.getElementById("newsid").value}
        $.ajax({
            "url": elementById+'/news/updateByPrimaryKey',
            "type": 'post',
            data: data,
            success: function (data) {
                layer.msg("举报成功");
            }
        })
    }
    //点赞
    if (i == 12) {
        data = {"newsid": document.getElementById("newsid").value}
        console.log(document.getElementById("newsid").value)
        $.ajax({
            "url": elementById+'/news/updateByPrimaryKeySelective',
            "type": 'post',
            data: data,
            success: function (data) {
                document.getElementById("like").style.color = "#c62828";
            }
        })
    }
}

//举报用户评论
function bcd(i) {
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    data = {"viewnewsid": i}
    $.ajax({
        "url": elementById+'/viewnews/updateByPrimaryKey',
        "type": 'post',
        data: data,
        success: function (data) {
            layer.msg("举报成功");
        }
    })
}

function exit() {
    //   退出系统
    //获取当前地址
    var miss = document.getElementById("loginluder").value;
    location.href=miss+"/admin/index"
}