/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Viewnews;
/*    */ import qin.com.mapper.ViewnewsDao;
/*    */ import qin.com.service.ViewnewsService;
/*    */ 
/*    */ @Service("viewNewsServiceImpl")
/*    */ public class ViewNewsServiceImpl
/*    */   implements ViewnewsService {
/*    */   @Autowired
/*    */   private ViewnewsDao viewnewsService;
/*    */   
/*    */   public int insert(Viewnews record) {
/* 17 */     return this.viewnewsService.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Viewnews> selectall() {
/* 22 */     return this.viewnewsService.selectall();
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public List<Viewnews> selectnews(Integer newsid) {
/* 28 */     return this.viewnewsService.selectnews(newsid);
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(Viewnews record) {
/* 34 */     return this.viewnewsService.updateByPrimaryKey(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int deleteByPrimaryKey(Integer viewnewsId) {
/* 39 */     return this.viewnewsService.deleteByPrimaryKey(viewnewsId);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\ViewNewsServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */