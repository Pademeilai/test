package qin.com.mapper;

import java.util.List;
import qin.com.entity.Chapter;

public interface ChapterDao {
  int insert(Chapter paramChapter);
  
  int insertSelective(Chapter paramChapter);
  
  List<Chapter> selectAllChapter(Chapter paramChapter);
  
  List<Chapter> selectContent(Integer paramInteger);
  
  int delChapter(Integer paramInteger);
  
  int updateChapter(Chapter paramChapter);
  
  String selectContentByBookid(Integer paramInteger);
  
  int selectarray(Integer paramInteger);
  
  int updateTime(Chapter paramChapter);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\mapper\ChapterDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */