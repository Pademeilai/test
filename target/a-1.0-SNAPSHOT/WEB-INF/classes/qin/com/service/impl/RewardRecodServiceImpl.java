/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.RewardRecord;
/*    */ import qin.com.mapper.RewardRecordDao;
/*    */ import qin.com.service.RewardRecodService;
/*    */ 
/*    */ @Service
/*    */ public class RewardRecodServiceImpl implements RewardRecodService {
/*    */   @Autowired
/*    */   private RewardRecordDao rewardRecordDao;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer rewardRecordId) {
/* 15 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(RewardRecord record) {
/* 20 */     return this.rewardRecordDao.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(RewardRecord record) {
/* 25 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public RewardRecord selectByPrimaryKey(Integer rewardRecordId) {
/* 30 */     return null;
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(RewardRecord record) {
/* 35 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(RewardRecord record) {
/* 40 */     return 0;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\RewardRecodServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */