/*    */ package  qin.com.controller;
/*    */ 
/*    */ import java.sql.Date;
/*    */ import java.util.Date;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Controller;
/*    */ import org.springframework.web.bind.annotation.RequestMapping;
/*    */ import qin.com.entity.Money;
/*    */ import qin.com.entity.RewardRecord;
/*    */ import qin.com.mapper.RewardRecordDao;
/*    */ 
/*    */ @Controller
/*    */ @RequestMapping({"rewardRecod"})
/*    */ public class RewardRecodController
/*    */ {
/*    */   @RequestMapping({"insert"})
/*    */   public void insert(Money money, HttpSession session) {
/* 19 */     RewardRecord rewardRecord = new RewardRecord();
/* 20 */     rewardRecord.setMyuserid((Integer)session.getAttribute("userid"));
/* 21 */     rewardRecord.setDouserid(money.getUserid());
/* 22 */     rewardRecord.setMoney(money.getBalance());
/* 23 */     rewardRecord.setDate(new Date((new Date()).getTime()));
/* 24 */     this.rewardRecordDao.insert(rewardRecord);
/*    */   }
/*    */   
/*    */   @Autowired
/*    */   private RewardRecordDao rewardRecordDao;
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\RewardRecodController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */