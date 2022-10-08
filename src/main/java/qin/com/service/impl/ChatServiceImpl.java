/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Chat;
/*    */ import qin.com.mapper.ChatDao;
/*    */ import qin.com.service.ChatService;
/*    */ 
/*    */ @Service
/*    */ public class ChatServiceImpl implements ChatService {
/*    */   @Autowired
/*    */   private ChatDao chatDao;
/*    */   
/*    */   public int insert(Chat record) {
/* 15 */     return this.chatDao.insert(record);
/*    */   }
/*    */ 
/*    */   
/*    */   public Chat selectByPrimaryKey(Integer chat) {
/* 20 */     return this.chatDao.selectByPrimaryKey(chat);
/*    */   }
/*    */ 
/*    */   
/*    */   public int selectNews() {
/* 25 */     return this.chatDao.selectNews();
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\ChatServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */