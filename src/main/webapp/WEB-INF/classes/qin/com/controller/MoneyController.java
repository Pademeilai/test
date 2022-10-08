/*    */ package  qin.com.controller;
/*    */ 
/*    */ import java.util.Map;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Controller;
/*    */ import org.springframework.web.bind.annotation.RequestMapping;
/*    */ import org.springframework.web.bind.annotation.RequestParam;
/*    */ import org.springframework.web.bind.annotation.ResponseBody;
/*    */ import qin.com.common.ServerResponse;
/*    */ import qin.com.entity.Money;
/*    */ import qin.com.mapper.MoneyDao;
/*    */ 
/*    */ 
/*    */ @Controller
/*    */ @RequestMapping({"money"})
/*    */ public class MoneyController
/*    */ {
/*    */   @Autowired
/*    */   private MoneyDao moneyDao;
/*    */   
/*    */   @RequestMapping({"insert"})
/*    */   public void insert(HttpSession session) {
/* 24 */     Money money = new Money();
/* 25 */     money.setUserid((Integer)session.getAttribute("userid"));
/* 26 */     money.setUsername((String)session.getAttribute("username"));
/* 27 */     money.setBalance(Integer.valueOf(0));
/* 28 */     this.moneyDao.insert(money);
/*    */   }
/*    */   @RequestMapping({"selectByPrimaryKey"})
/*    */   @ResponseBody
/*    */   public ServerResponse selectByPrimaryKey(HttpSession session) {
/* 33 */     Money userid = this.moneyDao.selectByPrimaryKey((Integer)session.getAttribute("userid"));
/* 34 */     if (userid != null) {
/* 35 */       return ServerResponse.createBySuccess("余额", userid.getBalance());
/*    */     }
/* 37 */     return ServerResponse.createByErrorMessage("查询余额失败");
/*    */   }
/*    */   
/*    */   @RequestMapping({"updateByPrimaryKey"})
/*    */   @ResponseBody
/*    */   public ServerResponse updateByPrimaryKey(@RequestParam Map map, HttpSession session) {
/* 43 */     Money userid1 = this.moneyDao.selectByPrimaryKey((Integer)session.getAttribute("userid"));
/*    */     
/* 45 */     if (userid1 != null && userid1.getBalance().intValue() > Integer.parseInt((String)map.get("money"))) {
/* 46 */       Money money = new Money();
/* 47 */       money.setBalance(Integer.valueOf(Integer.parseInt((String)map.get("money"))));
/*    */       
/* 49 */       money.setUserid((Integer)session.getAttribute("userid"));
/* 50 */       int i1 = this.moneyDao.updateByPrimaryKey1(money);
/*    */       
/* 52 */       money.setUserid(Integer.valueOf(Integer.parseInt((String)map.get("userid"))));
/* 53 */       int i = this.moneyDao.updateByPrimaryKey(money);
/*    */       
/* 55 */       if (i > 0 && i1 > 0) {
/* 56 */         return ServerResponse.createBySuccess("打赏成功", money);
/*    */       }
/* 58 */       return ServerResponse.createByErrorMessage("对方账号异常，打赏失败");
/*    */     } 
/*    */     
/* 61 */     return ServerResponse.createByErrorMessage("客官，您的余额已不足");
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\MoneyController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */