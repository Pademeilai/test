package  qin.com.service;

import java.util.List;
import qin.com.entity.Book;

public interface BookService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Book paramBook);
  
  int insertSelective(Book paramBook);
  
  List<Book> selectByUserid(Integer paramInteger);
  
  List<Book> selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Book paramBook);
  
  int updateByPrimaryKey(Book paramBook);
  
  List<Book> selectAllBook(String paramString);
  
  List<Book> selectByshare();
  
  String selectByBookid(Integer paramInteger);
  
  List<Book> selectBookTime();
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\BookService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */