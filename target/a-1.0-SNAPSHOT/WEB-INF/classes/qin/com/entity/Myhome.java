/*    */ package  qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Myhome
/*    */   implements Serializable
/*    */ {
/*    */   private Integer myhomeid;
/*    */   private Integer userid;
/*    */   private String bookname;
/*    */   private String url;
/*    */   private Integer bookid;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getBookid() {
/* 21 */     return this.bookid;
/*    */   }
/*    */   
/*    */   public void setBookid(Integer bookid) {
/* 25 */     this.bookid = bookid;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public Integer getMyhomeid() {
/* 31 */     return this.myhomeid;
/*    */   }
/*    */   
/*    */   public void setMyhomeid(Integer myhomeid) {
/* 35 */     this.myhomeid = myhomeid;
/*    */   }
/*    */   
/*    */   public Integer getUserid() {
/* 39 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 43 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getBookname() {
/* 47 */     return this.bookname;
/*    */   }
/*    */   
/*    */   public void setBookname(String bookname) {
/* 51 */     this.bookname = bookname;
/*    */   }
/*    */   
/*    */   public String getUrl() {
/* 55 */     return this.url;
/*    */   }
/*    */   
/*    */   public void setUrl(String url) {
/* 59 */     this.url = url;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Myhome.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */