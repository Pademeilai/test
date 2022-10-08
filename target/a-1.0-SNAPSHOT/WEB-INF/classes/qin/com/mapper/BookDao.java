package  qin.com.mapper;

import java.util.List;
import qin.com.entity.Book;

public interface BookDao {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Book paramBook);
  
  int insertSelective(Book paramBook);
  
  List<Book> selectByUserid(Integer paramInteger);
  
  List<Book> selectByPrimaryKey(Integer paramInteger);
  
  List<Book> selectBookTime();
  
  int updateByPrimaryKeySelective(Book paramBook);
  
  int updateByPrimaryKey(Book paramBook);
  
  List<Book> selectAllBook(String paramString);
  
  List<Book> selectByshare();
  
  String selectByBookid(Integer paramInteger);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\BookDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */