package  qin.com.mapper;

import qin.com.entity.Star;

public interface StarDao {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Star paramStar);
  
  int insertSelective(Star paramStar);
  
  Star selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Star paramStar);
  
  int updateByPrimaryKey(Star paramStar);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\StarDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */