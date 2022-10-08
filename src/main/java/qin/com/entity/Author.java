/*    */ package qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Author
/*    */   implements Serializable
/*    */ {
/*    */   private Integer authorId;
/*    */   private String authorName;
/*    */   private String authorQq;
/*    */   private String authorPhoMail;
/*    */   private String authorPass;
/*    */   private Integer userId;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getUserId() {
/* 23 */     return this.userId;
/*    */   }
/*    */   
/*    */   public void setUserId(Integer userId) {
/* 27 */     this.userId = userId;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public Integer getAuthorId() {
/* 33 */     return this.authorId;
/*    */   }
/*    */   
/*    */   public void setAuthorId(Integer authorId) {
/* 37 */     this.authorId = authorId;
/*    */   }
/*    */   
/*    */   public String getAuthorName() {
/* 41 */     return this.authorName;
/*    */   }
/*    */   
/*    */   public void setAuthorName(String authorName) {
/* 45 */     this.authorName = authorName;
/*    */   }
/*    */   
/*    */   public String getAuthorQq() {
/* 49 */     return this.authorQq;
/*    */   }
/*    */   
/*    */   public void setAuthorQq(String authorQq) {
/* 53 */     this.authorQq = authorQq;
/*    */   }
/*    */   
/*    */   public String getAuthorPhoMail() {
/* 57 */     return this.authorPhoMail;
/*    */   }
/*    */   
/*    */   public void setAuthorPhoMail(String authorPhoMail) {
/* 61 */     this.authorPhoMail = authorPhoMail;
/*    */   }
/*    */   
/*    */   public String getAuthorPass() {
/* 65 */     return this.authorPass;
/*    */   }
/*    */   
/*    */   public void setAuthorPass(String authorPass) {
/* 69 */     this.authorPass = authorPass;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Author.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */