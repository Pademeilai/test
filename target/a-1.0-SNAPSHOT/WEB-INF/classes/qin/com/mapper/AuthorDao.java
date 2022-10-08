package  qin.com.mapper;

import qin.com.entity.Author;

public interface AuthorDao {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Author paramAuthor);
  
  int insertSelective(Author paramAuthor);
  
  Author selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Author paramAuthor);
  
  int updateByPrimaryKey(Author paramAuthor);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\AuthorDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */