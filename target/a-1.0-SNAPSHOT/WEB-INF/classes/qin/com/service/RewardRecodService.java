package  qin.com.service;

import qin.com.entity.RewardRecord;

public interface RewardRecodService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(RewardRecord paramRewardRecord);
  
  int insertSelective(RewardRecord paramRewardRecord);
  
  RewardRecord selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(RewardRecord paramRewardRecord);
  
  int updateByPrimaryKey(RewardRecord paramRewardRecord);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\RewardRecodService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */