/*    */ package  qin.com.controller;
/*    */ 
/*    */ import java.sql.Date;
/*    */ import java.util.List;
/*    */ import java.util.Map;
/*    */ import javax.annotation.Resource;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Controller;
/*    */ import org.springframework.web.bind.annotation.RequestMapping;
/*    */ import org.springframework.web.bind.annotation.RequestParam;
/*    */ import org.springframework.web.bind.annotation.ResponseBody;
/*    */ import qin.com.common.ServerResponse;
/*    */ import qin.com.entity.Viewnews;
/*    */ import qin.com.service.ViewnewsService;
/*    */ 
/*    */ @Controller
/*    */ @RequestMapping({"/viewnews"})
/*    */ public class ViewNewsController {
/*    */   @Resource(name = "viewNewsServiceImpl")
/*    */   @Autowired
/*    */   private ViewnewsService viewnewsService;
/*    */   
/*    */   @RequestMapping({"/selectnews"})
/*    */   @ResponseBody
/*    */   public ServerResponse selectnews(@RequestParam Map map) {
/* 28 */     List<Viewnews> viewnews = this.viewnewsService.selectnews(Integer.valueOf(Integer.parseInt((String)map.get("newsid"))));
/* 29 */     if (viewnews != null) {
/* 30 */       return ServerResponse.createBySuccess("查找成功", viewnews);
/*    */     }
/* 32 */     return ServerResponse.createByErrorMessage("暂无回复");
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   @RequestMapping({"/selectall"})
/*    */   @ResponseBody
/*    */   public ServerResponse selectall(@RequestParam Map map) {
/* 40 */     List<Viewnews> viewnews = this.viewnewsService.selectall();
/* 41 */     if (viewnews != null) {
/* 42 */       return ServerResponse.createBySuccess("查找成功", viewnews);
/*    */     }
/* 44 */     return ServerResponse.createByErrorMessage("暂无回复");
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   @RequestMapping({"insert"})
/*    */   @ResponseBody
/*    */   public ServerResponse insert(@RequestParam Map map, HttpSession session) {
/* 52 */     Viewnews viewnews = new Viewnews();
/* 53 */     viewnews.setUsername((String)session.getAttribute("username"));
/* 54 */     viewnews.setNewsid(Integer.valueOf(Integer.parseInt((String)map.get("newsid"))));
/* 55 */     viewnews.setTitel((String)map.get("chapter"));
/* 56 */     viewnews.setContent((String)map.get("content"));
/* 57 */     viewnews.setRemark("通过");
/* 58 */     viewnews.setTime(new Date((new java.util.Date()).getTime()));
/* 59 */     if (this.viewnewsService.insert(viewnews) > 0) {
/* 60 */       return ServerResponse.createBySuccess(0);
/*    */     }
/* 62 */     return ServerResponse.createByErrorMessage("回复失败");
/*    */   }
/*    */ 
/*    */   
/*    */   @RequestMapping({"updateByPrimaryKey"})
/*    */   @ResponseBody
/*    */   public ServerResponse updateByPrimaryKey(@RequestParam Map map, HttpSession session) {
/* 69 */     Viewnews viewnews = new Viewnews();
/* 70 */     viewnews.setViewnewsid(Integer.valueOf(Integer.parseInt((String)map.get("viewnewsid"))));
/* 71 */     viewnews.setRemark("被举报");
/* 72 */     if (this.viewnewsService.updateByPrimaryKey(viewnews) > 0) {
/* 73 */       return ServerResponse.createBySuccess(0);
/*    */     }
/* 75 */     return ServerResponse.createByErrorMessage("举报失败");
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   @RequestMapping({"del"})
/*    */   @ResponseBody
/*    */   public ServerResponse del(@RequestParam Map map) {
/* 83 */     if (this.viewnewsService.deleteByPrimaryKey(Integer.valueOf(Integer.parseInt((String)map.get("viewnewsid")))) > 0) {
/* 84 */       return ServerResponse.createBySuccess(0);
/*    */     }
/* 86 */     return ServerResponse.createByErrorMessage("举报失败");
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\ViewNewsController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */