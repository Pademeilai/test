/*    */ package  qin.com.entity;
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
/*    */ 
/*    */ public class Viewnews
/*    */   implements Serializable
/*    */ {
/*    */   private Integer viewnewsid;
/*    */   private String username;
/*    */   private Integer newsid;
/*    */   private String titel;
/*    */   private String content;
/*    */   private String remark;
/*    */   private Date time;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getViewnewsid() {
/* 26 */     return this.viewnewsid;
/*    */   }
/*    */   
/*    */   public void setViewnewsid(Integer viewsid) {
/* 30 */     this.viewnewsid = viewsid;
/*    */   }
/*    */   
/*    */   public Date getTime() {
/* 34 */     return this.time;
/*    */   }
/*    */   
/*    */   public void setTime(Date time) {
/* 38 */     this.time = time;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public String getUsername() {
/* 44 */     return this.username;
/*    */   }
/*    */   
/*    */   public void setUsername(String username) {
/* 48 */     this.username = username;
/*    */   }
/*    */   
/*    */   public Integer getNewsid() {
/* 52 */     return this.newsid;
/*    */   }
/*    */   
/*    */   public void setNewsid(Integer newsid) {
/* 56 */     this.newsid = newsid;
/*    */   }
/*    */   
/*    */   public String getTitel() {
/* 60 */     return this.titel;
/*    */   }
/*    */   
/*    */   public void setTitel(String titel) {
/* 64 */     this.titel = titel;
/*    */   }
/*    */   
/*    */   public String getContent() {
/* 68 */     return this.content;
/*    */   }
/*    */   
/*    */   public void setContent(String content) {
/* 72 */     this.content = content;
/*    */   }
/*    */   
/*    */   public String getRemark() {
/* 76 */     return this.remark;
/*    */   }
/*    */   
/*    */   public void setRemark(String remark) {
/* 80 */     this.remark = remark;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Viewnews.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */