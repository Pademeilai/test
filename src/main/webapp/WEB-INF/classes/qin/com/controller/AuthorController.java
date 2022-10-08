/*    */ package  qin.com.controller;
/*    */ 
/*    */ import java.util.Map;
/*    */ import javax.annotation.Resource;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Controller;
/*    */ import org.springframework.web.bind.annotation.RequestMapping;
/*    */ import org.springframework.web.bind.annotation.RequestParam;
/*    */ import org.springframework.web.bind.annotation.ResponseBody;
/*    */ import qin.com.common.ServerResponse;
/*    */ import qin.com.entity.Author;
/*    */ import qin.com.service.AuthorService;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Controller
/*    */ @RequestMapping({"/author"})
/*    */ public class AuthorController
/*    */ {
/*    */   @Resource(name = "authorServiceImpl")
/*    */   @Autowired
/*    */   private AuthorService authorService;
/*    */   
/*    */   @RequestMapping({"/insert"})
/*    */   @ResponseBody
/*    */   public ServerResponse insert(@RequestParam Map map, HttpSession session) {
/* 35 */     Author author = new Author();
/* 36 */     author.setUserId((Integer)session.getAttribute("userid"));
/* 37 */     author.setAuthorName((String)map.get("name"));
/* 38 */     author.setAuthorQq((String)map.get("qq"));
/* 39 */     author.setAuthorPhoMail((String)map.get("phone_mail"));
/* 40 */     if (this.authorService.insert(author) > 0) {
/* 41 */       session.setAttribute("author", map.get("name"));
/* 42 */       return ServerResponse.createBySuccess(0, "成为作家成功", author);
/*    */     } 
/* 44 */     return ServerResponse.createByErrorMessage("注册成为作家失败!");
/*    */   }
/*    */   
/*    */   @RequestMapping({"/author"})
/*    */   public String author(HttpSession session, @RequestParam(required = false) Integer r) {
/* 49 */     if (session.getAttribute("userid") != null) {
/* 50 */       if (r != null) {
/* 51 */         return "myhome";
/*    */       }
/*    */       
/* 54 */       Author author = this.authorService.selectByPrimaryKey((Integer)session.getAttribute("userid"));
/* 55 */       if (author != null) {
/* 56 */         session.setAttribute("author", author.getAuthorName());
/* 57 */         return "webmaster";
/*    */       } 
/* 59 */       return "author";
/*    */     } 
/*    */ 
/*    */ 
/*    */     
/* 64 */     return "error";
/*    */   }
/*    */ }


