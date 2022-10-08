package  qin.com.service;

import qin.com.entity.Chat;

public interface ChatService {
  int insert(Chat paramChat);
  
  Chat selectByPrimaryKey(Integer paramInteger);
  
  int selectNews();
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\ChatService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */