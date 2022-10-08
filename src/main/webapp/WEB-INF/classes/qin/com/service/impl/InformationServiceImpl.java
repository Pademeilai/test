/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Information;
/*    */ import qin.com.mapper.InformationDao;
/*    */ import qin.com.service.InformationService;
/*    */ 
/*    */ @Service("informationServiceImpl")
/*    */ public class InformationServiceImpl implements InformationService {
/*    */   @Autowired
/*    */   private InformationDao informationDao;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer userid) {
/* 15 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(Information record) {
/* 20 */     return this.informationDao.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(Information record) {
/* 25 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public Information selectByPrimaryKey(Integer userid) {
/* 30 */     return this.informationDao.selectByPrimaryKey(userid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(Information record) {
/* 35 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(Information record) {
/* 40 */     return this.informationDao.updateByPrimaryKey(record);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\InformationServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */