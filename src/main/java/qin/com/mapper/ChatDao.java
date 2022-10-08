package qin.com.mapper;

import qin.com.entity.Chat;

public interface ChatDao {
  int insert(Chat paramChat);
  
  Chat selectByPrimaryKey(Integer paramInteger);
  
  int selectNews();
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\ChatDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */