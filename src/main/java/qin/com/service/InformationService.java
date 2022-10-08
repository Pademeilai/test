package  qin.com.service;

import qin.com.entity.Information;

public interface InformationService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Information paramInformation);
  
  int insertSelective(Information paramInformation);
  
  Information selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Information paramInformation);
  
  int updateByPrimaryKey(Information paramInformation);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\InformationService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */