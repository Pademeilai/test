/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Myhome;
/*    */ import qin.com.service.MyhomeService;
/*    */ 
/*    */ @Service
/*    */ public class MyhomeServiceImpl
/*    */   implements MyhomeService {
/*    */   @Autowired
/*    */   private MyhomeService myhomeService;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer myhomeid) {
/* 16 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(Myhome record) {
/* 21 */     return this.myhomeService.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(Myhome record) {
/* 26 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Myhome> selectByPrimaryKey(Integer userid) {
/* 31 */     return this.myhomeService.selectByPrimaryKey(userid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(Myhome record) {
/* 36 */     return 0;
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(Myhome record) {
/* 41 */     return 0;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\MyhomeServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */