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
/*    */ public class Information
/*    */   implements Serializable
/*    */ {
/*    */   private Integer userid;
/*    */   private String username;
/*    */   private String sex;
/*    */   private String introduce;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getUserid() {
/* 21 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 25 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getUsername() {
/* 29 */     return this.username;
/*    */   }
/*    */   
/*    */   public void setUsername(String username) {
/* 33 */     this.username = username;
/*    */   }
/*    */   
/*    */   public String getSex() {
/* 37 */     return this.sex;
/*    */   }
/*    */   
/*    */   public void setSex(String sex) {
/* 41 */     this.sex = sex;
/*    */   }
/*    */   
/*    */   public String getIntroduce() {
/* 45 */     return this.introduce;
/*    */   }
/*    */   
/*    */   public void setIntroduce(String introduce) {
/* 49 */     this.introduce = introduce;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Information.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */