/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Author;
/*    */ import qin.com.mapper.AuthorDao;
/*    */ import qin.com.service.AuthorService;
/*    */ 
/*    */ 
/*    */ @Service("authorServiceImpl")
/*    */ public class AuthorServiceImpl
/*    */   implements AuthorService
/*    */ {
/*    */   @Autowired
/*    */   private AuthorDao authorDao;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer authorId) {
/* 18 */     return this.authorDao.deleteByPrimaryKey(authorId);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(Author record) {
/* 23 */     return this.authorDao.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(Author record) {
/* 28 */     return this.authorDao.insertSelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public Author selectByPrimaryKey(Integer userid) {
/* 33 */     return this.authorDao.selectByPrimaryKey(userid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(Author record) {
/* 38 */     return this.authorDao.updateByPrimaryKeySelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(Author record) {
/* 43 */     return this.authorDao.updateByPrimaryKey(record);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\AuthorServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */