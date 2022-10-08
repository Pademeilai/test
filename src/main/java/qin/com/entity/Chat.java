/*    */ package qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ import java.util.Date;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Chat
/*    */   implements Serializable
/*    */ {
/*    */   private Integer chatid;
/*    */   private Integer userid;
/*    */   private String username;
/*    */   private Date date;
/*    */   private String content;
/*    */   private Integer bookid;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getBookid() {
/* 24 */     return this.bookid;
/*    */   }
/*    */   
/*    */   public void setBookid(Integer bookid) {
/* 28 */     this.bookid = bookid;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public Integer getChatid() {
/* 34 */     return this.chatid;
/*    */   }
/*    */   
/*    */   public void setChatid(Integer chatid) {
/* 38 */     this.chatid = chatid;
/*    */   }
/*    */   
/*    */   public Integer getUserid() {
/* 42 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 46 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getUsername() {
/* 50 */     return this.username;
/*    */   }
/*    */   
/*    */   public void setUsername(String username) {
/* 54 */     this.username = username;
/*    */   }
/*    */   
/*    */   public Date getDate() {
/* 58 */     return this.date;
/*    */   }
/*    */   
/*    */   public void setDate(Date date) {
/* 62 */     this.date = date;
/*    */   }
/*    */   
/*    */   public String getContent() {
/* 66 */     return this.content;
/*    */   }
/*    */   
/*    */   public void setContent(String content) {
/* 70 */     this.content = content;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Chat.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */