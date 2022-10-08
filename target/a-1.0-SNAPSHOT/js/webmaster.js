function initadmin(i) {
    var title = document.getElementById("title");
    var type = document.getElementById("type");
    var desc = document.getElementById("desc");
    var star = "暂无章节信息";//第一次创建新书时使用初始化的star,后面star通过ajax获得
    var data = {};
    layui.use(['laytpl'], function() {
        var laytpl = layui.laytpl
        var $ = layui.jquery;

        // 点击书籍信息列表事件
        if (i==1){
            $.ajax({
                url: $("#pageContext").val() + '/book/selectByPrimaryKeybook?r=1',
                type: 'post',
                success: function (data1) {
                    var orderInfoDiv1 = document.getElementById("orderInfoDiv1");
                    if (data1 != null) {
                        for (var i=0 in data1.rows){
                            $.ajax({
                                url:$("#pageContext").val() + '/book/selectByBookid',//这个ajax是获取最新章节信息的功能
                                type:'post',
                                async: false,
                                data:{"bookid":data1.rows[i].bookid},//恒等于1,后续开发待解决(4/2已解决)
                                success:function (data2) {
                                    if (data2!=null){
                                        star=data2.rows;
                                    }
                                }
                            });
                            data = { //数据
                                "bookid":data1.rows[i].bookid,
                                "url": data1.rows[i].url,
                                "name": data1.rows[i].name,
                                "author": data1.rows[i].author,
                                "type": data1.rows[i].type,
                                "remark":data1.rows[i].remark,
                                "star":star
                            }
                            var orderInfoTpl1 = orderInfo.innerHTML;
                            laytpl(orderInfoTpl1).render(data, function(html) {
                                if (i==0){
                                    orderInfoDiv1.innerHTML = html;
                                }else {
                                    orderInfoDiv1.innerHTML += html;
                                }

                            })
                        }
                    }else{
                        layer.msg("假")
                    }
                },
                error:function (res) {
                    layer.msg("失败了")
                }
            })
        }
        // 第一次创建新书
        // 作家第一次进行“添加新书”操作时前端必须传作品参数过来才能使用下面的ajax请求后端，不然data为空写入数据库失败！
        if (i==2){
            // 前端没有数据的情况data不报错，但异常,无显示
            data = { //数据
                "url": "https://www.bbiquge.net/files/article/image/133/133310/133310s.jpg",
                "name": title.value,
                "author": sessionStorage.getItem("name"),
                "type": type.value,
                "remark":desc.value
                ,"star":star
            };
            $.ajax({
                url: $("#pageContext").val()+'/book/insert',
                method: 'post',
                data: data,
                dataType: 'JSON',
                success: function (res) {
                    if (res = "1") {
                        var orderInfoTpl1 = orderInfo.innerHTML;
                        var orderInfoDiv1 = document.getElementById("orderInfoDiv1");
                        laytpl(orderInfoTpl1).render(data, function(html) {
                            orderInfoDiv1.innerHTML = html;
                        })
                    } else
                    // 防止模板无法弹出
                        layer.msg("创建成功");
                },
                error: function (data) {
                    layer.msg("404");
                }
            });
        }
        //查看共享书籍
        if (i==3){
            $.ajax({
                url: $("#pageContext").val() + '/book/selectByshare',
                type: 'post',
                success: function (data1) {
                    var orderInfoDiv1 = document.getElementById("orderInfoDiv1");
                    if (data1 != null) {
                        for (var i=0 in data1.rows){
                            $.ajax({
                                url:$("#pageContext").val() + '/book/selectByBookid',//这个ajax是获取最新章节信息的功能
                                type:'post',
                                async: false,
                                data:{"bookid":data1.rows[i].bookid},//恒等于1,后续开发待解决(4/2已解决)
                                success:function (data2) {
                                    if (data2!=null){
                                        star=data2.rows;
                                    }
                                }
                            });
                            data = { //数据
                                "bookid":data1.rows[i].bookid,
                                "url": data1.rows[i].url,
                                "name": data1.rows[i].name,
                                "author": data1.rows[i].author,
                                "type": data1.rows[i].type,
                                "remark":data1.rows[i].remark,
                                "star":star
                            }
                            var orderInfoTpl1 = orderInfoshare.innerHTML;
                            laytpl(orderInfoTpl1).render(data, function(html) {
                                if (i==0){
                                    orderInfoDiv1.innerHTML = html;
                                }else {
                                    orderInfoDiv1.innerHTML += html;
                                }

                            })
                        }
                    }else{
                        layer.msg("假")
                    }
                },
                error:function (res) {
                    layer.msg("失败了")
                }
            })
        }

    });
    // 上传封面
    layui.use('upload', function() {
        var upload = layui.upload;
        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            ,
            url: '/upload/' //上传接口
            ,
            done: function(res) {
                //上传完毕回调
            },
            error: function() {
                //请求异常回调
            }
        });
    });
}