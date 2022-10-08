/*    */ package qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Reader
/*    */   implements Serializable
/*    */ {
/*    */   private Integer readerid;
/*    */   private String name;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getReaderid() {
/* 17 */     return this.readerid;
/*    */   }
/*    */   
/*    */   public void setReaderid(Integer readerid) {
/* 21 */     this.readerid = readerid;
/*    */   }
/*    */   
/*    */   public String getName() {
/* 25 */     return this.name;
/*    */   }
/*    */   
/*    */   public void setName(String name) {
/* 29 */     this.name = name;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Reader.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */