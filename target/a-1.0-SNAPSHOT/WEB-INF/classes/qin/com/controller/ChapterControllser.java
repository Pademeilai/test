  package  qin.com.controller;

  import java.sql.Date;
  import java.util.ArrayList;
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
  import qin.com.entity.Chapter;
  import qin.com.service.ChapterService;

  @Controller
  @RequestMapping({"/chapter"})
  public class ChapterControllser
  {
    @Resource(name = "chapterServiceImpl")
    @Autowired
    private ChapterService chapterService;

    @RequestMapping({"/insert"})
    @ResponseBody
    public ServerResponse insert(@RequestParam int bookid, @RequestParam int count, @RequestParam Map map) {
/*  30 */     Chapter chapter = new Chapter();
/*  31 */     chapter.setBookid(Integer.valueOf(bookid));
/*  32 */     chapter.setBunding((String)map.get("bunding"));
/*  33 */     chapter.setChapter((String)map.get("chapter"));
/*  34 */     chapter.setContent((String)map.get("content"));
/*  35 */     chapter.setCount(Integer.valueOf(count));
/*  36 */     chapter.setModle((String)map.get("modle"));
/*  37 */     chapter.setTime("待审核");
/*  38 */     if (this.chapterService.insert(chapter) > 0) {
/*  39 */       return ServerResponse.createBySuccess(0, "添加成功", chapter);
      }
/*  41 */     return ServerResponse.createByErrorMessage("添加失败123");
    }


    @RequestMapping({"/listallchapter"})
    @ResponseBody
    public ServerResponse listall(@RequestParam Map map, HttpSession session, @RequestParam(required = false) Integer r) {
/*  48 */     Chapter chapter = new Chapter();
/*  49 */     if (r.intValue() == 2) {
/*  50 */       chapter.setBookid((Integer)session.getAttribute("bookid"));
      } else {
/*  52 */       chapter.setBookid((Integer)session.getAttribute("bookid"));
/*  53 */       chapter.setTime("立即发布");
      }
/*  55 */     chapter.setBunding((String)map.get("bunding"));
/*  56 */     List<Chapter> chapterlist = this.chapterService.selectAllChapter(chapter);
/*  57 */     if (chapterlist.size() > 0) {
/*  58 */       ArrayList<Integer> myArrayList = new ArrayList();
/*  59 */       for (Chapter c : chapterlist) {
/*  60 */         myArrayList.add(c.getArray());
        }
/*  62 */       session.setAttribute("myArrayList", myArrayList);
/*  63 */       return ServerResponse.createBySuccess("查询章节成功", chapterlist);
      }
/*  65 */     return ServerResponse.createByErrorMessage("找不到章节信息");
    }


    @RequestMapping({"/selectContent"})
    @ResponseBody
    public ServerResponse selectContent(@RequestParam Map map, HttpSession session) {
/*  72 */     List<Chapter> chapterlist = null;
/*  73 */     if (map.get("i") != null && Integer.parseInt((String)map.get("i")) == 1) {
/*  74 */       int array = Integer.parseInt((String)map.get("array"));
/*  75 */       ArrayList<Integer> myNewList = (ArrayList)session.getAttribute("myArrayList");
/*  76 */       for (int i = 0; i < myNewList.size(); i++) {
/*  77 */         if (array == ((Integer)myNewList.get(i)).intValue()) {
/*  78 */           if (i == 0) {
/*  79 */             return ServerResponse.createByErrorMessage("当前已是第一章");
            }
/*  81 */           array = ((Integer)myNewList.get(i - 1)).intValue();

            break;
          }
        }
/*  86 */       chapterlist = this.chapterService.selectContent(Integer.valueOf(array));
/*  87 */     } else if (map.get("i") != null && Integer.parseInt((String)map.get("i")) == 2) {
/*  88 */       int array = Integer.parseInt((String)map.get("array"));
/*  89 */       ArrayList<Integer> myNewList = (ArrayList)session.getAttribute("myArrayList");
/*  90 */       for (int i = 0; i < myNewList.size(); i++) {
/*  91 */         if (array == ((Integer)myNewList.get(i)).intValue()) {
/*  92 */           if (i == myNewList.size() - 1) {
/*  93 */             return ServerResponse.createByErrorMessage("您已读到最后一章");
            }
/*  95 */           array = ((Integer)myNewList.get(i + 1)).intValue();

            break;
          }
        }
/* 100 */       chapterlist = this.chapterService.selectContent(Integer.valueOf(array));
      } else {
/* 102 */       chapterlist = this.chapterService.selectContent(Integer.valueOf(Integer.parseInt((String)map.get("array"))));
      }
/* 104 */     if (chapterlist.size() > 0) {
/* 105 */       session.setAttribute("array", map.get("array"));
/* 106 */       return ServerResponse.createBySuccess("查询章节成功", chapterlist);
      }
/* 108 */     return ServerResponse.createByErrorMessage("找不到章节信息");
    }


    @RequestMapping({"/selectContentBybookid"})
    @ResponseBody
    public ServerResponse selectContentBybookid(@RequestParam Map map, HttpSession session) {
/* 115 */     String chapters = this.chapterService.selectContentByBookid(Integer.valueOf(Integer.parseInt((String)map.get("bookid"))));
/* 116 */     if (chapters != null) {
/* 117 */       return ServerResponse.createBySuccess(0, "查询章节成功", chapters);
      }
/* 119 */     return ServerResponse.createByErrorMessage("暂无章节信息");
    }

    @RequestMapping({"/del"})
    @ResponseBody
    public ServerResponse delConpter(@RequestParam Map map, HttpSession session) {
/* 125 */     if (this.chapterService.delChapter(Integer.valueOf(Integer.parseInt((String)session.getAttribute("array")))) > 0) {
/* 126 */       return ServerResponse.createBySuccessMessage("删除章节成功");
      }
/* 128 */     System.out.println("在这里");
/* 129 */     return ServerResponse.createByErrorMessage("删除章节失败123");
    }

    @RequestMapping({"/update"})
    @ResponseBody
    public ServerResponse updateChapter(@RequestParam int bookid, @RequestParam int count, @RequestParam Map map, HttpSession session) {
/* 135 */     if (((Integer)session.getAttribute("userType")).intValue() == 0 || ((Integer)session.getAttribute("userType")).intValue() == 1) {
/* 136 */       System.out.println("type");
/* 137 */       Chapter chapter1 = new Chapter();
/* 138 */       chapter1.setTime("审核通过");
/* 139 */       chapter1.setArray(Integer.valueOf(Integer.parseInt((String)session.getAttribute("array"))));
/* 140 */       if (this.chapterService.updateChapter(chapter1) > 0) {
/* 141 */         return ServerResponse.createBySuccessMessage("审核通过");
        }
/* 143 */       return ServerResponse.createByErrorMessage("审核失败");
      }

/* 146 */     System.out.println("123");
/* 147 */     Chapter chapter = new Chapter();
/* 148 */     chapter.setBookid(Integer.valueOf(bookid));
/* 149 */     chapter.setBunding((String)map.get("bunding"));
/* 150 */     chapter.setChapter((String)map.get("chapter"));
/* 151 */     chapter.setContent((String)map.get("content"));
/* 152 */     chapter.setCount(Integer.valueOf(count));
/* 153 */     chapter.setModle((String)map.get("modle"));
/* 154 */     chapter.setTime("待审核");
/* 155 */     chapter.setArray(Integer.valueOf(Integer.parseInt((String)session.getAttribute("array"))));
/* 156 */     if (this.chapterService.updateChapter(chapter) > 0) {
/* 157 */       return ServerResponse.createBySuccessMessage("更新成功");
      }
/* 159 */     return ServerResponse.createByErrorMessage("更新失败");
    }



    @RequestMapping({"/updateTime"})
    @ResponseBody
    public ServerResponse updateTime(@RequestParam Map map, HttpSession session) {
/* 167 */     if (((Integer)session.getAttribute("userType")).intValue() == 0 || ((Integer)session.getAttribute("userType")).intValue() == 1) {
/* 168 */       Chapter chapter1 = new Chapter();
/* 169 */       chapter1.setTime("立即发布");
/* 170 */       chapter1.setArray(Integer.valueOf(Integer.parseInt((String)session.getAttribute("array"))));
/* 171 */       chapter1.setAdmin_id((Integer)session.getAttribute("userid"));
/* 172 */       chapter1.setAdmin_name((String)session.getAttribute("username"));
/* 173 */       Date date = new Date();
/* 174 */       Date date1 = new Date(date.getTime());
/* 175 */       chapter1.setPath_time(date1);
/* 176 */       if (this.chapterService.updateTime(chapter1) > 0) {
/* 177 */         return ServerResponse.createBySuccessMessage("审核通过");
        }
/* 179 */       return ServerResponse.createByErrorMessage("审核失败");
      }

/* 182 */     Chapter chapter = new Chapter();
/* 183 */     chapter.setTime("立即发布");
/* 184 */     chapter.setArray(Integer.valueOf(Integer.parseInt((String)session.getAttribute("array"))));
/* 185 */     if (this.chapterService.updateTime(chapter) > 0) {
/* 186 */       return ServerResponse.createBySuccessMessage("审核通过");
      }
/* 188 */     return ServerResponse.createByErrorMessage("审核失败");
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\ChapterControllser.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */