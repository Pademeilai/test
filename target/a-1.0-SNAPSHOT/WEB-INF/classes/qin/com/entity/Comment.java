/*    */ package  qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Comment
/*    */   implements Serializable
/*    */ {
/*    */   private Integer commentid;
/*    */   private String content;
/*    */   private Integer readerid;
/*    */   private Integer bookid;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getCommentid() {
/* 21 */     return this.commentid;
/*    */   }
/*    */   
/*    */   public void setCommentid(Integer commentid) {
/* 25 */     this.commentid = commentid;
/*    */   }
/*    */   
/*    */   public String getContent() {
/* 29 */     return this.content;
/*    */   }
/*    */   
/*    */   public void setContent(String content) {
/* 33 */     this.content = content;
/*    */   }
/*    */   
/*    */   public Integer getReaderid() {
/* 37 */     return this.readerid;
/*    */   }
/*    */   
/*    */   public void setReaderid(Integer readerid) {
/* 41 */     this.readerid = readerid;
/*    */   }
/*    */   
/*    */   public Integer getBookid() {
/* 45 */     return this.bookid;
/*    */   }
/*    */   
/*    */   public void setBookid(Integer bookid) {
/* 49 */     this.bookid = bookid;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Comment.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */