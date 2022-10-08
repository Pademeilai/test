package  qin.com.service;

import java.util.List;
import qin.com.entity.User;

public interface UserService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(User paramUser);
  
  int insertSelective(User paramUser);
  
  User selectByPrimaryKey(String paramString);
  
  int updateByPrimaryKey(User paramUser);
  
  List<User> selectAllUser(User paramUser);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\UserService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */