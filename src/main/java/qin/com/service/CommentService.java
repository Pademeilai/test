package  qin.com.service;

import qin.com.entity.Comment;

public interface CommentService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Comment paramComment);
  
  int insertSelective(Comment paramComment);
  
  Comment selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Comment paramComment);
  
  int updateByPrimaryKey(Comment paramComment);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\CommentService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */