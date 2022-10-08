var laytpl = layui.laytpl
var $ =layui.jquery;
//渲染小说详情模板
function abc(bookid) {
    document.getElementById("bookchat").style.display='block';
    var star = "暂无章节信息";//初始化star，防止出错
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    $.ajax({
        url:elementById+'/book/selectByBookid',//这个ajax是获取最新章节信息的功能
        type:'post',
        data:{"bookid":bookid},
        success:function (data1) {
            if (data1 != null) {
                star = data1.rows;
                $.ajax({
                    url: elementById+'/book/selectByPrimaryKeybook',
                    type: 'post',
                    async:'false',
                    data: {"bookid": bookid},
                    success: function (data) {
                        if (data != null) {
                            data = { //数据
                                "bookid":data.rows[0].bookid,
                                "url": data.rows[0].url,
                                "name": data.rows[0].name,
                                "author": data.rows[0].author,
                                "type": data.rows[0].type,
                                "remark":data.rows[0].remark,
                                "star":star
                            }
                            document.getElementById("content").style.display="none";
                            var orderInfoTpl1 = orderInfoqqq.innerHTML;
                            var orderInfoDiv1 = document.getElementById("orderInfoabc");
                            laytpl(orderInfoTpl1).render(data, function(html) {
                                orderInfoDiv1.innerHTML = html;
                            });
                        //对目录进行操作
                            layui.use('table', function(){
                                var table = layui.table;
                                //渲染正文
                                table.render({
                                    elem: '#demo'
                                    ,id:'idTest'
                                    ,height: 312
                                    ,url: elementById+'/chapter/listallchapter?r=1' //数据接口
                                    ,where:{"bunding":"正文"}
                                    ,parseData: function(res){ //res 即为原始返回的数据
                                        return {
                                            "code": res.total, //解析接口状态
                                            "msg": res.msg, //解析提示文本
                                            "data": res.rows //解析数据列表
                                        }}
                                    , cols: [[ //表头
                                        {title: '相关章节',templet: '#timeTpl'},
                                        {field:'bunding',title: '类型',hide:true},
                                        {field:'bookid',title: 'bookid',hide:true},
                                        {field:'array',title: '序号',hide:true},
                                        {field:'modle',title: '发布模式',hide:true},
                                        {field:'time',title: '发布方式',hide:true},
                                    ]]
                                    ,error:function (data) {
                                        alert("错误");
                                    }
                                });
                                // 正文   行工具事件
                                table.on('row(test)', function(obj){
                                    var name = obj.data; //获得当前行数据
                                    $.ajax({
                                        "url":elementById+'/chapter/selectContent',
                                        "type":'post',
                                        async:false,
                                        data:name,
                                        success:function (data) {
                                            if (data.total==0){
                                                var orderInfoTpl1 = workreader.innerHTML;
                                                var orderInfoDiv1 = document.getElementById("orderInfoabc");
                                                laytpl(orderInfoTpl1).render(obj.data, function(html) {
                                                    orderInfoDiv1.innerHTML = html;
                                                });
                                                document.querySelector('textarea').value=data.rows[0].content;
                                                document.getElementById("chapter").value=obj.data.chapter;
                                            }
                                        },
                                        error:function (data) {
                                            alert(data.msg);
                                        }
                                    });
                                });
                            });
                        }else{
                            layer.msg("假")
                        }
                    },
                    error:function (res) {
                        layer.msg("失败了")
                    }
                })
            }
        }
    })
    var arrIcon = ['http://www.xttblog.com/wp-content/uploads/2016/03/123.png','http://www.xttblog.com/wp-content/uploads/2016/03/123.png'];
    var num = 0;     //控制头像改变
    var iNow = -1;    //用来累加改变左右浮动
    var btn = document.getElementById('btn1');
    var text = document.getElementById('text1');
    var content = document.getElementById('content1');
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
                url: elementById+'/chat/insert?r=2',
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
}
//渲染小说阅读模板
function bcd(i) {
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    var array=document.getElementById("last").value;
    var name={"array":array,"i":i};
    $.ajax({
        "url":elementById+'/chapter/selectContent',
        "type":'post',
        asycn:'false',
        data:name,
        success:function (data) {
            if (data.total==0){
                var orderInfoTpl1 = workreader.innerHTML;
                var orderInfoDiv1 = document.getElementById("orderInfoabc");
                laytpl(orderInfoTpl1).render(data.rows[0], function(html) {
                    orderInfoDiv1.innerHTML = html;
                });
                document.getElementById("chapter").value=data.rows[0].chapter;
                document.querySelector('textarea').value=data.rows[0].content;
                document.getElementById("desc").style.height=document.getElementById("desc").scrollHeight+'px';
                location.href="#top";
            }
            else {
                layer.msg(data.msg)
            }
        },
        error:function (data) {
            alert(data.msg);
        }
    })
    //加入书库
    if (i==4){
        $.ajax({
            "url": elementById+'/news/Login',
            "type": 'post',
            success: function (data) {
                if (data.total == 0) {
                    $.ajax({
                        "url": elementById+'/myhome/insert',
                        "type": 'post',
                        success: function (data) {
                            if (data.total==0){
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
layui.use(['laytpl'],function () {
    var laytpl=layui.laytpl;
    var a =layui.jquery;
    var orderInfoTpl1=orderInfo1.innerHTML;
    //获取当前地址
    var elementById = document.getElementById("loginluder").value;
    a.ajax({
        url:elementById+'/book/listallbook?i=1',	//这是后端接口的url
        method:'get',//为什么是get?
        success:function (data) {
            var orderInfoDiv=document.getElementById("orderInfoDiv1");
            laytpl(orderInfoTpl1).render(data,function (html) {
                orderInfoDiv.innerHTML=html;
            })
        },
    })
    a.ajax({
        url:elementById+'/book/listallbook?i=2',	//这是后端接口的url
        method:'get',//为什么是get?
        success:function (data) {
            var orderInfoDiv=document.getElementById("orderInfoDiv2");
            laytpl(orderInfoTpl1).render(data,function (html) {
                orderInfoDiv.innerHTML=html;
            })
        },
    })
    a.ajax({
        url:elementById+'/book/listallbook?i=3',	//这是后端接口的url
        method:'get',//为什么是get?
        success:function (data) {
            var orderInfoDiv=document.getElementById("orderInfoDiv3");
            laytpl(orderInfoTpl1).render(data,function (html) {
                orderInfoDiv.innerHTML=html;
            })
        },
    })
    a.ajax({
        url:elementById+'/book/listallbook?i=4',	//这是后端接口的url
        method:'get',//为什么是get?
        success:function (data) {
            var orderInfoDiv=document.getElementById("orderInfoDiv4");
            laytpl(orderInfoTpl1).render(data,function (html) {
                orderInfoDiv.innerHTML=html;
            })
        },
    })
    a.ajax({
        url:elementById+'/book/listallbook?i=5',	//这是后端接口的url
        method:'get',//为什么是get?
        success:function (data) {
            var orderInfoDiv=document.getElementById("orderInfoDiv5");
            laytpl(orderInfoTpl1).render(data,function (html) {
                orderInfoDiv.innerHTML=html;
            })
        },
    })
    a.ajax({
        url:elementById+'/book/listallbook?i=6',	//这是后端接口的url
        method:'get',//为什么是get?
        success:function (data) {
            var orderInfoDiv=document.getElementById("orderInfoDiv6");
            laytpl(orderInfoTpl1).render(data,function (html) {
                orderInfoDiv.innerHTML=html;
            })
        },
    })
});
//轮播图
layui.use('carousel', function(){
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
        elem: '#test1'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always' //始终显示箭头
        //,anim: 'updown' //切换动画方式
    });
});
layui.use('carousel', function(){
    var carousel = layui.carousel;
    //建造实例
    carousel.render({
        elem: '#test2'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always' //始终显示箭头
        //,anim: 'updown' //切换动画方式
    });
});
// 退出登陆
function exit() {
    //   退出系统
    //获取当前地址
    var miss = document.getElementById("loginluder").value;
    location.href=miss+"/admin/exit"
}

