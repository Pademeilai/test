package  qin.com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import qin.com.entity.Admin;

public interface AdminDao {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Admin paramAdmin);
  
  int insertSelective(Admin paramAdmin);
  
  Admin selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Admin paramAdmin);
  
  int updateByPrimaryKey(Admin paramAdmin);
  
  List<Admin> selectAllAdmin();
  
  int checkAdmin(@Param("name") String paramString);
  
  int checkEmail(@Param("Email") String paramString);
  
  int checkPhone(@Param("phone") String paramString);
  
  int checkPass(@Param("pass") String paramString);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\AdminDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */