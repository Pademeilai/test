/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Money;
/*    */ import qin.com.service.MoneyService;
/*    */ 
/*    */ @Service("moneyServiceImpl")
/*    */ public class MoneyServiceImpl
/*    */   implements MoneyService {
/*    */   @Autowired
/*    */   private MoneyService moneyService;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer userid) {
/* 15 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(Money record) {
/* 20 */     return this.moneyService.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(Money record) {
/* 25 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public Money selectByPrimaryKey(Integer userid) {
/* 30 */     return this.moneyService.selectByPrimaryKey(userid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(Money record) {
/* 35 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(Money record) {
/* 40 */     return this.moneyService.updateByPrimaryKey(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey1(Money record) {
/* 45 */     return this.moneyService.updateByPrimaryKey1(record);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\MoneyServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */