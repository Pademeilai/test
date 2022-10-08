/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.News;
/*    */ import qin.com.mapper.NewsDao;
/*    */ import qin.com.service.NewsService;
/*    */ 
/*    */ @Service("newsServiceImpl")
/*    */ public class NewsServiceImpl
/*    */   implements NewsService {
/*    */   @Autowired
/*    */   private NewsDao newsDao;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer newsid) {
/* 17 */     return this.newsDao.deleteByPrimaryKey(newsid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(News record) {
/* 22 */     return this.newsDao.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(News record) {
/* 27 */     return this.newsDao.insertSelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public News selectByPrimaryKey(Integer newsid) {
/* 32 */     return this.newsDao.selectByPrimaryKey(newsid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(News record) {
/* 37 */     return this.newsDao.updateByPrimaryKeySelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(News record) {
/* 42 */     return this.newsDao.updateByPrimaryKey(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<News> selectAllNews() {
/* 47 */     return this.newsDao.selectAllNews();
/*    */   }
/*    */ 
/*    */   
/*    */   public int count(Integer newsid) {
/* 52 */     return this.newsDao.count(newsid);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<News> selectMaxNew() {
/* 57 */     return this.newsDao.selectMaxNew();
/*    */   }
/*    */ 
/*    */   
/*    */   public List<News> selectOrderByCount() {
/* 62 */     return this.newsDao.selectOrderByCount();
/*    */   }
/*    */ 
/*    */   
/*    */   public List<News> selectLike(String title) {
/* 67 */     return this.newsDao.selectLike(title);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<News> selectAsk() {
/* 72 */     return this.newsDao.selectAsk();
/*    */   }
/*    */ 
/*    */   
/*    */   public List<News> selectMy(Integer userid) {
/* 77 */     return this.newsDao.selectMy(userid);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\NewsServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */