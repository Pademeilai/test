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
/*    */ 
/*    */ 
/*    */ public class User
/*    */   implements Serializable
/*    */ {
/*    */   private Integer userid;
/*    */   private String username;
/*    */   private String password;
/*    */   private Integer type;
/*    */   private Integer permission;
/*    */   private Integer applyfor;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getApplyfor() {
/* 26 */     return this.applyfor;
/*    */   }
/*    */   
/*    */   public void setApplyfor(Integer applyfor) {
/* 30 */     this.applyfor = applyfor;
/*    */   }
/*    */   
/*    */   public Integer getPermission() {
/* 34 */     return this.permission;
/*    */   }
/*    */   
/*    */   public void setPermission(Integer permission) {
/* 38 */     this.permission = permission;
/*    */   }
/*    */   
/*    */   public void setType(Integer type) {
/* 42 */     this.type = type;
/*    */   }
/*    */   
/*    */   public Integer getType() {
/* 46 */     return this.type;
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public Integer getUserid() {
/* 53 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 57 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getUsername() {
/* 61 */     return this.username;
/*    */   }
/*    */   
/*    */   public void setUsername(String username) {
/* 65 */     this.username = username;
/*    */   }
/*    */   
/*    */   public String getPassword() {
/* 69 */     return this.password;
/*    */   }
/*    */   
/*    */   public void setPassword(String password) {
/* 73 */     this.password = password;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\User.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */