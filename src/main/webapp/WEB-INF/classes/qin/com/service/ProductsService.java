package  qin.com.service;

import qin.com.entity.Products;

public interface ProductsService {
  int deleteByPrimaryKey(Integer paramInteger);
  
  int insert(Products paramProducts);
  
  int insertSelective(Products paramProducts);
  
  Products selectByPrimaryKey(Integer paramInteger);
  
  int updateByPrimaryKeySelective(Products paramProducts);
  
  int updateByPrimaryKey(Products paramProducts);
}


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\ProductsService.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */