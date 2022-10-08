/*    */ package  qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class UserRoleKey
/*    */   implements Serializable
/*    */ {
/*    */   private Integer userid;
/*    */   private Integer roleid;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getUserid() {
/* 17 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 21 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public Integer getRoleid() {
/* 25 */     return this.roleid;
/*    */   }
/*    */   
/*    */   public void setRoleid(Integer roleid) {
/* 29 */     this.roleid = roleid;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\UserRoleKey.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */