package  qin.com.service;

import qin.com.entity.Reader;

public interface ReaderService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Reader paramReader);
  
  int insertSelective(Reader paramReader);
  
  Reader selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Reader paramReader);
  
  int updateByPrimaryKey(Reader paramReader);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\ReaderService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */