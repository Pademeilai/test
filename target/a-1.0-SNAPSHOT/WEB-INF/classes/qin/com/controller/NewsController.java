  package  qin.com.controller;

  import java.sql.Date;
  import java.util.Date;
  import java.util.List;
  import java.util.Map;
  import javax.annotation.Resource;
  import javax.servlet.http.HttpSession;
  import org.springframework.beans.factory.annotation.Autowired;
  import org.springframework.stereotype.Controller;
  import org.springframework.web.bind.annotation.RequestMapping;
  import org.springframework.web.bind.annotation.RequestParam;
  import org.springframework.web.bind.annotation.ResponseBody;
  import qin.com.common.ServerResponse;
  import qin.com.entity.News;
  import qin.com.service.NewsService;



  @Controller
  @RequestMapping({"/news"})
  public class NewsController
  {
    @RequestMapping({"/selectAllNews"})
    @ResponseBody
    public ServerResponse selectAllNews() {
/*  27 */     List<News> news = this.newsService.selectAllNews();
/*  28 */     if (news != null) {
/*  29 */       return ServerResponse.createBySuccess("查询成功", news);
      }
/*  31 */     return ServerResponse.createByErrorMessage("找不到相关信息");
    } @Resource(name = "newsServiceImpl")
    @Autowired
    private NewsService newsService; @RequestMapping({"/count"})
    public void count(@RequestParam Integer newsid) {
/*  36 */     this.newsService.count(newsid);
    }
    @RequestMapping({"selectMaxNew"})
    @ResponseBody
    public ServerResponse selectMaxNew(@RequestParam Map map) {
/*  41 */     List<News> news = null;
/*  42 */     if (map.get("loder").equals("date")) {
/*  43 */       news = this.newsService.selectMaxNew();
      } else {
/*  45 */       news = this.newsService.selectOrderByCount();
      }
/*  47 */     if (news != null) {
/*  48 */       return ServerResponse.createBySuccess("查询成功", news);
      }
/*  50 */     return ServerResponse.createByErrorMessage("暂无最新");
    }

    @RequestMapping({"selectAsk"})
    @ResponseBody
    public ServerResponse selectAsk() {
/*  56 */     List<News> news = this.newsService.selectAsk();
/*  57 */     if (news != null) {
/*  58 */       return ServerResponse.createBySuccess("查询成功", news);
      }
/*  60 */     return ServerResponse.createByErrorMessage("暂无最新");
    }

    @RequestMapping({"selectLike"})
    @ResponseBody
    public ServerResponse selsectLike(@RequestParam String title) {
/*  66 */     List<News> news = this.newsService.selectLike(title);
/*  67 */     if (news != null) {
/*  68 */       return ServerResponse.createBySuccess("查询成功", news);
      }
/*  70 */     return ServerResponse.createByErrorMessage("查询失败");
    }

    @RequestMapping({"insert"})
    @ResponseBody
    public ServerResponse insert(@RequestParam Map map, HttpSession session) {
/*  76 */     News news = new News();
/*  77 */     news.setTitle((String)map.get("title"));
/*  78 */     news.setContent((String)map.get("content"));
/*  79 */     news.setAuthor((String)session.getAttribute("username"));
/*  80 */     news.setUserid((Integer)session.getAttribute("userid"));
/*  81 */     if (Integer.parseInt((String)map.get("type")) == 15) {
/*  82 */       news.setType("提问");
      } else {
/*  84 */       news.setType("帖子");
      }
/*  86 */     news.setRemark("通过");
/*  87 */     news.setDate(new Date((new Date()).getTime()));
/*  88 */     news.setCount(Integer.valueOf(0));
/*  89 */     news.setLike(Integer.valueOf(0));
/*  90 */     if (session.getAttribute("userid") != null) {
/*  91 */       int insert = this.newsService.insert(news);
/*  92 */       if (insert > 0) {
/*  93 */         return ServerResponse.createBySuccess(0);
        }
      } else {
/*  96 */       return ServerResponse.createByErrorMessage("请登陆");
      }
/*  98 */     return ServerResponse.createByErrorMessage("请登陆");
    }
    @RequestMapping({"Login"})
    @ResponseBody
    public ServerResponse Login(HttpSession session) {
/* 103 */     if (session.getAttribute("userid") != null) {
/* 104 */       return ServerResponse.createBySuccess(0);
      }
/* 106 */     return ServerResponse.createByErrorMessage("客官，请登陆");
    }

    @RequestMapping({"updateByPrimaryKey"})
    @ResponseBody
    public ServerResponse updateByPrimaryKey(@RequestParam Map map) {
/* 112 */     News news = new News();
/* 113 */     news.setNewsid(Integer.valueOf(Integer.parseInt((String)map.get("newsid"))));
/* 114 */     news.setRemark("被举报");
/* 115 */     if (this.newsService.updateByPrimaryKey(news) > 0) {
/* 116 */       return ServerResponse.createBySuccess(0);
      }
/* 118 */     return ServerResponse.createByErrorMessage("举报失败");
    }


    @RequestMapping({"updateByPrimaryKeySelective"})
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(@RequestParam Map map) {
/* 125 */     News news = new News();
/* 126 */     news.setNewsid(Integer.valueOf(Integer.parseInt((String)map.get("newsid"))));
/* 127 */     news.setLike(Integer.valueOf(1));
/* 128 */     System.out.println(map.get("newsid"));
/* 129 */     if (this.newsService.updateByPrimaryKeySelective(news) > 0) {
/* 130 */       return ServerResponse.createBySuccess(0);
      }
/* 132 */     return ServerResponse.createByErrorMessage("点赞失败");
    }


    @RequestMapping({"selectMy"})
    @ResponseBody
    public ServerResponse selectMy(HttpSession session) {
/* 139 */     List<News> news = this.newsService.selectMy((Integer)session.getAttribute("userid"));
/* 140 */     if (news != null) {
/* 141 */       return ServerResponse.createBySuccess("查询成功", news);
      }
/* 143 */     return ServerResponse.createByErrorMessage("暂无最新");
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\NewsController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */