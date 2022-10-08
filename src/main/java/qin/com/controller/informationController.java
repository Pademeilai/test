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
/*    */ import qin.com.entity.Information;
/*    */ import qin.com.service.InformationService;
/*    */ 
/*    */ 
/*    */ @Controller
/*    */ @RequestMapping({"information"})
/*    */ public class informationController
/*    */ {
/*    */   @Autowired
/*    */   private InformationService informationService;
/*    */   
/*    */   @RequestMapping({"insert"})
/*    */   public void insert(HttpSession session) {
/* 24 */     Information information = new Information();
/* 25 */     information.setUserid((Integer)session.getAttribute("userid"));
/* 26 */     information.setUsername((String)session.getAttribute("username"));
/* 27 */     information.setSex("男");
/* 28 */     information.setIntroduce("暂无个性签名");
/* 29 */     this.informationService.insert(information);
/*    */   }
/*    */   @RequestMapping({"update"})
/*    */   @ResponseBody
/*    */   public ServerResponse update(@RequestParam Map map, HttpSession session) {
/* 34 */     Information information = new Information();
/* 35 */     information.setUserid((Integer)session.getAttribute("userid"));
/* 36 */     information.setUsername((String)map.get("username"));
/* 37 */     information.setSex((String)map.get("sex"));
/* 38 */     information.setIntroduce((String)map.get("introduce"));
/* 39 */     if (this.informationService.updateByPrimaryKey(information) > 0) {
/* 40 */       return ServerResponse.createBySuccess(0);
/*    */     }
/* 42 */     return ServerResponse.createBySuccessMessage("修改信息失败");
/*    */   }
/*    */ 
/*    */   
/*    */   @RequestMapping({"select"})
/*    */   @ResponseBody
/*    */   public ServerResponse select(HttpSession session) {
/* 49 */     Information information = this.informationService.selectByPrimaryKey((Integer)session.getAttribute("userid"));
/* 50 */     if (information != null) {
/* 51 */       return ServerResponse.createBySuccess("查询个人信息成功", information);
/*    */     }
/* 53 */     return ServerResponse.createByErrorMessage("查询个人信息失败");
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\informationController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */