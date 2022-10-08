function initadmin(i) {
    var laytpl = layui.laytpl
    var table = layui.table;
    var $ = layui.jquery;
    var miss = document.getElementById("miss").value;
    var orderInfoDiv1 = document.getElementById("orderInfoDiv1");
    if (i == "a") {
        //渲染用户列表
        table.render({
            elem: '#demo'
            , id: 'idTest'
            , page: true
            , toolbar: '#toolbarDemo'
            , url: miss + '/user/listall?r=2' //数据接口
            , parseData: function (res) { //res 即为原始返回的数据
                return {
                    "code": res.total, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "data": res.rows //解析数据列表
                }
            }
            , cols: [[ //表头
                {field: 'a', type: 'numbers'}
                , {field: 'aa', type: 'checkbox'}
                , {field: 'userid', align: 'center', title: '用户id'}
                , {field: 'username', align: 'center', title: '用户名'}
                , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                , {field: 'permission', align: 'center', title: '账户状态', templet: '#titleTpl1'}
                , {field: '', title: '操作', toolbar: "#barDemo"}
            ]]
            , error: function (data) {
                alert("错误");
            }
        });
    } else if (i == "b" || i == "d") {
        layui.use('table', function () {
            if (i == "b") {
                orderInfoDiv1.innerHTML = "<table id='demo' lay-filter='test'></table>";
                //渲染用户列表
                table.render({
                    elem: '#demo'
                    , id: 'idTest'
                    , page: true
                    , toolbar: '#toolbarDemo'
                    , url: miss + '/user/listall' //数据接口
                    , parseData: function (res) { //res 即为原始返回的数据
                        return {
                            "code": res.total, //解析接口状态
                            "msg": res.msg, //解析提示文本
                            "data": res.rows //解析数据列表
                        }
                    }
                    , cols: [[ //表头
                        {field: 'a', type: 'numbers'}
                        , {field: 'aa', type: 'checkbox'}
                        , {field: 'userid', align: 'center', title: '用户id'}
                        , {field: 'username', align: 'center', title: '用户名'}
                        , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                        , {field: 'permission', align: 'center', title: '账户状态', templet: '#titleTpl1'}
                        , {field: '', title: '操作', toolbar: "#barDemo"}
                    ]]
                    , error: function (data) {
                        alert("错误");
                    }
                });
            } else if (i == "d") {
                $.ajax({
                    url: miss + '/book/selectBookTime',
                    type: 'post',
                    success: function (data1) {
                        if (data1 != null) {
                            for (var i = 0 in data1.rows) {
                                $.ajax({
                                    url: miss + '/book/selectByBookid',//这个ajax是获取最新章节信息的功能
                                    type: 'post',
                                    async: false,
                                    data: {"bookid": data1.rows[i].bookid},//恒等于1,后续开发待解决(4/2已解决)
                                    success: function (data2) {
                                        if (data2 != null) {
                                            star = data2.rows;
                                        }
                                    }
                                });
                                data = { //数据
                                    "bookid": data1.rows[i].bookid,
                                    "url": data1.rows[i].url,
                                    "name": data1.rows[i].name,
                                    "author": data1.rows[i].author,
                                    "type": data1.rows[i].type,
                                    "remark": data1.rows[i].remark,
                                    "star": star
                                }
                                var orderInfoTpl1 = orderInfo.innerHTML;
                                laytpl(orderInfoTpl1).render(data, function (html) {
                                    if (i == 0) {
                                        orderInfoDiv1.innerHTML = html;
                                    } else {
                                        orderInfoDiv1.innerHTML += html;
                                    }

                                })
                            }
                        } else {
                            layer.msg("假")
                        }
                    },
                    error: function (res) {
                        layer.msg("失败了")
                    }
                })
            }
        });
    } else if (i == "c") {//违规用户处理
        //渲染用户列表
        table.render({
            elem: '#demo'
            , id: 'idTest'
            , page: true
            , toolbar: '#toolbarDemo'
            , url: miss + '/user/listall?r=3' //数据接口
            , parseData: function (res) { //res 即为原始返回的数据
                return {
                    "code": res.total, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "data": res.rows //解析数据列表
                }
            }
            , cols: [[ //表头
                {field: 'a', type: 'numbers'}
                , {field: 'aa', type: 'checkbox'}
                , {field: 'userid', align: 'center', title: '用户id'}
                , {field: 'username', align: 'center', title: '用户名'}
                , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                , {field: 'permission', align: 'center', title: '账户状态', templet: '#titleTpl1'}
                , {field: '', title: '操作', toolbar: "#barDemo"}
            ]]
            , error: function (data) {
                alert("错误");
            }
        });
    } else if (i == "e") {//违规评论
        table.render({
            elem: '#demo'
            , id: 'idTest'
            , page: true
            , toolbar: '#toolbarDemo'
            , url: miss + '/viewnews/selectall' //数据接口
            , parseData: function (res) { //res 即为原始返回的数据
                return {
                    "code": res.total, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "data": res.rows //解析数据列表
                }
            }
            , cols: [[ //表头
                {field: 'a', type: 'numbers'}
                , {field: 'aa', type: 'checkbox'}
                , {field: 'username', align: 'center', title: '用户名'}
                , {field: 'viewnewsid', hide: 'true'}
                , {field: 'titel', align: 'center', title: '帖子标题'}
                , {field: 'content', align: 'center', title: '评论内容'}
                , {field: '', title: '操作', toolbar: "#barDemo1"}
            ]]
            , error: function (data) {
                alert("错误");
            }
        });
    } else if (i == "g") {//个人中心
        location.href = miss + "/admin/information"
    } else if (i == "h") {
        //   退出系统
        location.href = miss + "/admin/index"
    }
    //触发事件
    table.on('toolbar(test)', function (obj) {
        switch (obj.event) {
            case 'add':
                console.log(document.getElementById("select").value);
                layer.msg('添加');
                table.render({
                    elem: '#demo'
                    , id: 'idTest'
                    , page: true
                    , toolbar: '#toolbarDemo'
                    , url: miss + '/user/selectByPrimaryKey?r=1' //数据接口
                    , where: {"username": document.getElementById("select").value}
                    , parseData: function (res) { //res 即为原始返回的数据
                        for (var i = 0; i < res.rows.length; i++) {
                            res.rows[i] = JSON.parse(res.rows[i]);
                        }
                        return {
                            "code": 0, //解析接口状态
                            "msg": res.msg, //解析提示文本
                            "data": res.rows //解析数据列表
                        }
                    }
                    , cols: [[ //表头
                        {field: 'a', type: 'numbers'}
                        , {field: 'aa', type: 'checkbox'}
                        , {field: 'userid', align: 'center', title: '用户id'}
                        , {field: 'username', align: 'center', title: '用户名'}
                        , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                        , {field: 'permission', align: 'center', title: '账户状态', templet: '#titleTpl1'}
                        , {field: '', title: '操作', toolbar: "#barDemo"}
                    ]]
                    , error: function (data) {
                        alert("错误");
                    }
                });
                break;
            case 'delete':
                alert(JSON.stringify(checkStatus.data));
                layer.msg('删除');
                break;
            case 'update':
                alert(JSON.stringify(checkStatus.data));
                layer.msg('编辑');
                break;
        }
        ;
    });
    //工具条事件
    table.on('tool(test)', function (obj) {
        var data = obj.data; //获得当前行数据
        var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
        // 封号与解封
        if (layEvent === 'del') {
            //封号
            console.log(data);
            if (data.permission == 1) {
                $.ajax({
                    url: miss + '/user/updateByPrimaryKey?r=0',
                    data: data,
                    success: function (data) {
                        if (data.total == 0) {
                            alert("封号成功")
                            table.render({
                                elem: '#demo'
                                , id: 'idTest'
                                , page: true
                                , toolbar: '#toolbarDemo'
                                , url: miss + '/user/listall' //数据接口
                                , parseData: function (res) { //res 即为原始返回的数据
                                    return {
                                        "code": res.total, //解析接口状态
                                        "msg": res.msg, //解析提示文本
                                        "data": res.rows //解析数据列表
                                    }
                                }
                                , cols: [[ //表头
                                    {field: 'a', type: 'numbers'}
                                    , {field: 'aa', type: 'checkbox'}
                                    , {field: 'userid', align: 'center', title: '用户id'}
                                    , {field: 'username', align: 'center', title: '用户名'}
                                    , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                                    , {
                                        field: 'permission',
                                        align: 'center',
                                        title: '账户状态',
                                        templet: '#titleTpl1'
                                    }
                                    , {field: '', title: '操作', toolbar: "#barDemo"}
                                ]]
                                , error: function (data) {
                                    alert("错误");
                                }
                            });
                        }
                    }
                })
            } else if (data.permission == 2) {
                $.ajax({
                    url: miss + '/user/updateByPrimaryKey?r=1',
                    data: data,
                    success: function (data) {
                        if (data.total == 0) {
                            alert("解封成功")
                            var d = null;
                            if (i == "c") {
                                d = 3;
                            } else {
                                d = 1;
                            }
                            table.render({
                                elem: '#demo'
                                , id: 'idTest'
                                , page: true
                                , toolbar: '#toolbarDemo'
                                , url: miss + '/user/listall?r=' + d //数据接口
                                , parseData: function (res) { //res 即为原始返回的数据
                                    return {
                                        "code": res.total, //解析接口状态
                                        "msg": res.msg, //解析提示文本
                                        "data": res.rows //解析数据列表
                                    }
                                }
                                , cols: [[ //表头
                                    {field: 'a', type: 'numbers'}
                                    , {field: 'aa', type: 'checkbox'}
                                    , {field: 'userid', align: 'center', title: '用户id'}
                                    , {field: 'username', align: 'center', title: '用户名'}
                                    , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                                    , {
                                        field: 'permission',
                                        align: 'center',
                                        title: '账户状态',
                                        templet: '#titleTpl1'
                                    }
                                    , {field: '', title: '操作', toolbar: "#barDemo"}
                                ]]
                                , error: function (data) {
                                    alert("错误");
                                }
                            });
                        }
                    }
                })
            }
        }
        //任命管理员
        if (layEvent === 'tt') {
            var d = null;
            $.ajax({
                url: miss + '/user/updateByPrimaryKey?r=4',
                data: data,
                success: function (data) {
                    if (data.total == 0 || data.total == 2) {
                        if (data.total == 0) {
                            if (i == "a") {
                                d = 2;
                            }
                            if (i == "b") {
                                d = 1;
                            }
                            alert("任命成功");
                        } else {
                            d = 1;
                            alert("解除任命成功");
                        }
                        table.render({
                            elem: '#demo'
                            , id: 'idTest'
                            , page: true
                            , toolbar: '#toolbarDemo'
                            , url: miss + '/user/listall?r=' + d //数据接口
                            , parseData: function (res) { //res 即为原始返回的数据
                                return {
                                    "code": res.total, //解析接口状态
                                    "msg": res.msg, //解析提示文本
                                    "data": res.rows //解析数据列表
                                }
                            }
                            , cols: [[ //表头
                                {field: 'a', type: 'numbers'}
                                , {field: 'aa', type: 'checkbox'}
                                , {field: 'userid', align: 'center', title: '用户id'}
                                , {field: 'username', align: 'center', title: '用户名'}
                                , {field: 'type', align: 'center', title: '用户类型', templet: '#titleTpl'}
                                , {
                                    field: 'permission',
                                    align: 'center',
                                    title: '账户状态',
                                    templet: '#titleTpl1'
                                }
                                , {field: '', title: '操作', toolbar: "#barDemo"}
                            ]]
                            , error: function (data) {
                                alert("错误");
                            }
                        });
                    } else {
                        alert("解除管理员成功");
                    }
                }
            })
        }
        //删除违规评论
        if (layEvent === 'delview') {
            $.ajax({
                url: miss + '/viewnews/del',
                data: data,
                success: function (data) {
                    if (data.total == 0) {
                        table.render({
                            elem: '#demo'
                            , id: 'idTest'
                            , page: true
                            , toolbar: '#toolbarDemo'
                            , url: miss + '/viewnews/selectall' //数据接口
                            , parseData: function (res) { //res 即为原始返回的数据
                                return {
                                    "code": res.total, //解析接口状态
                                    "msg": res.msg, //解析提示文本
                                    "data": res.rows //解析数据列表
                                }
                            }
                            , cols: [[ //表头
                                {field: 'a', type: 'numbers'}
                                , {field: 'aa', type: 'checkbox'}
                                , {field: 'username', align: 'center', title: '用户名'}
                                , {field: 'viewnewsid', hide: 'true'}
                                , {field: 'titel', align: 'center', title: '帖子标题'}
                                , {field: 'content', align: 'center', title: '评论内容'}
                                , {field: '', title: '操作', toolbar: "#barDemo1"}
                            ]]
                            , error: function (data) {
                                alert("错误");
                            }
                        });
                    } else {
                        alert("删除评论失败");
                    }
                }
            })
        }
    });
}