package  qin.com.service;

import qin.com.entity.Money;

public interface MoneyService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Money paramMoney);
  
  int insertSelective(Money paramMoney);
  
  Money selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Money paramMoney);
  
  int updateByPrimaryKey(Money paramMoney);
  
  int updateByPrimaryKey1(Money paramMoney);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\MoneyService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */