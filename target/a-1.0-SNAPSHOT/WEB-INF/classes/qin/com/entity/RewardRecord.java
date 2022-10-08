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
/*    */ public class RewardRecord
/*    */   implements Serializable
/*    */ {
/*    */   private Integer rewardRecordId;
/*    */   private Integer myuserid;
/*    */   private Integer douserid;
/*    */   private Integer money;
/*    */   private Date date;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getRewardRecordId() {
/* 24 */     return this.rewardRecordId;
/*    */   }
/*    */   
/*    */   public void setRewardRecordId(Integer rewardRecordId) {
/* 28 */     this.rewardRecordId = rewardRecordId;
/*    */   }
/*    */   
/*    */   public Integer getMyuserid() {
/* 32 */     return this.myuserid;
/*    */   }
/*    */   
/*    */   public void setMyuserid(Integer myuserid) {
/* 36 */     this.myuserid = myuserid;
/*    */   }
/*    */   
/*    */   public Integer getDouserid() {
/* 40 */     return this.douserid;
/*    */   }
/*    */   
/*    */   public void setDouserid(Integer douserid) {
/* 44 */     this.douserid = douserid;
/*    */   }
/*    */   
/*    */   public Integer getMoney() {
/* 48 */     return this.money;
/*    */   }
/*    */   
/*    */   public void setMoney(Integer money) {
/* 52 */     this.money = money;
/*    */   }
/*    */   
/*    */   public Date getDate() {
/* 56 */     return this.date;
/*    */   }
/*    */   
/*    */   public void setDate(Date date) {
/* 60 */     this.date = date;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\RewardRecord.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */