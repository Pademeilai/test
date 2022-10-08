package qin.com.mapper;

import java.util.List;
import qin.com.entity.Myhome;

public interface MyhomeDao {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Myhome paramMyhome);
  
  int insertSelective(Myhome paramMyhome);
  
  List<Myhome> selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Myhome paramMyhome);
  
  int updateByPrimaryKey(Myhome paramMyhome);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\MyhomeDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */