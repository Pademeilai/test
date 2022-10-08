/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Chapter;
/*    */ import qin.com.mapper.ChapterDao;
/*    */ import qin.com.service.ChapterService;
/*    */ 
/*    */ @Service("chapterServiceImpl")
/*    */ public class ChapterServiceImpl
/*    */   implements ChapterService
/*    */ {
/*    */   @Autowired
/*    */   private ChapterDao chapterDao;
/*    */   
/*    */   public int insert(Chapter record) {
/* 18 */     return this.chapterDao.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(Chapter record) {
/* 23 */     return this.chapterDao.insertSelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Chapter> selectAllChapter(Chapter chapter) {
/* 28 */     return this.chapterDao.selectAllChapter(chapter);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Chapter> selectContent(Integer array) {
/* 33 */     return this.chapterDao.selectContent(array);
/*    */   }
/*    */ 
/*    */   
/*    */   public int delChapter(Integer array) {
/* 38 */     return this.chapterDao.delChapter(array);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateChapter(Chapter chapter) {
/* 43 */     return this.chapterDao.updateChapter(chapter);
/*    */   }
/*    */ 
/*    */   
/*    */   public String selectContentByBookid(Integer bookid) {
/* 48 */     return this.chapterDao.selectContentByBookid(bookid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int selectarray(Integer bookid) {
/* 53 */     return this.chapterDao.selectarray(bookid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateTime(Chapter chapter) {
/* 58 */     return this.chapterDao.updateTime(chapter);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\ChapterServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */