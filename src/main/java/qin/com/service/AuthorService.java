package  qin.com.service;

import qin.com.entity.Author;

public interface AuthorService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Author paramAuthor);
  
  int insertSelective(Author paramAuthor);
  
  Author selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Author paramAuthor);
  
  int updateByPrimaryKey(Author paramAuthor);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\AuthorService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */