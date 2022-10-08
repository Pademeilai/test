<%--
  Created by IntelliJ IDEA.
  User: 吴光清
  Date: 2022/4/24
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小说中心</title>
    <link rel="stylesheet" href="../css/book.css">
    <link rel="stylesheet" href="../css/layui/css/layui.css">
</head>
<body>
<%--头部--%>
<div class="layui-fluid" style="background: #393D49">
    <div class="layui-container">
        <ul class="layui-nav">
            <li class="layui-nav-item">
                <i class="layui-icon layui-icon-share">论坛+新创作官网</i>
            </li>
            <li class="layui-nav-item">
                <a href="">首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/author/author?r=1">书库</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/news">新闻</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/author/author">创作者专区</a>
            </li>
            <li class="layui-nav-item">
                <a href="${pageContext.request.contextPath}/admin/book">小说中心</a>
            </li>
            <li class="layui-nav-item" style="float: right">
                <input id="loginluder" type="hidden" value="${pageContext.request.contextPath}">
                <div class="layui-btn-container" id="layerDemo">
                    <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">登陆</button>
                </div>
            </li>
        </ul>
    </div>
</div>
<div id="wrapper">
    <div class="nav">
        <ul>
            <li><a href="">首页</a></li>
            <li><a rel="nofollow" href="">我的书架</a></li>
            <li><a href="">玄幻小说</a></li>
            <li><a href="">修真小说</a></li>
            <li><a href="">都市小说</a></li>
            <li><a href="">穿越小说</a></li>
            <li><a href="">网游小说</a></li>
            <li><a href="">科幻小说</a></li>
            <li><a href="">军事小说</a></li>
            <li><a href="">言情小说</a></li>
        </ul>
    </div>
    <div id="main">
        <div id="hotcontent">
            <div class="r">
                <h2> </h2>
                <ul>
                    <li><span class="s1">[游戏]</span><span class="s2"><a href="/book/126946/">亏成首富从游戏开始</a></span><span class="s5">青衫取醉</span></li> <li><span class="s1">[科幻]</span><span class="s2"><a href="/book/126699/">圣光</a></span><span class="s5">通吃道人</span></li> <li><span class="s1">[仙侠]</span><span class="s2"><a href="/book/126561/">我师兄实在太稳健了</a></span><span class="s5">言归正传</span></li> <li><span class="s1">[都市]</span><span class="s2"><a href="/book/125531/">天降我才必有用</a></span><span class="s5">石章鱼</span></li> <li><span class="s1">[都市]</span><span class="s2"><a href="/book/117581/">第一序列</a></span><span class="s5">会说话的肘子</span></li> <li><span class="s1">[轻小说]</span><span class="s2"><a href="/book/129418/">平平无奇大师兄</a></span><span class="s5">黑夜弥天</span></li> <li><span class="s1">[都市]</span><span class="s2"><a href="/book/125667/">当医生开了外挂</a></span><span class="s5">手握寸关尺</span></li> <li><span class="s1">[历史]</span><span class="s2"><a href="/book/129536/">数风流人物</a></span><span class="s5">瑞根</span></li>
                </ul>
            </div>
            <div class="l">
                <div class="item">
                    <div class="image"><a href="/book/52542/"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL3FpZGlhbi5xcGljLmNuL3FkYmltZy8zNDk1NzMvMTAwNDYwODczOC8xODA=" alt="圣墟"  width="120" height="150" /></a></div>
                    <dl>
                        <dt><span>辰东</span><a href="/book/52542/">圣墟</a></dt>
                        <dd>在破败中崛起，在寂灭中复苏。沧海成尘，雷电枯竭，那一缕幽雾又一次临近大地，世间的枷锁被打开了，一个全新的世界就此揭开神秘的一角……</dd>
                    </dl>
                    <div class="clear"></div>
                </div>
                <div class="item">
                    <div class="image"><a href="/book/130510/"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL2Jvb2tjb3Zlci55dWV3ZW4uY29tL3FkYmltZy8zNDk1NzMvMTAxNzY5NDU5MS8xODA=" alt="超品命师"  width="120" height="150" /></a></div>
                    <dl>
                        <dt><span>九灯和善</span><a href="/book/130510/">超品命师</a></dt>
                        <dd>一命二运三风水，四积阴德五读书，六名七相八敬神，九交贵人十养生！命字当先，此为先天之命，不可更改。此后，读书、行善积德、广交良友，谓之改命。命有轻重，但无贵贱...</dd>
                    </dl>
                    <div class="clear"></div>
                </div>
                <div class="item">
                    <div class="image"><a href="/book/38857/"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL3FpZGlhbi5xcGljLmNuL3FkYmltZy8zNDk1NzMvMTAwMzM1NDYzMS8xODA=" alt="一念永恒"  width="120" height="150" /></a></div>
                    <dl>
                        <dt><span>耳根</span><a href="/book/38857/">一念永恒</a></dt>
                        <dd>一念成沧海，一念化桑田。一念斩千魔，一念诛万仙。唯我念……永恒</dd>
                    </dl>
                    <div class="clear"></div>
                </div>
                <div class="item">
                    <div class="image"><a href="/book/42714/"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL3FpZGlhbi5xcGljLmNuL3FkYmltZy8zNDk1NzMvMTAwMzMwNzU2OC8xODA=" alt="不朽凡人"  width="120" height="150" /></a></div>
                    <dl>
                        <dt><span>鹅是老五</span><a href="/book/42714/">不朽凡人</a></dt>
                        <dd>我，只有凡根，一介凡人！我，叫莫无忌！我，要不朽！</dd>
                    </dl>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="novelslist">


            <div class="content ">
                <h2>玄幻小说</h2>
                <div class="top">
                    <div class="image"><img src="http://r.m.ibiqu.net/files/article/image/0/7/7s.jpg" alt="大主宰"  width="67" height="82" /></div>
                    <dl><dt><a href="/book/7/">大主宰</a></dt><dd>其实接下来的新书，在斗破完结时便已经是有了构想，只不过却并未立即开始写，因为那个世界太过的宏伟浩大...</dd></dl>
                    <div class="clear"></div></div>
                <ul>
                    <li><a href="/book/2157/">太古神王</a>/净无痕</li><li><a href="/book/52542/">圣墟</a>/辰东</li><li><a href="/book/111/">武炼巅峰</a>/莫默</li><li><a href="/book/2379/">人道至尊</a>/宅猪</li><li><a href="/book/1003/">修罗武神</a>/善良的蜜蜂</li><li><a href="/book/76490/">牧神记</a>/宅猪</li><li><a href="/book/53897/">超级神基因</a>/十二翼黑暗炽天使</li><li><a href="/book/916/">帝霸</a>/厌笔萧生</li><li><a href="/book/49/">儒道至圣</a>/永恒之火</li><li><a href="/book/2599/">全职法师</a>/乱(书坊)</li><li><a href="/book/5405/">真武世界</a>/蚕茧里的牛</li><li><a href="/book/23934/">龙王传说</a>/唐家三少</li>
                </ul>
            </div>


            <div class="content ">
                <h2>修真小说</h2>
                <div class="top">
                    <div class="image"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL3FpZGlhbi5xcGljLmNuL3FkYmltZy8zNDk1NzMvMTAwMzY5NDMzMy8xODA=" alt="斗战狂潮"  width="67" height="82" /></div>
                    <dl><dt><a href="/book/46254/">斗战狂潮</a></dt><dd>双月当空，无限可能的英魂世界孤寂黑暗，神秘古怪的嬉命小丑百城联邦，三大帝国，异族横行，魂兽霸幽这是...</dd></dl>
                    <div class="clear"></div></div>
                <ul>
                    <li><a href="/book/2247/">掠天记</a>/黑山老鬼</li><li><a href="/book/42714/">不朽凡人</a>/鹅是老五</li><li><a href="/book/50537/">最强装逼打脸系统</a>/太上布衣</li><li><a href="/book/2650/">九仙图</a>/秋晨</li><li><a href="/book/38857/">一念永恒</a>/耳根</li><li><a href="/book/57491/">道君</a>/跃千愁</li><li><a href="/book/3114/">申公豹传承</a>/第九天命</li><li><a href="/book/784/">仙路至尊</a>/睡秋</li><li><a href="/book/1043/">死人经</a>/冰临神下</li><li><a href="/book/2381/">盖世仙尊</a>/王小蛮</li><li><a href="/book/468/">修仙狂徒</a>/王小蛮</li><li><a href="/book/4/">造化之门</a>/鹅是老五</li>
                </ul>
            </div>


            <div class="content border">
                <h2>都市小说</h2>
                <div class="top">
                    <div class="image"><img src="http://r.m.ibiqu.net/files/article/image/0/195/195s.jpg" alt="超品相师"  width="67" height="82" /></div>
                    <dl><dt><a href="/book/195/">超品相师</a></dt><dd>相师分九品，一品一重天风水有境界，明理，养气，修身，问道。二十一世纪的一位普通青年偶获诸葛亮生前的...</dd></dl>
                    <div class="clear"></div></div>
                <ul>
                    <li><a href="/book/79067/">大王饶命</a>/会说话的肘子</li><li><a href="/book/51253/">透视小医神</a>/小萌狼</li><li><a href="/book/41858/">我的绝色美女房客</a>/炒酸奶</li><li><a href="/book/14032/">神藏</a>/打眼</li><li><a href="/book/76934/">我的姐姐是大明星</a>/卖报小郎君</li><li><a href="/book/38/">校花的贴身高手</a>/鱼人二代</li><li><a href="/book/53081/">都市超级医圣</a>/断桥残雪</li><li><a href="/book/1562/">医鼎</a>/茗夜</li><li><a href="/book/36956/">一号红人</a>/山间老寺</li><li><a href="/book/27006/">护花狂龙</a>/青狐妖</li><li><a href="/book/32745/">重生完美时代</a>/公子不歌</li><li><a href="/book/1192/">极品透视</a>/赤焰圣歌</li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="novelslist">


            <div class="content ">
                <h2>穿越小说</h2>
                <div class="top">
                    <div class="image"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL3FpZGlhbi5xcGljLmNuL3FkYmltZy8zNDk1NzMvMTAwNDE3NTgwNC8xODA=" alt="逍遥小书生"  width="67" height="82" /></div>
                    <dl><dt><a href="/book/54278/">逍遥小书生</a></dt><dd>21世纪工科男，穿越古代成为一名穷书生。大脑里面居然装着一个图书馆，各种知识应有尽有！这辈子不说封侯...</dd></dl>
                    <div class="clear"></div></div>
                <ul>
                    <li><a href="/book/917/">神话版三国</a>/坟土荒草</li><li><a href="/book/52924/">带着仓库到大明</a>/迪巴拉爵士</li><li><a href="/book/62668/">唐砖</a>/孑与2</li><li><a href="/book/1502/">三国之召唤猛将</a>/青铜剑客</li><li><a href="/book/78387/">汉乡</a>/孑与2</li><li><a href="/book/105/">赘婿</a>/愤怒的香蕉</li><li><a href="/book/56851/">民国之文豪崛起</a>/王梓钧</li><li><a href="/book/50026/">钢铁皇朝</a>/背着家的蜗牛</li><li><a href="/book/401/">大官人</a>/三戒大师</li><li><a href="/book/61/">大宋的智慧</a>/孑与2</li><li><a href="/book/840/">唐砖</a>/孑与2</li><li><a href="/book/2081/">贞观大闲人</a>/贼眉鼠眼</li>
                </ul>
            </div>


            <div class="content ">
                <h2>网游小说</h2>
                <div class="top">
                    <div class="image"><img src="http://r.m.ibiqu.net/cover/aHR0cDovL2ltZzEud3JpdGUucXEuY29tL3VwbG9hZC9jb3Zlci8yMDE2LTAyLTA0LzU2YjMwODY4YzViMTcuanBn" alt="英雄联盟之七百年后"  width="67" height="82" /></div>
                    <dl><dt><a href="/book/33681/">英雄联盟之七百年后</a></dt><dd>叶澈死了，又复活了。【真攻略+英雄神体+血脉+奥义真谛】有点不知所谓，但事实上，他从s7赛季决赛的那天...</dd></dl>
                    <div class="clear"></div></div>
                <ul>
                    <li><a href="/book/1224/">深渊主宰</a>/诸生浮屠</li><li><a href="/book/3/">神级英雄</a>/大烟缸</li><li><a href="/book/53977/">超级卡牌系统</a>/黑乎乎的老妖</li><li><a href="/book/108/">惊悚乐园</a>/三天两觉</li><li><a href="/book/49922/">大盗贼</a>/泛舟填词</li><li><a href="/book/568/">英雄联盟之谁与争锋</a>/乱</li><li><a href="/book/2603/">重生之最强剑神</a>/天运老猫</li><li><a href="/book/76215/">超神机械师</a>/齐佩甲</li><li><a href="/book/67291/">网游之奴役众神</a>/一夜狂醉</li><li><a href="/book/3372/">猎艳江湖</a>/天地23</li><li><a href="/book/77509/">逍遥梦路</a>/文抄公</li><li><a href="/book/2291/">网游之逆天戒指</a>/上古圣贤</li>
                </ul>
            </div>


            <div class="content border">
                <h2>科幻小说</h2>
                <div class="top">
                    <div class="image"><img src="http://r.m.ibiqu.net/files/article/image/0/799/799s.jpg" alt="异常生物见闻录"  width="67" height="82" /></div>
                    <dl><dt><a href="/book/799/">异常生物见闻录</a></dt><dd>郝仁，人如其名，是个好人，理想是平平安安过一辈子，当个穷不死但也发不了财的小房东——起码在他家里住...</dd></dl>
                    <div class="clear"></div></div>
                <ul>
                    <li><a href="/book/57891/">末世之全能大师</a>/秦小词</li><li><a href="/book/76229/">电影的世界</a>/有梦之人</li><li><a href="/book/2244/">修真四万年</a>/卧牛真人</li><li><a href="/book/47940/">两界搬运工</a>/石闻</li><li><a href="/book/21412/">末日轮盘</a>/幻动</li><li><a href="/book/4778/">最终救赎</a>/诸生浮屠</li><li><a href="/book/42092/">史上最强店主</a>/南极烈日</li><li><a href="/book/6/">星战风暴</a>/骷髅精灵</li><li><a href="/book/3431/">武侠世界大穿越</a>/我叫排云掌</li><li><a href="/book/78884/">史上最强狗熊系统</a>/七乐</li><li><a href="/book/81174/">系统的黑科技网吧</a>/逆水之叶</li><li><a href="/book/3153/">我在末世有套房</a>/晨星LL</li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>

        <div id="newscontent">
            <div class="l">
                <h2>最近更新小说列表</h2>
                <ul>
                    <li><span class="s1">[神话修真]</span><span class="s2"><a href="/book/153046/" target="_blank">从道兵开始修行</a></span><span class="s3"><a href="/book/153046/182623827.htm" target="_blank">第二百四十五章 布置阵法</a></span><span class="s4">乌泥</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[高武世界]</span><span class="s2"><a href="/book/150936/" target="_blank">星门</a></span><span class="s3"><a href="/book/150936/182623826.htm" target="_blank">第579章 风雨欲来（求订阅月票）</a></span><span class="s4">老鹰吃小鸡</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[神话修真]</span><span class="s2"><a href="/book/155529/" target="_blank">人道永昌</a></span><span class="s3"><a href="/book/155529/182623828.htm" target="_blank">第一百九十六章 途经</a></span><span class="s4">小楼听风云</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[东方玄幻]</span><span class="s2"><a href="/book/158476/" target="_blank">遮天之魔</a></span><span class="s3"><a href="/book/158476/182621549.htm" target="_blank">第一百七十章 挟天皇子以令神将</a></span><span class="s4">男儿到死心如铁</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[衍生同人]</span><span class="s2"><a href="/book/153454/" target="_blank">奈欧斯的奇幻漂流</a></span><span class="s3"><a href="/book/153454/182623898.htm" target="_blank">第四百八十七章 巨人之间的对视（一更）</a></span><span class="s4">梦入炎方</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[娱乐明星]</span><span class="s2"><a href="/book/159416/" target="_blank">相声：台上无大小，台下立新坟</a></span><span class="s3"><a href="/book/159416/182611752.htm" target="_blank">第85章 这算是缘分么？【求订阅】</a></span><span class="s4">夜星猫</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[超级科技]</span><span class="s2"><a href="/book/156876/" target="_blank">身为法师的我只想追求真理</a></span><span class="s3"><a href="/book/156876/182623814.htm" target="_blank">第二百一十章 定价</a></span><span class="s4">乌鸦一号</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[衍生同人]</span><span class="s2"><a href="/book/157639/" target="_blank">从忍者到大名</a></span><span class="s3"><a href="/book/157639/182623815.htm" target="_blank">第二百三十九章：信与坐标蜗牛</a></span><span class="s4">辛老板</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[两晋隋唐]</span><span class="s2"><a href="/book/133576/" target="_blank">带着系统来大唐</a></span><span class="s3"><a href="/book/133576/182623572.htm" target="_blank">第两千六百八十七章 几地运动俱阳谋（第三更）</a></span><span class="s4">农家一锅出</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[两晋隋唐]</span><span class="s2"><a href="/book/154452/" target="_blank">李治你别怂</a></span><span class="s3"><a href="/book/154452/182623349.htm" target="_blank">第三百三十章 嘴贱与手贱</a></span><span class="s4">贼眉鼠眼</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[衍生同人]</span><span class="s2"><a href="/book/156759/" target="_blank">开局带宇智波逃亡航海</a></span><span class="s3"><a href="/book/156759/182623806.htm" target="_blank">第三百一十五章 大筒木一族的族纹</a></span><span class="s4">真皮李糕熟</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[衍生同人]</span><span class="s2"><a href="/book/157677/" target="_blank">忍界神话：最强砂隐</a></span><span class="s3"><a href="/book/157677/182623807.htm" target="_blank">第两百二十章 木叶覆灭（六）</a></span><span class="s4">萳阳村夫</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[奇幻玄幻]</span><span class="s2"><a href="/book/159244/" target="_blank">太古仙尊</a></span><span class="s3"><a href="/book/159244/182624091.htm" target="_blank">第四百三十二章 商会</a></span><span class="s4">褚天之下</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[未来世界]</span><span class="s2"><a href="/book/155317/" target="_blank">全宇宙最后一个人类</a></span><span class="s3"><a href="/book/155317/182623810.htm" target="_blank">第二百一十一章 天堂</a></span><span class="s4">彩虹之门</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[武侠仙侠]</span><span class="s2"><a href="/book/155945/" target="_blank">炮灰之王</a></span><span class="s3"><a href="/book/155945/182623808.htm" target="_blank">第六百一十九章 炸山</a></span><span class="s4">北风微凉</span><span class="s5">04-24</span></li>


                    <li><span class="s1">[衍生同人]</span><span class="s2"><a href="/book/159445/" target="_blank">四合院：傻柱变成葛朗柱</a></span><span class="s3"><a href="/book/159445/182621296.htm" target="_blank">第九十九章 图书馆教学</a></span><span class="s4">白月光地上霜</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[两宋元明]</span><span class="s2"><a href="/book/147473/" target="_blank">回到明朝做仁君</a></span><span class="s3"><a href="/book/147473/182623797.htm" target="_blank">第一零一零章 分割权力</a></span><span class="s4">纣胄</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[秦汉三国]</span><span class="s2"><a href="/book/158864/" target="_blank">我家阳台通三国</a></span><span class="s3"><a href="/book/158864/182623798.htm" target="_blank">第一零六章：凶名远扬</a></span><span class="s4">橘猫囡囡</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[都市异能]</span><span class="s2"><a href="/book/154041/" target="_blank">全球首富：从收到70亿个红包开始</a></span><span class="s3"><a href="/book/154041/182623804.htm" target="_blank">665章 传授，布局！</a></span><span class="s4">大爱豆瓣</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[原生幻想]</span><span class="s2"><a href="/book/159663/" target="_blank">你根本不是巫女</a></span><span class="s3"><a href="/book/159663/182624009.htm" target="_blank">上架感言</a></span><span class="s4">全是珈百璃</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[都市生活]</span><span class="s2"><a href="/book/159088/" target="_blank">医生的人生模拟器</a></span><span class="s3"><a href="/book/159088/182623786.htm" target="_blank">第一百零四章 院例会在即，又立大功了（求订阅）</a></span><span class="s4">不务正爷</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[奇幻玄幻]</span><span class="s2"><a href="/book/138786/" target="_blank">界起通天</a></span><span class="s3"><a href="/book/138786/182623796.htm" target="_blank">第1018章女娲族东皇钟的传说</a></span><span class="s4">雨过天可晴</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[婚恋情缘]</span><span class="s2"><a href="/book/159015/" target="_blank">超时空暗恋</a></span><span class="s3"><a href="/book/159015/182623929.htm" target="_blank">第三十九章在一起在一起</a></span><span class="s4">白箩染</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[修真文明]</span><span class="s2"><a href="/book/155511/" target="_blank">武侠：从鹿鼎记开始长生</a></span><span class="s3"><a href="/book/155511/182623864.htm" target="_blank">第四百七十六章 圣心四劫</a></span><span class="s4">宇文鹰语</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[商战职场]</span><span class="s2"><a href="/book/132143/" target="_blank">重生香江之大亨成长</a></span><span class="s3"><a href="/book/132143/182623785.htm" target="_blank">第一千四百二十五章 潜艇计划</a></span><span class="s4">安安的生活</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[时空穿梭]</span><span class="s2"><a href="/book/123508/" target="_blank">诸天万界之大拯救</a></span><span class="s3"><a href="/book/123508/182623783.htm" target="_blank">第二十九章 烦人的聚会</a></span><span class="s4">放羊小星星</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[高武世界]</span><span class="s2"><a href="/book/153650/" target="_blank">只想稳健的我被挂机成了武神</a></span><span class="s3"><a href="/book/153650/182623868.htm" target="_blank">第二百八十五章 首战</a></span><span class="s4">咸鱼指挥使</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[都市生活]</span><span class="s2"><a href="/book/138560/" target="_blank">人到中年</a></span><span class="s3"><a href="/book/138560/182623770.htm" target="_blank">第两千两百二十章 应该怎么做？</a></span><span class="s4">火烧风</span><span class="s5">04-24</span></li>

                    <li><span class="s1">[古典仙侠]</span><span class="s2"><a href="/book/150275/" target="_blank">长生从金刚寺开始</a></span><span class="s3"><a href="/book/150275/182623773.htm" target="_blank">第908章 折服（二更）</a></span><span class="s4">萧舒</span><span class="s5">04-24</span></li>
                </ul>
            </div>
            <div class="r">
                <h2>最新入库小说</h2>
                <ul>
                    <li><span class="s1">[轻小说]</span><span class="s2"><a href="/book/159663/">你根本不是巫女</a></span><span class="s5">全是珈百璃</span></li>

                    <li><span class="s1">[游戏]</span><span class="s2"><a href="/book/159662/">天道基因库</a></span><span class="s5">半两余年</span></li>

                    <li><span class="s1">[都市]</span><span class="s2"><a href="/book/159661/">夜来不彷徨</a></span><span class="s5">猫头鹰爆炒一切</span></li>

                    <li><span class="s1">[仙侠]</span><span class="s2"><a href="/book/159660/">大荒起剑人</a></span><span class="s5">恨水北流</span></li>

                    <li><span class="s1">[科幻]</span><span class="s2"><a href="/book/159659/">豹豹我呀？大概是废了</a></span><span class="s5">天黑别走路</span></li>

                    <li><span class="s1">[都市]</span><span class="s2"><a href="/book/159658/">道士养兔</a></span><span class="s5">软硬天师</span></li>

                    <li><span class="s1">[科幻]</span><span class="s2"><a href="/book/159657/">超凡双体</a></span><span class="s5">双体</span></li>

                    <li><span class="s1">[玄幻]</span><span class="s2"><a href="/book/159656/">这女频男主，我必不可能当</a></span><span class="s5">有今</span></li>

                    <li><span class="s1">[玄幻]</span><span class="s2"><a href="/book/159655/">风水学徒十年出道即天师</a></span><span class="s5">九曲懒仙c</span></li>

                    <li><span class="s1">[仙侠]</span><span class="s2"><a href="/book/159654/">驭龙剑仙</a></span><span class="s5">暴雨暖阳</span></li>

                    <li><span class="s1">[悬疑]</span><span class="s2"><a href="/book/159653/">深渊专列</a></span><span class="s5">狐夫</span></li>

                    <li><span class="s1">[科幻]</span><span class="s2"><a href="/book/159652/">潜渊症候群</a></span><span class="s5">防晒霜涂抹大师</span></li>

                    <li><span class="s1">[历史]</span><span class="s2"><a href="/book/159651/">靖安侯</a></span><span class="s5">漫客1</span></li>

                    <li><span class="s1">[科幻]</span><span class="s2"><a href="/book/159650/">我在废土时代当领主</a></span><span class="s5">卖猫补仓</span></li>

                    <li><span class="s1">[仙侠]</span><span class="s2"><a href="/book/159649/">诡异修仙模拟器</a></span><span class="s5">硬吃小鸡</span></li>

                    <li><span class="s1">[游戏]</span><span class="s2"><a href="/book/159648/">网游：命运尘埃</a></span><span class="s5">当时明月在尘埃</span></li>

                    <li><span class="s1">[玄幻]</span><span class="s2"><a href="/book/159647/">传世之神</a></span><span class="s5">执笔画蓝天</span></li>

                    <li><span class="s1">[都市]</span><span class="s2"><a href="/book/159646/">医流狂婿</a></span><span class="s5">染墨点苍生</span></li>

                    <li><span class="s1">[游戏]</span><span class="s2"><a href="/book/159645/">联盟之捡破烂滴神</a></span><span class="s5">弱三千</span></li>

                    <li><span class="s1">[轻小说]</span><span class="s2"><a href="/book/159644/">斩神高手带仙妻去屠龙</a></span><span class="s5">一刀流猪猪侠</span></li>

                    <li><span class="s1">[玄幻]</span><span class="s2"><a href="/book/159643/">诸界第一仙</a></span><span class="s5">长安归处</span></li>

                    <li><span class="s1">[历史]</span><span class="s2"><a href="/book/159642/">明末辽东从军行</a></span><span class="s5">辽鹰</span></li>

                    <li><span class="s1">[科幻]</span><span class="s2"><a href="/book/159641/">重组半神基因</a></span><span class="s5">未来灵魂</span></li>

                    <li><span class="s1">[诸天无限]</span><span class="s2"><a href="/book/159640/">某美漫的氪星人</a></span><span class="s5">难道我是超人</span></li>

                    <li><span class="s1">[历史]</span><span class="s2"><a href="/book/159639/">大明小萌打工仔</a></span><span class="s5">我与彩虹肩并肩</span></li>

                    <li><span class="s1">[仙侠]</span><span class="s2"><a href="/book/159638/">最后一个混元圣人</a></span><span class="s5">一念成魔0</span></li>

                    <li><span class="s1">[游戏]</span><span class="s2"><a href="/book/159637/">倾国之巅峰一剑</a></span><span class="s5">在下顾奈</span></li>

                    <li><span class="s1">[轻小说]</span><span class="s2"><a href="/book/159636/">我明明没想当领主啊</a></span><span class="s5">很萌很好吃</span></li>

                    <li><span class="s1">[仙侠]</span><span class="s2"><a href="/book/159635/">大宣天监司</a></span><span class="s5">江南不在</span></li>

                    <li><span class="s1">[诸天无限]</span><span class="s2"><a href="/book/159634/">从行尸走肉开始的雷神</a></span><span class="s5">归海封尘</span></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="footer">
        <div id="orderInfoabc" class="layui-container">
        </div>
        <div class="layui-container" style="text-align: center;">
            河池学院@2021大创项目
        </div>
    </div>
    <script type="text/javascript">
        var params = {
            "XOffset":0, //提示框位置横向偏移量,单位px
            "YOffset":0, //提示框位置纵向偏移量,单位px
            "width":204, //提示框宽度，单位px
            "fontColor":"#000", //提示框文字颜色
            "fontColorHI":"#FFF",	//提示框高亮选择时文字颜色
            "fontSize":"14px",		//文字大小
            "fontFamily":"宋体",	//文字字体
            "borderColor":"gray", 	//提示框的边框颜色
            "bgcolorHI":"#03c",		//提示框高亮选择的颜色
            "sugSubmit":false		//在选择提示词条是是否提交表单
        };
    </script>
</div>
</body>
</html>
