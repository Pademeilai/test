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
/*    */ 
/*    */ public class Book
/*    */   implements Serializable
/*    */ {
/*    */   private Integer bookid;
/*    */   private Integer userid;
/*    */   private String author;
/*    */   private String name;
/*    */   private String type;
/*    */   private String url;
/*    */   private String remark;
/*    */   private Integer share;
/*    */   private Integer array;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getShare() {
/* 27 */     return this.share;
/*    */   }
/*    */   
/*    */   public void setShare(Integer share) {
/* 31 */     this.share = share;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public Integer getArray() {
/* 37 */     return this.array;
/*    */   }
/*    */   
/*    */   public void setArray(Integer array) {
/* 41 */     this.array = array;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public Integer getBookid() {
/* 47 */     return this.bookid;
/*    */   }
/*    */   
/*    */   public void setBookid(Integer bookid) {
/* 51 */     this.bookid = bookid;
/*    */   }
/*    */   
/*    */   public Integer getUserid() {
/* 55 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 59 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getAuthor() {
/* 63 */     return this.author;
/*    */   }
/*    */   
/*    */   public void setAuthor(String author) {
/* 67 */     this.author = author;
/*    */   }
/*    */   
/*    */   public String getName() {
/* 71 */     return this.name;
/*    */   }
/*    */   
/*    */   public void setName(String name) {
/* 75 */     this.name = name;
/*    */   }
/*    */   
/*    */   public String getType() {
/* 79 */     return this.type;
/*    */   }
/*    */   
/*    */   public void setType(String type) {
/* 83 */     this.type = type;
/*    */   }
/*    */   
/*    */   public String getUrl() {
/* 87 */     return this.url;
/*    */   }
/*    */   
/*    */   public void setUrl(String url) {
/* 91 */     this.url = url;
/*    */   }
/*    */   
/*    */   public String getRemark() {
/* 95 */     return this.remark;
/*    */   }
/*    */   
/*    */   public void setRemark(String remark) {
/* 99 */     this.remark = remark;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Book.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */