!function (o) {
function e(e) {
    for (var t, a, n = e[0], s = e[1], r = e[2], l = 0, c = []; l < n.length; l++) a = n[l], Object.prototype.hasOwnProperty.call(u, a) && u[a] && c.push(u[a][0]), u[a] = 0;
    for (t in s) Object.prototype.hasOwnProperty.call(s, t) && (o[t] = s[t]);
    for (p && p(e); c.length;) c.shift()();
    return m.push.apply(m, r || []), i()
}

function i() {
    for (var e, t = 0; t < m.length; t++) {
        for (var a = m[t], n = !0, s = 1; s < a.length; s++) {
            var r = a[s];
            0 !== u[r] && (n = !1)
        }
        n && (m.splice(t--, 1), e = l(l.s = a[0]))
    }
    return e
}

var a = {}, u = {0: 0}, m = [];

function l(e) {
    if (a[e]) return a[e].exports;
    var t = a[e] = {i: e, l: !1, exports: {}};
    return o[e].call(t.exports, t, t.exports, l), t.l = !0, t.exports
}

l.m = o, l.c = a, l.d = function (e, t, a) {
    l.o(e, t) || Object.defineProperty(e, t, {enumerable: !0, get: a})
}, l.r = function (e) {
    "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {value: "Module"}), Object.defineProperty(e, "__esModule", {value: !0})
}, l.t = function (t, e) {
    if (1 & e && (t = l(t)), 8 & e) return t;
    if (4 & e && "object" == typeof t && t && t.__esModule) return t;
    var a = Object.create(null);
    if (l.r(a), Object.defineProperty(a, "default", {
        enumerable: !0,
        value: t
    }), 2 & e && "string" != typeof t) for (var n in t) l.d(a, n, function (e) {
        return t[e]
    }.bind(null, n));
    return a
}, l.n = function (e) {
    var t = e && e.__esModule ? function () {
        return e.default
    } : function () {
        return e
    };
    return l.d(t, "a", t), t
}, l.o = function (e, t) {
    return Object.prototype.hasOwnProperty.call(e, t)
}, l.p = "/";
var t = (n = window.webpackJsonp = window.webpackJsonp || []).push.bind(n);
n.push = e;
for (var n = n.slice(), s = 0; s < n.length; s++) e(n[s]);
var p = t;
m.push([13, 1]), i()
}([, function (e, r, t) {
"use strict";
!function (o) {
    function a(e, t) {
        return (a = Object.setPrototypeOf || function (e, t) {
            return e.__proto__ = t, e
        })(e, t)
    }

    t = o.Component, n = t, (e = s).prototype = Object.create(n.prototype), a(e.prototype.constructor = e, n), (e = s.prototype).componentWillReceiveProps = function (e) {
        e = e.data;
        this.data = e, this.total = Math.ceil(e.length / this.row)
    }, e.paging = function (e) {
        var t = this.state.current, e = "-" === e ? t - 1 : t + 1;
        e < 1 || (e > this.total ? this.total : this.setState({current: e}))
    }, e.render = function () {
        var e = this.state.current, t = this.props, a = t.makeTr, n = t.children, s = t.className, t = t.hidePage,
            r = this.total, l = this.data, c = (e - 1) * this.row, l = l.slice(c, 10 + c).map(a);
        return o.createElement("div", {className: "rank-table J_ranktbl " + s}, o.createElement("table", null, o.createElement("thead", null, n), o.createElement("tbody", null, l)), t ? "" : o.createElement("div", {className: "page-btn-box"}, o.createElement("a", {
            href: "javascript:;",
            onClick: this.paging.bind(this, "-"),
            className: "page-btn prev " + (1 === e ? "disable" : "")
        }), o.createElement("span", {className: "page-num"}, o.createElement("span", {className: "current"}, e), "/", r), o.createElement("a", {
            href: "javascript:;",
            onClick: this.paging.bind(this, "+"),
            className: "page-btn next " + (e === r ? "disable" : "")
        })))
    };
    var t, e, n = s;

    function s(e) {
        return (e = t.call(this, e) || this).row = e.props.row || 10, e.data = e.props.data, e.total = Math.ceil(e.data.length / e.row), e.state = {current: 1}, e.paging.bind(function (e) {
            if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
            return e
        }(e)), e
    }

    r.a = n
}.call(this, t(0))
}, , , function (e, m, p) {
"use strict";
!function (a) {
    var n = p(5);

    function s(e, t) {
        return (s = Object.setPrototypeOf || function (e, t) {
            return e.__proto__ = t, e
        })(e, t)
    }

    function r() {
        return a.createElement("div", {className: "right-eachbox clear-fix"}, a.createElement("div", {className: "user-box"}, a.createElement("div", {className: "user-unlogin-box"}, a.createElement("span", {className: "login-pic"}), a.createElement("a", {
            className: "login-link J_loginRedirect",
            href: "javascript:;",
            title: "登录"
        }, "登录"), a.createElement("a", {className: "zhuce-link", href: "/register/index", title: "注册"}, "注册"))))
    }

    $(document).on("click", ".J_wagesJC", function (e) {
        e.preventDefault();
        var n = $(this);
        n.text("计算中"), n.request({
            url: "/fun/mall/interaction",
            type: "post",
            data: {jxy_parameter: JSON.stringify({fun: "get_jcwages", c: "ApiPrize"})},
            success: function (e) {
                n.text("娱乐工资");
                var t, a = "";
                0 < e.jcWagesData.all ? 1 == e.jcWagesData.ready ? t = '<div class="wages-box"><p class="all-wages">你已经成功领取娱乐工资</p><a class="wages-link" href="/news/details/25368/" target="_blank">了解娱乐工资>></a>' + (a = '<a class="wages-btn J_closeCommonFc" href="#">确定</a>') + "</div>" : 2 != e.jcWagesData.ready && (a = '<a class="wages-btn J_receiceWages" href="#">立即领取</a>', t = '<div class="wages-box"><p class="all-wages">恭喜你，昨日总工资为<strong>' + stringUtils.stringBitSeperator(e.jcWagesData.all) + '</strong><span class="udou"></span></p><a class="wages-link" href="/news/details/25368/" target="_blank">了解娱乐工资>></a>' + a + "</div>") : t = '<div class="wages-box"><p class="all-wages">很遗憾，您昨日未获得娱乐工资</p><a class="wages-link" href="/news/details/25368/" target="_blank">了解娱乐工资>></a>' + (a = '<a class="wages-btn J_closeCommonFc" href="#">确定</a>') + "</div>", fcShow({
                    type: 2,
                    conHtml: t
                })
            },
            error: function (e) {
                n.text("娱乐工资"), fcShow(e.msg)
            }
        })
    }), $(document).on("click", ".J_receiceWages", function (e) {
        e.preventDefault(), $(this).request({
            url: "/fun/mall/interaction",
            type: "post",
            data: {jxy_parameter: JSON.stringify({fun: "wages_result", c: "ApiPrize"})},
            success: function (e) {
                var t = '<p class="ts-text J_fcText">你已经成功领取娱乐工资<span class="color-red">' + stringUtils.stringBitSeperator(e.num) + '</span><span class="udou"></span></p><div class="fuceng-btn-box clear-fix"><a class="fuceng-btn fuceng-btn-qd J_closeCommonFc" href="#" title="">确认</a></div>';
                0 < +e.keyType ? fcShow("温馨提示", t, !0, keyOrBoxFcShow, {keyType: e.keyType}) : fcShow("温馨提示", t, !0)
            },
            error: function (e) {
                fcShow("温馨提示", e.msg, !1)
            }
        })
    }), $(document).on("click", ".J_jiujidou", function (e) {
        e.preventDefault();
        var t = $(this);
        t.text("领取中"), t.request({
            url: "/fun/play/interaction",
            type: "post",
            data: {jxy_parameter: JSON.stringify({fun: "dou_relief", c: "Quiz"})},
            success: function (e) {
                e = '<p class="ts-text J_fcText">你已经成功领取救济豆<span class="color-red">' + stringUtils.stringBitSeperator(e.num) + '</span><span class="udou"></span></p><div class="fuceng-btn-box clear-fix"><a class="fuceng-btn fuceng-btn-qd J_closeCommonFc" href="#" title="">确认</a></div>';
                fcShow("温馨提示", e, !0), t.text("救济豆")
            },
            error: function (e) {
                10006 === e.code ? fcShow("温馨提示", '<p class="ts-text J_fcText" style="margin-bottom: 16px">您未达到领取要求哦！<span class="color-red"><p class="ts-text J_fcText" style="text-align: left; padding-left: 100px; color:#999">领取救济豆条件：<span class="color-red"><p class="ts-text J_fcText" style="text-align: left; padding-left: 100px; color:#999">1.至少提现过1次   <a class="wages-link" style="color:#999" href="/personal/CashApply" target="_blank">去提现</a><span class="color-red"><p class="ts-text J_fcText" style="text-align: left; padding-left: 100px; color:#999">2.账户T豆余额为0（含存款箱内T豆）<span class="color-red"><div class="fuceng-btn-box clear-fix"><a class="fuceng-btn fuceng-btn-qd J_closeCommonFc" href="#" title="">确认</a></div>', !0) : fcShow("温馨提示", e.msg, !1), t.text("救济豆")
            }
        })
    }), $("body").on("click", ".J_udouCard", function (e) {
        e.preventDefault(), fcShow("使用T豆卡", '<p class="ts-text udou-card err"></p><p class="ts-text udou-card">卡号： <input type="text" class="J_account"></p><p class="ts-text udou-card">密码： <input type="password" class="J_pwd"></p><div class="fc-btn-box"><a href="#" class="btn-sure J_getUdou">确定</a></div>', !0)
    }), $("body").on("click", ".J_getUdou", function (e) {
        e.preventDefault();
        var a = $(this), e = a.parents(".fuceng-con").find(".J_account").val(),
            t = a.parents(".fuceng-con").find(".J_pwd").val();
        if ("" == e || "" == t) return a.parents(".fuceng-con").find(".err").text("账号密码不能为空"), !1;
        a.request({
            url: "/fun/mall/interaction",
            type: "post",
            data: {jxy_parameter: JSON.stringify({fun: "ucard_commit", c: "LuckDraw", freecaNum: e, freecaPwd: t})},
            success: function (e) {
                $(".black-cover").hide(), $(".common-fuceng-box").hide();
                e = '<p class="ts-text">恭喜您，获得<span class="yellow">' + stringUtils.stringBitSeperator(e.udou) + '</span><span class="udou"></span></p><div class="fc-btn-box"><a href="#" class="btn-sure J_closeCommonFc">确认</a></div>';
                fcShow("温馨提示", e, !0)
            },
            error: function (e) {
                var t;
                10002 === e.code ? ($(".black-cover").hide(), $(".common-fuceng-box").hide(), t = '<p class="ts-text">' + e.msg + '</p><div class="fc-btn-box"><a href="#" class="btn-cancel J_closeCommonFc">好的</a><a href="#" class="btn-sure J_udouCard">换一张</a></div>', fcShow("温馨提示", t, !0)) : a.parents(".fuceng-con").find(".err").text(e.msg)
            }
        })
    }), window.pageData && "18760069" == window.pageData.userinfo.user_id && /crazy28\/index/.test(window.location.pathname) && $("body").request({
        url: "/fun/mall/interaction",
        type: "post",
        data: {jxy_parameter: JSON.stringify({c: "ApiPrize", fun: "get_salary_combo"})},
        success: function (e) {
            e = '<div class="wages-box"><p class="all-wages">恭喜你，昨日总工资为<strong>' + stringUtils.stringBitSeperator(e.salary) + '</strong><span class="udou"></span></p><a class="wages-link" href="/news/details/14365/" target="_blank">了解娱乐工资>></a><a class="wages-btn J_receiceWages" href="#">立即领取</a></div>';
            fcShow({title: "温馨提示", conHtml: e, type: 2})
        }
    });
    var t, e, l = window.params, c = l.channel, o = (l.items, window.pageData.userinfo),
        i = {c: "vip", fun: "cardSkill", url: "/vip/interaction"},
        l = (t = a.Component, l = t, (e = u).prototype = Object.create(l.prototype), s(e.prototype.constructor = e, l), (e = u.prototype).getRainbowCardData = function (e) {
            var a = this, t = e.c, n = e.fun, e = e.url;
            $("body").request({
                url: e,
                type: "post",
                data: {jxy_parameter: JSON.stringify({c: t, fun: n})},
                success: function (e) {
                    e.phoenix, e.dragon;
                    var t = e.rainbow, e = e.nebula;
                    t && t.countstr && (t.countstr = t.countstr.slice(0, t.countstr.length - 3), a.setState({rainbowInfo: t})), e && e.countstr && (e.countstr = e.countstr.slice(0, e.countstr.length - 3), a.setState({nebulaInfo: e}))
                },
                error: function (e) {
                    fcShow(e.msg)
                }
            })
        }, e.componentDidMount = function () {
            this.getRainbowCardData(i)
        }, e.render = function () {
            var e = this.state, t = e.rainbowInfo, e = e.nebulaInfo;
            return 1e4 !== o.code ? a.createElement(r, null) : a.createElement("div", {className: "add-box"}, a.createElement("div", {className: "right-eachbox clear-fix"}, a.createElement("div", {className: "login-info clear-fix"}, a.createElement(n.a, o), a.createElement("a", {
                className: "info-btn mar-l7",
                href: "/fun/mall",
                target: "_blank"
            }, a.createElement("s", {className: "left-pic pic-01"}), "超值抢购"), a.createElement("a", {
                className: "info-btn mar-l7",
                href: "/act/jxy-special",
                target: "_blank"
            }, a.createElement("s", {className: "left-pic pic-03"}), "移动娱乐")), a.createElement("div", {className: "game-class clear-fix"}, a.createElement("p", {className: "user-udou"}, "当前T豆：", a.createElement("span", {
                className: "J_udou",
                "data-udou": o.user_udou
            }, stringUtils.stringBitSeperator(o.user_udou)), a.createElement("i", {className: "udou"})), o.act_img ? a.createElement("a", {
                className: "act-img",
                href: "/act/trycard",
                target: "_blank"
            }, a.createElement("img", {
                src: "http://img.ttz.com/common/activity/trycard/" + o.act_img + ".gif",
                width: "59",
                height: "64"
            })) : "", a.createElement("div", {className: "game-box clear-fix"}, a.createElement("a", {
                href: "javascript:;",
                className: "game-a game01 J_wagesJC"
            }, "娱乐工资"), a.createElement("a", {
                href: "javascript:;",
                className: "game-a game02 J_jiujidou"
            }, "救济豆"), a.createElement("a", {
                href: "javascript:;",
                className: "game-a game03 J_udouCard"
            }, "T豆体验卡"), a.createElement("a", {
                href: "/personal/Prize",
                className: "game-a game04"
            }, "奖品记录")))), 0 !== t.state ? a.createElement("div", {className: "import-skill-area"}, a.createElement("span", {className: "is-gap"}, "飞虹卡特技倒计时", a.createElement("span", {className: "is-red"}, t.countstr)), 1 === t.state ? a.createElement("span", {className: "is-gap"}, "已参与", a.createElement("span", {className: "is-red"}, t.bet), "期") : a.createElement("span", {className: "is-gap"}, "已完成")) : "", 0 !== e.state ? a.createElement("div", {className: "import-skill-area"}, a.createElement("span", {className: "is-gap"}, "星云卡特技倒计时", a.createElement("span", {className: "is-red"}, e.countstr)), 1 === e.state ? a.createElement("br", null) : "", 1 === e.state ? a.createElement("span", {className: "is-gap"}, "当前净盈利", a.createElement("span", {className: "is-red"}, stringUtils.stringBitSeperator(e.profit)), a.createElement("i", {className: "udou"})) : a.createElement("span", {className: "is-gap"}, "奖励已发放")) : "", "zst" !== c ? a.createElement("div", {className: "import-ts"}, a.createElement("p", null, "[ 重要提醒 ]“娱乐大厅”中的游戏仅供团团钻"), a.createElement("p", null, "用户休闲娱乐，抵制一切利用游戏的赌博活动！")) : "")
        }, u);

    function u(e) {
        return (e = t.call(this, e) || this).state = {
            rainbowInfo: {
                bet: 0,
                countdown: 0,
                countstr: "00:00:00",
                state: 0
            }, nebulaInfo: {profit: 0, countdown: 0, countstr: "00:00:00", state: 0}
        }, e
    }

    m.a = l
}.call(this, p(0))
}, function (e, t, a) {
"use strict";
var n = a(0), l = a.n(n);
t.a = function (e) {
    var t = e.user_img, a = e.user_name, n = e.vipList, s = e.user_id, r = e.frame, e = e.font,
        n = n.map(function (e, t) {
            return l.a.createElement("i", {key: t, className: "vip-card " + e})
        });
    return l.a.createElement("div", {className: "common-userinfo-box"}, l.a.createElement("img", {
        src: t,
        alt: "",
        className: "common-userinfo-box__avatar"
    }), r ? l.a.createElement("a", {className: "pendant is-" + r}) : null, l.a.createElement("div", {className: "common-userinfo-box__text " + (6 < n.length ? "is-breakline" : "")}, l.a.createElement("p", {className: "username-p"}, l.a.createElement("span", {className: "username-text"}, a), l.a.createElement("span", {className: "username-font-style style-" + e}), 5 < a.length ? l.a.createElement("span", {className: "square-icon"}) : null), l.a.createElement("p", {className: "gray"}, "ID：", s), l.a.createElement("p", {className: "common-userinfo-box__vip"}, n)))
}
}, function (e, h, g) {
"use strict";
!function (r) {
    var a = g(1), n = g(7);

    function t(e) {
        if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
        return e
    }

    function e(e, t) {
        e.prototype = Object.create(t.prototype), s(e.prototype.constructor = e, t)
    }

    function s(e, t) {
        return (s = Object.setPrototypeOf || function (e, t) {
            return e.__proto__ = t, e
        })(e, t)
    }

    function l(e) {
        var t = e.selectDay, e = e.isShow, a = (s = window.pageData.getUserQuizRankInfo).myTotalWin,
            n = s.myrankList, s = s.mywindouList;
        return e ? r.createElement("div", {id: "mydayinfo"}, r.createElement("div", {className: "aboutme"}, r.createElement("p", null, i[t - 1], "游戏净盈利：", r.createElement("span", {className: "color-udou"}, stringUtils.stringBitSeperator(s[t - 1]), r.createElement("i", {className: "udou"}))), r.createElement("p", null, i[t - 1], "游戏累计盈利：", r.createElement("span", {className: "color-udou"}, stringUtils.stringBitSeperator(a[t - 1]), r.createElement("i", {className: "udou"}))), r.createElement("p", null, i[t - 1], "游戏排名：", 0 < n[t - 1] ? n[t - 1] : "暂未上榜，请加油"), r.createElement("p", {className: "tips"}, "(排名数据每1小时更新)"), r.createElement("a", {
            href: "javascript:void(0)",
            className: "rule"
        }, "查看排行榜规则", r.createElement("span", {className: "song"}, ">>"), r.createElement("span", {className: "hover-tips"}, "中奖总T豆数减投注总T豆数为当日净盈利数，按照当日净盈利数从高到低奖励排名前100的会员，排行榜奖励将于次日18点前发放。", r.createElement("s", {className: "arrow-w"}, r.createElement("s", {className: "arrow-n"})))))) : ""
    }

    var c, o, i = ["周一", "周二", "周三", "周四", "周五", "周六", "周日"], u = (new Date).getDay(),
        m = (i[(u = 0 == u ? 7 : u) - 1] = "今日", e(f, o = r.Component), (p = f.prototype).shouldComponentUpdate = function () {
            return !1
        }, p.componentDidMount = function () {
            var e = this.props.weekChange;
            $(".J_slideTitle").slide({
                mainCell: ".bd ul",
                effect: "left",
                trigger: "click",
                delayTime: 1e3,
                defaultIndex: u - 1,
                endFun: e
            })
        }, p.render = function () {
            var e = [1, 2, 3, 4, 5, 6, 7].map(function (e) {
                return r.createElement("li", {key: e}, r.createElement("img", {src: "//img.ttz.com/upload/service/fun/play/" + e + ".jpg"}))
            });
            return r.createElement("div", {className: "slidetitle J_slideTitle"}, r.createElement("div", {className: "bd"}, r.createElement("ul", null, e)), r.createElement("a", {
                className: "prev",
                href: "javascript:;"
            }), r.createElement("a", {className: "next", href: "javascript:;"}))
        }, f), p = (e(d, c = r.Component), (p = d.prototype).componentDidMount = function () {
            var t = this, e = cacheStore("fun-rankdata");
            e ? this.setState({data: e}) : $.request("/fun/play/api/interaction", {
                type: "json",
                c: "QuizJson",
                fun: "quiz_rank_list"
            }, function (e) {
                e = e.dayranklist;
                cacheStore("fun-rankdata", e, 600), t.setState({data: e})
            }, "json")
        }, p.shouldComponentUpdate = function (e, t) {
            var t = t.day, a = this.state, n = a.day;
            return !a.data[1] || n !== t
        }, p.handleWeekChange = function (e) {
            this.setState({day: e + 1})
        }, p.makeTr = function (e, t) {
            var a = e.vipList ? e.vipList.map(function (e) {
                return r.createElement("s", {key: e, className: "vip-card " + e})
            }) : [], n = e.userNick && "-" !== e.userNick ? stringUtils.userNameFormate(e.userNick) : "--";
            return r.createElement("tr", {
                key: t,
                className: t % 2 == 0 ? "even" : "odd"
            }, r.createElement("td", {className: e.sort <= 3 ? "td" + e.sort : ""}, e.sort), r.createElement("td", {style: {textAlign: "left"}}, r.createElement("label", {className: "username"}, n), a[0]), r.createElement("td", {className: "reward"}, r.createElement("div", {className: "hf-jl"}, e.gift, this.isShow ? r.createElement("div", {className: "win-num"}, a, r.createElement("s", {style: {marginRight: "10px"}}), "赢", e.winDou, r.createElement("s", {className: "udou"}), r.createElement("div", {className: "win-num-bg"})) : "")))
        }, p.render = function () {
            if ("zst" === window.params.channel) return "";
            var e = this.state, t = e.day, e = e.data, e = (this.isShow = t <= u, e[t] || []);
            return r.createElement("div", {className: "right-eachbox"}, r.createElement(m, {weekChange: this.handleWeekChange}), r.createElement(a.a, {
                makeTr: this.makeTr,
                data: e,
                className: "slidetable"
            }, r.createElement("tr", null, r.createElement("th", {className: "w60"}, "排名"), r.createElement("th", null, "会员名称"), r.createElement("th", null, "每日奖励"))), r.createElement(l, {
                selectDay: t,
                isShow: this.isShow
            }), r.createElement(n.a, {isShow: this.isShow}))
        }, d);

    function d() {
        var e;
        return (e = c.call(this) || this).isShow = !0, e.state = {
            data: {},
            monthName: i,
            day: u
        }, e.handleWeekChange = e.handleWeekChange.bind(t(e)), e.makeTr = e.makeTr.bind(t(e)), e
    }

    function f() {
        return o.apply(this, arguments) || this
    }

    h.a = p
}.call(this, g(0))
}, function (e, p, t) {
"use strict";
!function (e) {
    function t(e) {
        if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
        return e
    }

    function a(e, t) {
        return (a = Object.setPrototypeOf || function (e, t) {
            return e.__proto__ = t, e
        })(e, t)
    }

    function r(e) {
        var t;
        if ("number" == typeof Number(e)) return (t = 1 <= (t = Math.floor(e / 3600)) ? t : "00") + ":" + (10 <= (t = Math.floor(e % 3600 / 60)) ? t : "0" + t)
    }

    var n, s, l = {
            name: "phoenix",
            state: 0,
            c: "quiz",
            fun: "phoenix_nirvana_state",
            url: "/fun/play/interaction",
            skill: "涅槃",
            text: "涅槃",
            fcTip: "亏损",
            useSkillfun: "phoenix_nirvana"
        }, c = {
            name: "dragon",
            state: 0,
            c: "vip",
            fun: "dragon_state",
            url: "/vip/interaction",
            skill: "龙吟",
            text: "龙吟",
            fcTip: "盈利",
            useSkillfun: "dragon_skill"
        }, o = (((window.pageData || {}).userinfo || {}).vipList || []).join(""), i = /phoenix/.test(o),
        u = /dragon/.test(o), o = ($("body").on("click", ".J_sureUseSkill", function () {
            var e = $(this), t = (console.log(e.data("type")), "phoenix" === e.data("type") ? l : c);
            $(this).request({
                url: t.url,
                type: "post",
                data: {jxy_parameter: JSON.stringify({c: t.c, fun: t.useSkillfun})},
                success: function () {
                    fcShow({
                        msg: "恭喜你, " + t.skill + '成功, 获得 <span style="color:#ff4c4c">' + stringUtils.stringBitSeperator(t.udou) + "</span> T豆",
                        closeEvent: window.location.href
                    })
                },
                error: function (e) {
                    fcShow({msg: e.msg, closeEvent: window.location.href})
                }
            })
        }), n = e.Component, o = n, (s = m).prototype = Object.create(o.prototype), a(s.prototype.constructor = s, o), (s = m.prototype).reqVipData = function (n) {
            var s = this, e = n.c, t = n.fun, a = n.url;
            $("body").request({
                url: a,
                type: "post",
                data: {jxy_parameter: JSON.stringify({c: e, fun: t})},
                success: function (e) {
                    var t = e.state, a = e.profit, e = e.second;
                    n.profit = +a, n.rawProfit = +a, n.state = +t, n.second = +e, 2 === t ? countDown(n.second, function (e) {
                        n.text = r(e), s.setState({}), 0 === e && (n.text = n.skill, setTimeout(function () {
                            return s.reqVipData(n)
                        }, 2e3))
                    }) : s.setState({})
                },
                error: function (e) {
                    fcShow(e.msg)
                }
            })
        }, s.componentDidMount = function () {
            i && this.reqVipData(l), u && this.reqVipData(c)
        }, s.dealVipData = function (t, e) {
            var a = this, n = e.state, s = e.profit, e = e.second;
            t.profit = +s, t.rawProfit = +s, t.state = +n, t.second = +e, 2 === n ? countDown(t.second, function (e) {
                t.text = r(e), a.setState({}), 0 === e && (t.text = t.skill, setTimeout(function () {
                    return a.reqVipData(t)
                }, 2e3))
            }) : this.setState({})
        }, s.reqAllVipData = function (e) {
            var a = this, t = e.c, n = e.fun, e = e.url;
            $("body").request({
                url: e,
                type: "post",
                data: {jxy_parameter: JSON.stringify({c: t, fun: n})},
                success: function (e) {
                    for (var t in console.log(e), e) switch (console.log(t, e[t]), t) {
                        case"phoenix":
                            a.dealVipData(l, e[t]);
                            break;
                        case"dragon":
                            a.dealVipData(c, e[t])
                    }
                },
                error: function (e) {
                    fcShow(e.msg)
                }
            })
        }, s.phoenixSkill = function () {
            return 1 === l.state && (0 <= l.rawProfit ? fcShow("当前净盈利为负时方可发起涅槃") : (l.profit = -l.rawProfit, l.udou = Math.floor(l.profit / 2), void this.showFc(l)))
        }, s.dragonSkill = function () {
            return 1 === c.state && (c.profit <= 0 ? fcShow("当前净盈利为正时方可发起龙吟") : (0 < c.profit && c.profit < 2e7 ? c.udou = Math.floor(c.profit / 2) : c.udou = 1e7, void this.showFc(c)))
        }, s.showFc = function (e) {
            fcShow({
                conHtml: '<p class="ts-text">\n        当前净' + e.fcTip + ' <span style="color:#ff4c4c">' + stringUtils.stringBitSeperator(e.profit) + "</span> T豆<br>\n        " + e.skill + '将获得 <span style="color:#ff4c4c">' + stringUtils.stringBitSeperator(e.udou) + "</span> T豆，是否" + e.skill + '</p>\n          <div class="skill-btn-box clear-fix">\n            <span class="fuceng-btn skill-btn J_sureUseSkill" data-type="' + e.name + '">' + e.skill + '</span><span class="fuceng-btn skill-btn J_closeCommonFc">取消</span>\n          </div>',
                type: 2
            })
        }, s.render = function () {
            return this.props.isShow ? e.createElement("div", {className: "vip-skill-btn-box"}, u ? e.createElement("span", {
                className: "vip-skill-btn " + (1 !== c.state ? "gray" : ""),
                onClick: this.dragonSkill
            }, c.text) : "", i ? e.createElement("span", {
                className: "vip-skill-btn phoenix " + (1 !== l.state ? "gray" : ""),
                onClick: this.phoenixSkill
            }, l.text) : "") : ""
        }, m);

    function m(e) {
        return (e = n.call(this, e) || this).state = {state: 0}, e.phoenixSkill = e.phoenixSkill.bind(t(e)), e.dragonSkill = e.dragonSkill.bind(t(e)), e.reqVipData = e.reqVipData.bind(t(e)), e
    }

    p.a = o
}.call(this, t(0))
}, function (e, _, k) {
"use strict";
!function (o) {
    var s = k(1);

    function t(e) {
        if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
        return e
    }

    function e(e, t) {
        e.prototype = Object.create(t.prototype), a(e.prototype.constructor = e, t)
    }

    function a(e, t) {
        return (a = Object.setPrototypeOf || function (e, t) {
            return e.__proto__ = t, e
        })(e, t)
    }

    function r(e) {
        var t = e.profit, a = (e.index, e.rank), n = e.award, s = e.score, e = e.over;
        return new Date, o.createElement("div", null, o.createElement("div", {className: "aboutme"}, o.createElement("p", null, "我的排名：", 0 < a ? o.createElement("span", {className: "color-udou"}, a) : o.createElement("span", null, "未上榜")), o.createElement("p", null, "战  力  值：", stringUtils.stringBitSeperator(s)), o.createElement("p", null, "战       绩：", o.createElement("span", {className: "color-udou"}, stringUtils.stringBitSeperator(t), o.createElement("i", {className: "udou"}))), o.createElement("p", null, "获得奖励：", o.createElement("span", {className: "color-udou"}, stringUtils.stringBitSeperator(n), o.createElement("i", {className: "udou"}))), o.createElement("p", {className: "overtake-box"}, "在本期，您超越了", o.createElement("span", {className: "color-green"}, e, "%"), "的玩家！")))
    }

    var n, l, c, i, u, m = new Date, p = m.getMonth(), d = m.getFullYear(),
        f = ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"].map(function (e, t) {
            return {
                text: e,
                time: t + 1 + "月1日 00:00 - " + (t + 1) + "月" + new Date(d, t + 1, 0).getDate() + "日 23:59"
            }
        }), h = (f.slice(0, p + 1), e(w, u = o.Component), (m = w.prototype).shouldComponentUpdate = function () {
            return !1
        }, m.componentDidMount = function () {
            var e = this.props, t = e.weekChange, e = e.period;
            $(".J_rankSlideTitle").slide({
                mainCell: ".bd ul",
                effect: "fade",
                trigger: "click",
                pnLoop: !1,
                delayTime: 1e3,
                endFun: t,
                defaultIndex: e - 1
            })
        }, m.render = function () {
            var e = this.props.data, a = ["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"], e = e.map(function (e, t) {
                return o.createElement("li", {
                    className: "season-li-new",
                    key: t,
                    index: t
                }, o.createElement("p", {className: "title"}, "第", a[t + 1], "期"))
            });
            return o.createElement("div", {className: "slidetitle J_rankSlideTitle"}, o.createElement("div", {className: "bd"}, o.createElement("ul", null, e)), o.createElement("a", {
                className: "prev",
                href: "javascript:;"
            }), o.createElement("a", {
                className: "next",
                href: "javascript:;"
            }), o.createElement("span", {className: "close-x J_closeX"}))
        }, w), m = (e(E, i = o.Component), (m = E.prototype).componentDidMount = function () {
            var e = cacheStore("fun-season-rankdata") || {}, t = (e.ranklist, e.id, window.pageData.userinfo.user_id),
                a = this;
            $(document).request({
                url: "/fun/play/interaction",
                data: {jxy_parameter: JSON.stringify({c: "HonourBox", fun: "getList"})},
                success: function (e) {
                    cacheStore("fun-season-rankdata", {ranklist: e, id: t}, 600), a.setState({data: e})
                }
            })
        }, m.handleWeekChange = function (e) {
            this.setState({index: e})
        }, m.makeTr = function (e, t) {
            var a = e.vipCode ? e.vipCode.map(function (e) {
                    return o.createElement("s", {key: e, className: "vip-card " + e})
                }) : [],
                n = e.userNick && "-" !== e.userNick && 0 != e.userID ? stringUtils.userNameFormate(e.userNick) : "--",
                s = (1 === e.isRule && (n = o.createElement("span", {style: {color: "#ff4c4c"}}, e.userNick.slice(-8))), 0 == e.userID ? o.createElement("div", {className: "win-num"}, e.userNick, o.createElement("div", {className: "win-num-bg"})) : o.createElement("div", null));
            return o.createElement("tr", {
                key: t,
                className: t % 2 == 0 ? "even" : "odd"
            }, o.createElement("td", {className: e.rank <= 3 ? "td" + e.rank : ""}, e.rank), o.createElement("td", {style: {textAlign: "left"}}, o.createElement("p", {className: "username"}, n), a[0]), o.createElement("td", {className: "reward"}, o.createElement("span", {className: "hf-jl"}, e.score, s)))
        }, m.render = function () {
            if ("zst" === window.params.channel) return "";
            var e = this.state, t = e.data, e = e.index, a = t.top[e] || {}, n = "第" + f[e].text + "季";
            return a.list ? o.createElement("div", {className: "right-eachbox season-rank-table season-rank-table-new"}, o.createElement("div", {
                className: "J_show1",
                style: {display: "none"}
            }, o.createElement(h, {
                weekChange: this.handleWeekChange,
                data: t.top,
                period: t.period
            }), o.createElement(r, {
                profit: a.profit,
                rank: a.rank,
                award: a.award,
                score: a.score,
                over: a.over,
                index: e,
                seasonName: n
            }), o.createElement(s.a, {
                makeTr: this.makeTr,
                data: a.list,
                hidePage: !1,
                className: "slidetable"
            }, o.createElement("tr", {className: "new-rank"}, o.createElement("th", {className: "w60"}, "排名"), o.createElement("th", null, "会员名称"), o.createElement("th", null, "战力")))), o.createElement("div", {className: "J_show2"}, o.createElement(v, {data: t}))) : ""
        }, E), g = (e(x, l = o.Component), (c = x.prototype).shouldComponentUpdate = function () {
            return !1
        }, c.componentDidMount = function () {
        }, c.render = function () {
            var e = this.props.data, t = 290 * e.length, e = (y.len = e.length, e.map(function (e) {
                return o.createElement("li", {className: "item"}, "恭喜 ", o.createElement("span", {className: "color-red"}, e.userNick), " 解锁", e.level, "级宝箱获得 ", o.createElement("span", {className: "color-red"}, e.bean), " T豆 ", o.createElement("span", {className: "color-red"}, e.card))
            }));
            return o.createElement("div", {className: "move-box J_textMove"}, o.createElement("span", {className: "speaker"}), o.createElement("div", {className: "inslide-box"}, o.createElement("ul", {
                className: "move-out-box  J_moveOutStyle",
                style: {width: t + "px"}
            }, e)))
        }, x), v = (e(b, n = o.Component), b.prototype.render = function () {
            function e(e) {
                return e < 130 ? 0 : 130 <= e & e <= 550 ? Math.floor(42 * e / 550) - 10 : 550 < e & e <= 1100 ? Math.floor(73 * (e - 550) / 550) - 10 + 42 : 1100 < e & e <= 2200 ? Math.floor(73 * (e - 1100) / 1100) - 10 + 115 : 2200 < e & e <= 3600 ? Math.floor(73 * (e - 2200) / 1400) - 10 + 189 : 3600 < e & e <= 5500 ? Math.floor(73 * (e - 3600) / 1900) - 10 + 263 : 5500 < e ? Math.floor(197100 / 1900) - 10 + 263 : void 0
            }

            var t = this.props.data, a = t.box, n = t.pop, s = t.score, r = t.period, l = t.monthStart, c = t.monthEnd,
                t = t.profit, a = a.map(function (t, e) {
                    return o.createElement("div", {className: "step-box step-0" + (e + 1) + " status-0" + t}, o.createElement("span", {className: "step-pic pic-0" + (e + 1)}), [1, 2].some(function (e) {
                        return e === t
                    }) ? o.createElement("span", {className: "text-status-03"}) : null, 4 === t ? o.createElement("span", {className: "star-bg"}) : null, 4 === t ? o.createElement("span", {className: "text-status-02"}, "待触发") : null, 0 === t ? o.createElement("span", {className: "text-status-01"}, "未达到") : null, o.createElement("div", {className: "text-box"}, 0 === e ? o.createElement("span", {className: "title"}, "1000万T豆") : null, 1 === e ? o.createElement("span", {className: "title"}, "3000万T豆") : null, 2 === e ? o.createElement("span", {className: "title"}, "1亿T豆") : null, 3 === e ? o.createElement("span", {className: "title"}, "3亿T豆") : null, 4 === e ? o.createElement("span", {className: "title"}, "8亿T豆+凤凰卡*1") : null, 0 === e && [0, 4].some(function (e) {
                        return e === t
                    }) ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "550战力解锁")) : null, 1 === e && [0, 4].some(function (e) {
                        return e === t
                    }) ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "1100战力解锁")) : null, 2 === e && [0, 4].some(function (e) {
                        return e === t
                    }) ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "2200战力解锁")) : null, 3 === e && [0, 4].some(function (e) {
                        return e === t
                    }) ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "3600战力解锁")) : null, 4 === e && [0, 4].some(function (e) {
                        return e === t
                    }) ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "5500战力解锁")) : null, 1 === t ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "等待奖励发放...")) : null, 2 === t ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "奖励已发放")) : null, 3 === t ? o.createElement("span", {className: "title"}, o.createElement("span", {className: "intro-text"}, "审核未通过")) : null))
                });
            return o.createElement("div", {className: "glory-box"}, o.createElement("div", {className: "head"}, o.createElement("strong", {className: "title"}, "荣耀宝箱"), o.createElement("span", {className: "time"}, l, " - ", c), o.createElement("span", {className: "subs"}, "第", ["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"][r], "期")), o.createElement(g, {data: n}), o.createElement("div", {className: "glory"}, o.createElement("span", {className: "gray-line"}), o.createElement("span", {
                className: "green-line",
                style: {height: e(s) + "px"}
            }), o.createElement("div", {className: "ball"}, o.createElement("span", {className: "gray-ball ball-01"}), o.createElement("span", {className: "gray-ball ball-02"}), o.createElement("span", {className: "gray-ball ball-03"}), o.createElement("span", {className: "gray-ball ball-04"}), o.createElement("span", {className: "gray-ball ball-05"}), 550 <= s ? o.createElement("span", {className: "green-ball ball-01"}) : null, 1100 <= s ? o.createElement("span", {className: "green-ball ball-02"}) : null, 2200 <= s ? o.createElement("span", {className: "green-ball ball-03"}) : null, 3600 <= s ? o.createElement("span", {className: "green-ball ball-04"}) : null, 5500 <= s ? o.createElement("span", {className: "green-ball ball-05"}) : null, 550 <= s ? o.createElement("span", {className: "num-text text-01 color-green"}, "550") : o.createElement("span", {className: "num-text text-01"}, "550"), 1100 <= s ? o.createElement("span", {className: "num-text text-02 color-green"}, "1100") : o.createElement("span", {className: "num-text text-02"}, "1100"), 2200 <= s ? o.createElement("span", {className: "num-text text-03 color-green"}, "2200") : o.createElement("span", {className: "num-text text-03"}, "2200"), 3600 <= s ? o.createElement("span", {className: "num-text text-04 color-green"}, "3600") : o.createElement("span", {className: "num-text text-04"}, "3600"), 5500 <= s ? o.createElement("span", {className: "num-text text-05 color-green"}, "5500") : o.createElement("span", {className: "num-text text-05"}, "5500")), o.createElement("span", {
                className: "now-score",
                style: {bottom: e(s) + "px"}
            }, s), o.createElement("div", {className: "card-intro"}, o.createElement("span", {className: "mark"}, o.createElement("p", {className: "text"}, "凤凰卡：开通赠礼8888万T豆，工资2068万T豆/天，特权:“涅槃”(24h每次）获得当前净亏损的50%T豆(无上限)", o.createElement("span", {className: "jt"})))), a), o.createElement("div", {className: "my-news"}, o.createElement("p", {className: "text"}, "本期游戏战绩：", o.createElement("span", {className: "color-red"}, stringUtils.stringBitSeperator(t)), o.createElement("span", {className: "udou"})), o.createElement("span", {className: "find-btn J_closeX1"}, "查看战力榜>>"), o.createElement("span", {className: "rule-btn"}, "奖励规则>>", o.createElement("p", {className: "text"}, "每1个月1期，统计用户战绩（该期内手动参与单期净盈利≥5000万T豆之和），每5000万点战绩记1点战力。达到对应战力后，获得的宝箱奖励会在24h内发放完毕，请在个人账户中查看", o.createElement("span", {className: "jt"})))))
        }, b);

    function b() {
        var e;
        return (e = n.call(this) || this).isShow = !0, e.state = {data: {}, index: p}, e
    }

    function x() {
        return l.apply(this, arguments) || this
    }

    function E() {
        var e;
        return (e = i.call(this) || this).isShow = !0, e.state = {
            data: {top: []},
            index: 0
        }, e.handleWeekChange = e.handleWeekChange.bind(t(e)), e.makeTr = e.makeTr.bind(t(e)), e
    }

    function w() {
        return u.apply(this, arguments) || this
    }

    $(document).on("click", ".J_closeX", function (e) {
        e.preventDefault(), $(".J_show1").hide(), $(".J_show2").show()
    }), $(document).on("click", ".J_closeX1", function (e) {
        e.preventDefault(), $(".J_show1").show(), $(".J_show2").hide()
    });
    var y = {idx: 0, len: 5}, N = setInterval(function () {
        y.len < 1 && clearInterval(N), y.idx < y.len - 1 ? (y.idx += 1, $(".J_moveOutStyle").css("left", "-" + 270 * y.idx + "px"), $(".J_moveOutStyle").removeClass("moveAnim").addClass("moveAnim")) : (y.idx = 0, $(".J_moveOutStyle").css("left", "0px"), $(".J_moveOutStyle").removeClass("moveAnim"))
    }, 4e3);
    _.a = m
}.call(this, k(0))
}, , , , , function (U, e, t) {
"use strict";
t.r(e);
var e = t(0), a = t.n(e), e = t(3), e = t.n(e);

function n(e, t) {
    return (n = Object.setPrototypeOf || function (e, t) {
        return e.__proto__ = t, e
    })(e, t)
}

s = a.a.Component, i = s, (p = m).prototype = Object.create(i.prototype), n(p.prototype.constructor = p, i), (p = m.prototype).componentDidCatch = function (e, t) {
    this.setState({hasError: !0}), console.log(e, t)
}, p.render = function () {
    return this.state.hasError ? a.a.createElement("h1", null, "出现了一些问题..请与客服联系") : this.props.children
};
var s, r = m, l = t(4), c = t(6), P = t(8),
    o = ((window.params || {}).channel, u.prototype.setState = function (e) {
        "function" == typeof e && (e = e(e)), $.extend(!0, this.state, e)
    }, new u({getCountDown: {jcjg1: "1+2+3=", jcjg2: 0, jzsecond: 0, kjsecond: 0, num1: 0, num2: 0}})),
    i = (window.pageData || {}).getCountDown;

function u(e) {
    this.state = e = void 0 === e ? {} : e
}

function m(e) {
    return (e = s.call(this, e) || this).state = {hasError: !1}, e
}

o.setState({getCountDown: i});
var p;

function d(e) {
    var t = $("#J_splitpage");
    t.request({
        url: "/fun/play/interaction",
        data: {
            jxy_parameter: JSON.stringify({
                c: t.data("c"),
                fun: t.data("fun"),
                items: t.data("items"),
                lssue: t.data("lssue"),
                pageSize: t.data("pagesize"),
                pageIndex: e
            }), xtpl: t.data("pagextpl"), params: JSON.stringify({items: t.data("items")})
        },
        success: function (e) {
            $(".paging-tbl tbody").html(e.html);
            var e = o.state.getCountDown, t = e.jzsecond, e = e.num1;
            t <= 0 && (t = "/fun/play/" + window.params.items + "/jctz?id=" + e, $('[href="' + t + '"]').removeAttr("href").css({
                "background-color": "#aaa",
                border: 0,
                cursor: "default"
            }))
        }
    })
}

function f() {
    $(".second").each(function () {
        var e, t;
        $(this).data("second", $(this).html()), 0 < $(this).html() ? $(this).html($(this).html() - 1) : clearInterval(b), $(".J_openTime").data("second") <= 0 && (t = "即将出结果……", $(".J_clockImg").removeClass("time-wait").addClass("time-kj"), $(".J_jcOpen").html(t), setTimeout(function () {
            x()
        }, 1e4)), parseInt($(".J_endTime").html() || 0, 10) <= 0 && (t = '第<span class="clr-red"> ' + (e = $(".J_countDownJc").data("lssue")) + " </span>期投注已截止", $(".J_jcEnd").html(t), "crazy28" !== window.params.items && (t = "/fun/play/" + window.params.items + "/jctz?id=" + e, $('[href="' + t + '"]').removeAttr("href").css({
            "background-color": "#aaa",
            border: "0",
            cursor: "default"
        }))), $(".J_carry28Time").data("second") <= 0 && ($(".time-static1").hide(), $(".time-static2").show(), $(".jc-a:last").removeAttr("href").css({
            "background-color": "#aaa",
            border: 0,
            cursor: "default"
        }), 0 < location.pathname.indexOf("canada28") ? (setTimeout(x, 32e3), setTimeout(x, 42e3), setTimeout(x, 52e3), setTimeout(x, 62e3)) : setTimeout(x, 1e4))
    })
}

e.a.render(a.a.createElement(function () {
    return a.a.createElement(r, null, a.a.createElement(l.a, null), a.a.createElement(c.a, null), a.a.createElement(P.a, null))
}, null), document.querySelector(".block-right")), 0 < $("#J_splitpage").length && $("#J_splitpage").createPage({
    pageCount: Math.ceil($("#J_splitpage").data("total") / $("#J_splitpage").data("pagesize")),
    current: 1,
    totalCount: $("#J_splitpage").data("total"),
    isShowGo: Boolean($("#J_splitpage").data("isshowgo")),
    backFn: d
}), $(".select-box").hover(function () {
    $(this).children("ul.son-ul").stop(!1, !1).slideDown()
}, function () {
    $(this).children("ul.son-ul").stop(!1, !1).slideUp()
}), $("ul.son-ul li").click(function () {
    $(this).parents("li.select-box").find("span").html($(this).html()), $(this).hasClass("dqms") && $(this).parents("li.info-li").find("#dcount").html($(this).data("count")), $(this).parents("li.select-box").find("ul").stop(!1, !1).slideUp()
}), window.pageData.getCountDown.jzsecond <= 0 && "crazy28" !== window.params.items && (p = "/fun/play/" + window.params.items + "/jctz?id=" + window.pageData.getCountDown.num1, $('[href="' + p + '"]').removeAttr("href").css({
    "background-color": "#aaa",
    border: "0",
    cursor: "default"
}));
var h, g, v, b = setInterval(f, 1e3);

function x() {
    var e = $("#jctopxtpl").data("topxtpl"), t = $(".left-box").data("params");
    $(this).request({
        url: "/fun/play/interaction",
        type: "post",
        dataType: "json",
        data: {
            jxy_parameter: JSON.stringify({fun: "getCountDown", c: "quiz", items: t.items}),
            params: JSON.stringify(t),
            xtpl: e
        },
        success: function (e) {
            o.setState({getCountDown: e}), $(".J_topxtpl").html(e.html), clearInterval(b), b = setInterval(f, 1e3), window.syncInfo(e)
        }
    }), 0 < window.location.href.indexOf("index") && 1 == $("#J_splitpage").find(".current").text() && d(1), $(this).request({
        url: "/fun/userinfo/interaction",
        type: "post",
        dataType: "json",
        data: {jxy_parameter: JSON.stringify({fun: "userinfo", c: "index"})},
        success: function (e) {
            $(".user-udou .J_udou").text(stringUtils.stringBitSeperator(e.user_udou))
        }
    })
}

0 < $(".J_carry28kj").length && 0 < location.href.indexOf("index") && setTimeout(function () {
    location.href = location.href
}, 1e4), $(".zuixin-box").slide({
    titCell: ".hd ul",
    mainCell: ".bd ul",
    autoPage: !0,
    effect: "topLoop",
    autoPlay: !0,
    vis: 6
}), $(".J_modelSelect .model-sel").on("click", function (e) {
    e.preventDefault();
    var t, e = $(this), a = e.text(), n = e.data("id"), s = e.data("text").split(","),
        e = e.parents(".J_modelSelect").find(".J_nowModel");
    e.text(a), e.data("id", n), 0 < $(".J_touzhuNnm").length && ($(".J_touzhuNnm").each(function (e) {
        $(this).val(s[e])
    }), t = 0, $(".J_touzhuNnm").each(function () {
        var e = $(this).val();
        Number(e) && (t += Number(e))
    }), $(".cost-num strong").text(stringUtils.stringBitSeperator(t)).data("udou", t), $(".J_touzhuNnm").each(function (e) {
        var t = $(this).val();
        0 < Number(t) ? $(".J_touzhuSel").eq(e).addClass("selected") : $(".J_touzhuSel").eq(e).removeClass("selected")
    })), 0 < $(".J_delModel").length && $(".J_newModelName").val(a)
}), (h = $(".touzhu-style-box .model-box")) && 40 < h.height() && (h.css("height", "34px"), $(".touzhu-style-list .more-btn").show()), g = $(".touzhu-style-list .more-btn"), v = !1, g.on("click", function () {
    h.css("height", v ? "34px" : "auto"), v ? g.html('展开<s class="big-jt"></s>') : g.html('收回<s class="big-jt rotate"></s>'), v = !v
}), 0 < $(".J_startLssue").length && $(".J_startLssue,.J_endLssue").keyup(function () {
    var e = parseInt($(".J_startLssue").val(), 10), e = parseInt($(".J_endLssue").val(), 10) - e;
    0 < e ? $(".J_allLssue").html("共投注" + e + "期") : $(".J_allLssue").html("共投注0期")
}), $(".J_topxtpl").on("click", ".J_refresh", function (e) {
    e.preventDefault(), x()
}), $(".jingcai-banner-close").on("click", function (e) {
    e.preventDefault(), $(".black-cover").hide(), $(".jingcai-banner-box").hide(), $(this).request({
        url: "/fun/play/interaction",
        type: "post",
        dataType: "json",
        data: {jxy_parameter: JSON.stringify({fun: "close_jcbanner_fc", c: "quiz"})},
        success: function () {
        }
    })
}), window.jcRefreshAjaxLuck22 = function () {
    0 < window.location.href.indexOf("index") && 1 == $("#J_splitpage").find(".current").text() && d(1), $(this).request({
        url: "/fun/userinfo/interaction",
        type: "post",
        dataType: "json",
        data: {jxy_parameter: JSON.stringify({fun: "userinfo", c: "index"})},
        success: function (e) {
            $(".user-udou .J_udou").text(stringUtils.stringBitSeperator(e.user_udou))
        }
    })
};
var E, w, y, N, _, k, S, J, j, T, C, D, O, q = $(".send-vip-fc");

function z(e) {
    var e = new RegExp("(^| )" + e + "=([^;]*)(;|$)");
    return (e = document.cookie.match(e)) ? unescape(e[2]) : null
}

function M(e, t, a) {
    var n = new Date;
    n.setDate(n.getDate() + a), document.cookie = e + "=" + escape(t) + (null == a ? "" : ";expires=" + n.toGMTString())
}

q.length && (q.id = q.data("id"), fcShow({
    fcClass: "send-vip-fc",
    type: 3,
    conHtml: q.remove().html()
}), $(document).on("click", ".J_sureCardState", function () {
    $(this).request({
        url: "/vip/interaction",
        data: {jxy_parameter: JSON.stringify({c: "vip", fun: "use_send_card", id: q.id})},
        success: function () {
            window.location.reload()
        },
        error: function (e) {
            fcShow({msg: e.msg, closeEvent: window.location.href})
        }
    })
})), $(".step-btn-1").on("click", function () {
    $(".fun-bg-1").hide(), $(".fun-bg-2").show()
}), $(".step-btn-2").on("click", function () {
    $(".fun-bg-2").hide(), $(".fun-bg-3").show()
}), $(".step-btn-3").on("click", function () {
    $(".fun-bg-3").hide(), $(".fun-bg-4").show()
}), $(".fun-bg-4").on("click", function () {
    $(".guide-fun-1-box").hide(), $(".fun-bg-4").hide(), fcShow({
        title: "娱乐大厅用户协议",
        fcClass: "fc-jc-rule common-fuceng-box",
        conHtml: '\n  <div class="jc-fc-box">\n  <p class="jc-fc-rule">娱乐大厅提供益智类休闲游戏，可用T豆参与游戏娱乐，具体玩法可参详游戏介绍。官方承诺不收取任何费用，用户可通过开通VIP享受增值服务。</p>\n  <p class="jc-fc-rule">T豆仅供娱乐不具价值，用户通过游戏获得或损失T豆。T豆可用于兑换或者抽取奖品，官方禁止用户间私下购买或者转让T豆，若因此出现问题官方不承担任何责任。</p>\n  <p class="jc-fc-rule">严禁用户使用任何软件或者外挂进行游戏，如有发现立即封号。</p>\n  <p class="jc-fc-rule">若您不同意本协议中任意一条请点击"取消"退出游戏。</p>\n  <p class="jc-fc-rule">团团钻官方提醒：请合理安排时间，适度游戏！</p></div>\n  <div class="fc-btn-box clear-fix">\n  <a class="btn-sure J_sendAgreeText" href="javascript:;" title="">同意</a>\n  <a class="btn-cancel" href="/" title="">取消</a>\n  </div>\n  ',
        type: 2,
        closeEvent: "/"
    }), $("body").delegate(".J_sendAgreeText", "click", function () {
        $(".fc-jc-rule").hide(), $(".black-cover").hide(), $(this).request({
            url: "/fun/play/interaction",
            data: {jxy_parameter: JSON.stringify({c: "quiz", fun: "click_sis"})},
            success: function () {
            }
        })
    })
}), 0 == $(".paging-tbl").data("rule") && 1 === $(".paging-tbl").data("showfc") && (fcShow({
    title: "娱乐大厅用户协议",
    fcClass: "fc-jc-rule common-fuceng-box",
    conHtml: '\n  <div class="jc-fc-box">\n  <p class="jc-fc-rule">娱乐大厅提供益智类休闲游戏，可用T豆参与游戏娱乐，具体玩法可参详游戏介绍。官方承诺不收取任何费用，用户可通过开通VIP享受增值服务。</p>\n  <p class="jc-fc-rule">T豆仅供娱乐不具价值，用户通过游戏获得或损失T豆。T豆可用于兑换或者抽取奖品，官方禁止用户间私下购买或者转让T豆，若因此出现问题官方不承担任何责任。</p>\n  <p class="jc-fc-rule">严禁用户使用任何软件或者外挂进行游戏，如有发现立即封号。</p>\n  <p class="jc-fc-rule">若您不同意本协议中任意一条请点击"取消"退出游戏。</p>\n  <p class="jc-fc-rule">团团钻官方提醒：请合理安排时间，适度游戏！</p></div>\n  <div class="fc-btn-box clear-fix">\n  <a class="btn-sure J_sendAgreeText" href="javascript:;" title="">同意</a>\n  <a class="btn-cancel" href="/" title="">取消</a>\n  </div>\n  ',
    type: 2,
    closeEvent: "/"
}), $("body").delegate(".J_sendAgreeText", "click", function () {
    $(".fc-jc-rule").hide(), $(".black-cover").hide(), $(this).request({
        url: "/fun/play/interaction",
        data: {jxy_parameter: JSON.stringify({c: "quiz", fun: "click_sis"})},
        success: function () {
        }
    })
})), 0 < $(".J_iframeBox").length && (E = $(".J_iframeBox .change-btn"), w = $(".J_iframeBox"), setTimeout(function () {
    E.show()
}, 500), 1 == z("luck22game") || null == z("luck22game") ? (w.css("height", "51px"), E.addClass("change-btn-show")) : (w.css("height", "auto"), E.removeClass("change-btn-show")), $(".J_iframeBox .change-btn").on("click", function () {
    1 == z("luck22game") ? (w.css("height", "auto"), M("luck22game", "0"), E.removeClass("change-btn-show")) : (w.css("height", "51px"), M("luck22game", "1"), E.addClass("change-btn-show"))
})), y = $(".server-time .time"), N = y.data("time") - new Date, function e() {
    var t = new Date;
    N && t.setMilliseconds(t.getMilliseconds() + N), y.html(t.toTimeString().split(" ")[0]), setTimeout(e, 300)
}(), t = $(".show-panel"), _ = t.find(".j_number-prev"), k = t.find(".j_number-next"), S = t.find(".j_seconds-stop"), J = S.parent().next(), j = t.find(".j_seconds-open"), T = j.parent().next(), C = t.find(".result > .ball"), D = 0, $(function () {
    setTimeout(function () {
        var e = (document.cookie.match(/scroll-top=(\d+)/) || [])[1];
        e && $("html, body").scrollTop(e)
    }, 100)
}), O = ["", "豹", "对", "顺", "半", "杂"], countDown(1e5, function () {
    var e = +S.data("seconds"), t = +j.data("seconds");
    0 <= e ? (J.hide(), S.parent().show(), S.text(e), S.data("seconds", e - 1)) : (J.show(), S.parent().hide()), 0 <= t ? (T.hide(), j.parent().show(), j.text(t), j.data("seconds", t - 1)) : (T.show(), j.parent().hide())
}), window.syncInfo = function (e) {
    if (20 <= D) try {
        location.reload()
    } catch (e) {
        document.cookie = "scroll-top=" + $(document).scrollTop(), location.href = location.href
    }
    _.text(e.num2), k.text(e.num1), S.data("seconds", e.jzsecond), j.data("seconds", e.kjsecond);
    var t = e.jcjg1.split(/[+=]/);
    C.eq(0).text(t[0]), C.eq(1).text(t[1]), C.eq(2).text(t[2]), "pk10" === window.params.items ? (C.eq(3).removeClass().addClass("ball is-big pk10-bball" + e.jcjg2), C.eq(3).text(O[e.jcjg2])) : C.eq(3).text(e.jcjg2), D += 1
}, $(".j_refresh").on("click", function () {
    var e = $(this).data("sec") || 0, t = +new Date;
    return t - e < 2e3 || ($(this).data("sec", t), x()), !1
})
}]);