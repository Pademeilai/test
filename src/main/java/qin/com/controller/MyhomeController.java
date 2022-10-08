/*    */ package  qin.com.controller;
/*    */ 
/*    */ import java.util.List;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Controller;
/*    */ import org.springframework.web.bind.annotation.RequestMapping;
/*    */ import org.springframework.web.bind.annotation.ResponseBody;
/*    */ import qin.com.common.ServerResponse;
/*    */ import qin.com.entity.Book;
/*    */ import qin.com.entity.Myhome;
/*    */ import qin.com.mapper.MyhomeDao;
/*    */ 
/*    */ @Controller
/*    */ @RequestMapping({"myhome"})
/*    */ public class MyhomeController
/*    */ {
/*    */   @Autowired
/*    */   private MyhomeDao myhomeDao;
/*    */   
/*    */   @RequestMapping({"insert"})
/*    */   @ResponseBody
/*    */   public ServerResponse insert(HttpSession session) {
/* 24 */     Myhome myhome = new Myhome();
/* 25 */     myhome.setUserid((Integer)session.getAttribute("userid"));
/* 26 */     myhome.setBookid((Integer)session.getAttribute("bookid"));
/* 27 */     List<Book> book = (List<Book>)session.getAttribute("book");
/* 28 */     for (Book b : book) {
/* 29 */       myhome.setBookname(b.getName());
/* 30 */       myhome.setUrl(b.getUrl());
/*    */     } 
/* 32 */     int insert = this.myhomeDao.insert(myhome);
/* 33 */     if (insert > 0) {
/* 34 */       return ServerResponse.createBySuccess(0);
/*    */     }
/* 36 */     return ServerResponse.createByErrorMessage("加入书库失败");
/*    */   }
/*    */ 
/*    */   
/*    */   @RequestMapping({"selectByPrimaryKey"})
/*    */   @ResponseBody
/*    */   public ServerResponse selectByPrimaryKey(HttpSession session) {
/* 43 */     List<Myhome> myhomes = this.myhomeDao.selectByPrimaryKey((Integer)session.getAttribute("userid"));
/* 44 */     if (myhomes != null) {
/* 45 */       return ServerResponse.createBySuccess("查询成功", myhomes);
/*    */     }
/* 47 */     return ServerResponse.createBySuccessMessage("您还没有收藏过书籍");
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\MyhomeController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */