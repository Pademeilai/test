package  qin.com.service;

import java.util.List;
import qin.com.entity.Viewnews;

public interface ViewnewsService {
  int insert(Viewnews paramViewnews);
  
  List<Viewnews> selectall();
  
  List<Viewnews> selectnews(Integer paramInteger);
  
  int updateByPrimaryKey(Viewnews paramViewnews);
  
  int deleteByPrimaryKey(Integer paramInteger);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\ViewnewsService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */