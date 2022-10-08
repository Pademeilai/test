package  qin.com.service;

import java.util.List;
import qin.com.entity.News;

public interface NewsService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(News paramNews);
  
  int insertSelective(News paramNews);
  
  News selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(News paramNews);
  
  int updateByPrimaryKey(News paramNews);
  
  List<News> selectAllNews();
  
  int count(Integer paramInteger);
  
  List<News> selectMaxNew();
  
  List<News> selectOrderByCount();
  
  List<News> selectLike(String paramString);
  
  List<News> selectAsk();
  
  List<News> selectMy(Integer paramInteger);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\NewsService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */