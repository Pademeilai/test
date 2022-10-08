package  qin.com.controller;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import qin.com.common.ResponseCode;
import qin.com.common.ServerResponse;
import qin.com.entity.Book;
import qin.com.service.BookService;




@Controller
@RequestMapping({"/book"})
public class BookController
{
  @Resource(name = "bookServiceImpl")
  @Autowired
  private BookService bookService;

  @RequestMapping({"/delbook"})
  @ResponseBody
  public ServerResponse deleteByPrimaryKey(Integer id) {
/*  31 */     if (this.bookService.deleteByPrimaryKey(id) > 0) {
/*  32 */       return ServerResponse.createBySuccess(0);
    }
/*  34 */     return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "删除数据失败");
  }


  @RequestMapping({"/insert"})
  @ResponseBody
  public ServerResponse insert(@RequestParam Map map, HttpSession session) {
/*  41 */     Book book = new Book();

/*  43 */     book.setAuthor((String)session.getAttribute("author"));
/*  44 */     book.setUserid((Integer)session.getAttribute("userid"));
/*  45 */     book.setName((String)map.get("name"));
/*  46 */     book.setType((String)map.get("type"));
/*  47 */     book.setUrl((String)map.get("url"));
/*  48 */     book.setRemark((String)map.get("remark"));
/*  49 */     if (this.bookService.insert(book) > 0) {
/*  50 */       return ServerResponse.createBySuccess("添加数据成功", book);
    }
/*  52 */     return ServerResponse.createByError();
  }


  @RequestMapping({"/insertSelectivebook"})
  @ResponseBody
  public ServerResponse insertSelective(Book record) {
/*  59 */     Book book = new Book();
/*  60 */     book.setBookid(record.getBookid());
/*  61 */     book.setAuthor(record.getAuthor());
/*  62 */     book.setUserid(record.getUserid());
/*  63 */     book.setName(record.getName());
/*  64 */     book.setType(record.getType());
/*  65 */     book.setUrl(record.getUrl());
/*  66 */     book.setRemark(record.getRemark());
/*  67 */     if (this.bookService.insert(book) > 0) {
/*  68 */       return ServerResponse.createBySuccess("添加书籍成功", book);
    }
/*  70 */     return ServerResponse.createByErrorMessage("添加书籍失败");
  }


  @RequestMapping({"/selectByPrimaryKeybook"})
  @ResponseBody
  public ServerResponse selectByPrimaryKey(HttpSession session, @RequestParam(required = false) Integer bookid, @RequestParam(required = false) Integer r) {
/*  77 */     List<Book> book = null;
/*  78 */     if (bookid != null) {

/*  80 */       session.setAttribute("bookid", bookid);
/*  81 */       book = this.bookService.selectByPrimaryKey(bookid);
/*  82 */       session.setAttribute("book", book);
    }
/*  84 */     if (r != null)
    {
/*  86 */       book = this.bookService.selectByUserid((Integer)session.getAttribute("userid"));
    }
/*  88 */     if (book != null) {
/*  89 */       return ServerResponse.createBySuccess(1, book);
    }
/*  91 */     return ServerResponse.createByErrorMessage("找不到书籍信息");
  }


  @RequestMapping({"/selectByBookid"})
  @ResponseBody
  public ServerResponse selectByBookid(@RequestParam(required = false) Integer bookid, HttpSession session) {
/*  98 */     String book = this.bookService.selectByBookid(bookid);
/*  99 */     session.setAttribute("bookid", bookid);
/* 100 */     if (book != null) {
/* 101 */       return ServerResponse.createBySuccess(1, book);
    }
/* 103 */     return ServerResponse.createByErrorMessage("找不到章节信息");
  }


  @RequestMapping({"/updateByPrimaryKeySelectivebook"})
  @ResponseBody
  public ServerResponse updateByPrimaryKeySelective(Book record) {
/* 110 */     Book book = new Book();
/* 111 */     book.setBookid(record.getBookid());
/* 112 */     book.setAuthor(record.getAuthor());
/* 113 */     book.setUserid(record.getUserid());
/* 114 */     book.setName(record.getName());
/* 115 */     book.setType(record.getType());
/* 116 */     book.setUrl(record.getUrl());
/* 117 */     book.setRemark(record.getRemark());
/* 118 */     if (this.bookService.updateByPrimaryKeySelective(book) > 0) {
/* 119 */       return ServerResponse.createBySuccess("更新书籍信息成功", book);
    }
/* 121 */     return ServerResponse.createByErrorMessage("更新书籍信息失败");
  }


  @RequestMapping({"/updateByPrimaryKeybook"})
  @ResponseBody
  public ServerResponse updateByPrimaryKey(Book record) {
/* 128 */     Book book = new Book();
/* 129 */     book.setBookid(record.getBookid());
/* 130 */     book.setAuthor(record.getAuthor());
/* 131 */     book.setUserid(record.getUserid());
/* 132 */     book.setName(record.getName());
/* 133 */     book.setType(record.getType());
/* 134 */     book.setUrl(record.getUrl());
/* 135 */     book.setRemark(record.getRemark());
/* 136 */     if (this.bookService.updateByPrimaryKeySelective(book) > 0) {
/* 137 */       return ServerResponse.createBySuccess("更新书籍信息成功", book);
    }
/* 139 */     return ServerResponse.createByErrorMessage("更新书籍信息失败");
  }


  @RequestMapping({"/listallbook"})
  @ResponseBody
  public ServerResponse listall(@RequestParam Integer i) {
/* 146 */     List<Book> booklist = null;
/* 147 */     if (i.intValue() == 1) {
/* 148 */       booklist = this.bookService.selectAllBook("玄幻");
/* 149 */     } else if (i.intValue() == 2) {
/* 150 */       booklist = this.bookService.selectAllBook("修真");
/* 151 */     } else if (i.intValue() == 3) {
/* 152 */       booklist = this.bookService.selectAllBook("都市");
/* 153 */     } else if (i.intValue() == 4) {
/* 154 */       booklist = this.bookService.selectAllBook("历史");
/* 155 */     } else if (i.intValue() == 5) {
/* 156 */       booklist = this.bookService.selectAllBook("网游");
/* 157 */     } else if (i.intValue() == 6) {
/* 158 */       booklist = this.bookService.selectAllBook("科幻");
    }
/* 160 */     if (booklist.size() > 0) {
/* 161 */       return ServerResponse.createBySuccess("查询书籍成功", booklist);
    }
/* 163 */     return ServerResponse.createByErrorMessage("找不到书籍信息");
  }


  @RequestMapping({"/selectBookTime"})
  @ResponseBody
  public ServerResponse selectBookTime() {
/* 170 */     List<Book> booklist = this.bookService.selectBookTime();
/* 171 */     if (booklist.size() > 0) {
/* 172 */       return ServerResponse.createBySuccess("查询书籍成功", booklist);
    }
/* 174 */     return ServerResponse.createByErrorMessage("找不到书籍信息");
  }


  @RequestMapping({"/selectByshare"})
  @ResponseBody
  public ServerResponse selectByshare() {
/* 181 */     List<Book> booklist = this.bookService.selectByshare();
/* 182 */     if (booklist.size() > 0) {
/* 183 */       return ServerResponse.createBySuccess("查询书籍成功", booklist);
    }
/* 185 */     return ServerResponse.createByErrorMessage("找不到书籍信息");
  }
}