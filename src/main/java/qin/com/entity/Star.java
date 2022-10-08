/*    */ package qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Star
/*    */   implements Serializable
/*    */ {
/*    */   private Integer starid;
/*    */   private Integer readerid;
/*    */   private Integer bookid;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getStarid() {
/* 19 */     return this.starid;
/*    */   }
/*    */   
/*    */   public void setStarid(Integer starid) {
/* 23 */     this.starid = starid;
/*    */   }
/*    */   
/*    */   public Integer getReaderid() {
/* 27 */     return this.readerid;
/*    */   }
/*    */   
/*    */   public void setReaderid(Integer readerid) {
/* 31 */     this.readerid = readerid;
/*    */   }
/*    */   
/*    */   public Integer getBookid() {
/* 35 */     return this.bookid;
/*    */   }
/*    */   
/*    */   public void setBookid(Integer bookid) {
/* 39 */     this.bookid = bookid;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Star.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */