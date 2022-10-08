/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.User;
/*    */ import qin.com.mapper.UserDao;
/*    */ import qin.com.service.UserService;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Service("userServiceImpl")
/*    */ public class UserServiceImpl
/*    */   implements UserService
/*    */ {
/*    */   @Autowired
/*    */   private UserDao userDao;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer id) {
/* 24 */     return this.userDao.deleteByPrimaryKey(id);
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public int insert(User record) {
/* 32 */     return this.userDao.insert(record);
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public int insertSelective(User record) {
/* 40 */     return this.userDao.insertSelective(record);
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public User selectByPrimaryKey(String username) {
/* 48 */     return this.userDao.selectByPrimaryKey(username);
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public int updateByPrimaryKey(User record) {
/* 56 */     return this.userDao.updateByPrimaryKey(record);
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public List<User> selectAllUser(User record) {
/* 64 */     return this.userDao.selectAllUser(record);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\UserServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */