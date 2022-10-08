package  qin.com.mapper;

import qin.com.entity.UserRoleKey;

public interface UserRoleDao {
  int deleteByPrimaryKey(UserRoleKey paramUserRoleKey);
  
  int insert(UserRoleKey paramUserRoleKey);
  
  int insertSelective(UserRoleKey paramUserRoleKey);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\UserRoleDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */