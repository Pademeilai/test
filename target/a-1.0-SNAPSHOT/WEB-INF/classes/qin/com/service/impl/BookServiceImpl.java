/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Book;
/*    */ import qin.com.mapper.BookDao;
/*    */ import qin.com.service.BookService;
/*    */ 
/*    */ @Service("bookServiceImpl")
/*    */ public class BookServiceImpl implements BookService {
/*    */   @Autowired
/*    */   private BookDao bookMapper;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer bookid) {
/* 16 */     return this.bookMapper.deleteByPrimaryKey(bookid);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insert(Book record) {
/* 21 */     return this.bookMapper.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int insertSelective(Book record) {
/* 26 */     return this.bookMapper.insertSelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Book> selectByUserid(Integer userId) {
/* 31 */     return this.bookMapper.selectByUserid(userId);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Book> selectByPrimaryKey(Integer bookId) {
/* 36 */     return this.bookMapper.selectByPrimaryKey(bookId);
/*    */   }
/*    */ 
/*    */   
/*    */   public String selectByBookid(Integer bookid) {
/* 41 */     return this.bookMapper.selectByBookid(bookid);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Book> selectBookTime() {
/* 46 */     return this.bookMapper.selectBookTime();
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKeySelective(Book record) {
/* 51 */     return this.bookMapper.updateByPrimaryKeySelective(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(Book record) {
/* 56 */     return this.bookMapper.updateByPrimaryKey(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Book> selectAllBook(String type) {
/* 61 */     return this.bookMapper.selectAllBook(type);
/*    */   }
/*    */ 
/*    */   
/*    */   public List<Book> selectByshare() {
/* 66 */     return this.bookMapper.selectByshare();
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\BookServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */