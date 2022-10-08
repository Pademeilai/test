var laytpl = layui.laytpl
var $ = layui.jquery;

//渲染小说详情模板
function abc(bookid) {
    var star = "暂无章节信息";//初始化star，防止出错
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    $.ajax({
        url: elementById + '/book/selectByBookid',//这个ajax是获取最新章节信息的功能
        type: 'post',
        data: {"bookid": bookid},
        success: function (data1) {
            if (data1 != null) {
                star = data1.rows;
                $.ajax({
                    url: elementById + '/book/selectByPrimaryKeybook',
                    type: 'post',
                    async: 'false',
                    data: {"bookid": bookid},
                    success: function (data) {
                        if (data != null) {
                            data = { //数据
                                "bookid": data.rows[0].bookid,
                                "url": data.rows[0].url,
                                "name": data.rows[0].name,
                                "author": data.rows[0].author,
                                "type": data.rows[0].type,
                                "remark": data.rows[0].remark,
                                "star": star
                            }
                            document.getElementById("content").style.display = "none";
                            var orderInfoTpl1 = orderInfoqqq.innerHTML;
                            var orderInfoDiv1 = document.getElementById("orderInfoabc");
                            laytpl(orderInfoTpl1).render(data, function (html) {
                                orderInfoDiv1.innerHTML = html;
                            });
                            //对目录进行操作
                            layui.use('table', function () {
                                var table = layui.table;
                                //渲染正文
                                table.render({
                                    elem: '#demo'
                                    , id: 'idTest'
                                    , height: 312
                                    , url: elementById + '/chapter/listallchapter?r=1' //数据接口
                                    , where: {"bunding": "正文"}
                                    , parseData: function (res) { //res 即为原始返回的数据
                                        return {
                                            "code": res.total, //解析接口状态
                                            "msg": res.msg, //解析提示文本
                                            "data": res.rows //解析数据列表
                                        }
                                    }
                                    , cols: [[ //表头
                                        {title: '相关章节', templet: '#timeTpl'},
                                        {field: 'bunding', title: '类型', hide: true},
                                        {field: 'bookid', title: 'bookid', hide: true},
                                        {field: 'array', title: '序号', hide: true},
                                        {field: 'modle', title: '发布模式', hide: true},
                                        {field: 'time', title: '发布方式', hide: true},
                                    ]]
                                    , error: function (data) {
                                        alert("错误");
                                    }
                                });
                                // 正文   行工具事件
                                table.on('row(test)', function (obj) {
                                    var name = obj.data; //获得当前行数据
                                    $.ajax({
                                        "url": elementById + '/chapter/selectContent',
                                        "type": 'post',
                                        async: false,
                                        data: name,
                                        success: function (data) {
                                            if (data.total == 0) {
                                                var orderInfoTpl1 = workreader.innerHTML;
                                                var orderInfoDiv1 = document.getElementById("orderInfoabc");
                                                laytpl(orderInfoTpl1).render(obj.data, function (html) {
                                                    orderInfoDiv1.innerHTML = html;
                                                });
                                                document.querySelector('textarea').value = data.rows[0].content;
                                                document.getElementById("chapter").value = obj.data.chapter;
                                            }
                                        },
                                        error: function (data) {
                                            alert(data.msg);
                                        }
                                    });
                                });
                            });
                        } else {
                            layer.msg("假")
                        }
                    },
                    error: function (res) {
                        layer.msg("失败了")
                    }
                })
            }
        }
    })
}

//渲染小说阅读模板
function bcd(i) {
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    var array = document.getElementById("last").value;
    var name = {"array": array, "i": i};
    $.ajax({
        "url": elementById + '/chapter/selectContent',
        "type": 'post',
        asycn: 'false',
        data: name,
        success: function (data) {
            if (data.total == 0) {
                var orderInfoTpl1 = workreader.innerHTML;
                var orderInfoDiv1 = document.getElementById("orderInfoabc");
                laytpl(orderInfoTpl1).render(data.rows[0], function (html) {
                    orderInfoDiv1.innerHTML = html;
                });
                document.getElementById("chapter").value = data.rows[0].chapter;
                document.querySelector('textarea').value = data.rows[0].content;
            }
        },
        error: function (data) {
            alert(data.msg);
        }
    })
    //加入书库
    if (i == 4) {
        $.ajax({
            "url": elementById + '/news/Login',
            "type": 'post',
            success: function (data) {
                if (data.total == 0) {
                    $.ajax({
                        "url": elementById + '/myhome/insert',
                        "type": 'post',
                        success: function (data) {
                            if (data.total == 0) {
                                layer.msg("加入书库成功")
                            }
                        },
                        error: function (data) {
                            layer.msg("请登陆");
                        }
                    });
                } else {
                    layer.msg("请先登陆，再加入书库吧客官");
                }
            },
        });
    }
}

//初始化榜单
layui.use(['laytpl'], function () {
    var laytpl = layui.laytpl;
    var a = layui.jquery;
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    a.ajax({
        url: elementById + '/myhome/selectByPrimaryKey',
        method: 'get',//为什么是get?
        success: function (data1) {
            console.log(data1);
            if (data1.total == 0) {
                var orderInfoDiv1 = document.getElementById("orderInfoDiv1");
                for (var i = 0 in data1.rows) {
                    var data = { //数据
                        "bookid": data1.rows[i].bookid,
                        "url": data1.rows[i].url,
                        "name": data1.rows[i].bookname,
                    }
                    var orderInfoTpl1 = orderInfo1.innerHTML;
                    laytpl(orderInfoTpl1).render(data, function (html) {
                        if (i == 0) {
                            orderInfoDiv1.innerHTML = html;
                        } else {
                            orderInfoDiv1.innerHTML += html;
                        }
                    })
                }
            } else {
                console.log(data1.total);
                var orderInfoDiv1 = document.getElementById("orderInfoDiv1");
                var orderInfoTpl1 = orderInfod.innerHTML;
                laytpl(orderInfoTpl1).render(123, function (html) {
                        orderInfoDiv1.innerHTML = html;
                })
            }
        },
    })
});