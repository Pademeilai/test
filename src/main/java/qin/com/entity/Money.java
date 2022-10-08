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
/*    */ 
/*    */ 
/*    */ public class Money
/*    */   implements Serializable
/*    */ {
/*    */   private Integer userid;
/*    */   private String username;
/*    */   private Double day;
/*    */   private Double month;
/*    */   private Double year;
/*    */   private Integer balance;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getUserid() {
/* 25 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(Integer userid) {
/* 29 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getUsername() {
/* 33 */     return this.username;
/*    */   }
/*    */   
/*    */   public void setUsername(String username) {
/* 37 */     this.username = username;
/*    */   }
/*    */   
/*    */   public Double getDay() {
/* 41 */     return this.day;
/*    */   }
/*    */   
/*    */   public void setDay(Double day) {
/* 45 */     this.day = day;
/*    */   }
/*    */   
/*    */   public Double getMonth() {
/* 49 */     return this.month;
/*    */   }
/*    */   
/*    */   public void setMonth(Double month) {
/* 53 */     this.month = month;
/*    */   }
/*    */   
/*    */   public Double getYear() {
/* 57 */     return this.year;
/*    */   }
/*    */   
/*    */   public void setYear(Double year) {
/* 61 */     this.year = year;
/*    */   }
/*    */   
/*    */   public Integer getBalance() {
/* 65 */     return this.balance;
/*    */   }
/*    */   
/*    */   public void setBalance(Integer balance) {
/* 69 */     this.balance = balance;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Money.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */