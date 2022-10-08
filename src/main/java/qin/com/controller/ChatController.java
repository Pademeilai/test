  package  qin.com.controller;

  import java.sql.Date;
  import java.util.Map;
  import javax.servlet.http.HttpSession;
  import org.springframework.beans.factory.annotation.Autowired;
  import org.springframework.stereotype.Controller;
  import org.springframework.web.bind.annotation.RequestMapping;
  import org.springframework.web.bind.annotation.RequestParam;
  import org.springframework.web.bind.annotation.ResponseBody;
  import qin.com.common.ServerResponse;
  import qin.com.entity.Chat;
  import qin.com.service.ChatService;

  @Controller
  @RequestMapping({"chat"})
  public class ChatController
  {
    @Autowired
    private ChatService chatService;

    @RequestMapping({"select"})
    @ResponseBody
    public ServerResponse select(HttpSession session, @RequestParam(required = false) Integer r) {
/*  26 */     if (session.getAttribute("newChatid") == null) {
/*  27 */       int i = this.chatService.selectNews();
/*  28 */       session.setAttribute("newChatid", Integer.valueOf(i));
      } else {
/*  30 */       Integer newChatid = (Integer)session.getAttribute("newChatid");
/*  31 */       newChatid = Integer.valueOf(newChatid.intValue() + 1);
/*  32 */       if (newChatid != null) {
/*  33 */         if (r.intValue() == 1) {
/*  34 */           Chat chat = this.chatService.selectByPrimaryKey(newChatid);
/*  35 */           if (chat != null && chat.getBookid() == null) {
/*  36 */             session.setAttribute("newChatid", newChatid);
/*  37 */             if (chat.getUserid() == session.getAttribute("userid") && session.getAttribute("userid") != null) {
/*  38 */               return ServerResponse.createBySuccess(1);
              }
/*  40 */             return ServerResponse.createBySuccess("成功", chat);
            }

/*  43 */           return ServerResponse.createByErrorMessage("没有最新回复");
          }
/*  45 */         if (r.intValue() == 2) {
/*  46 */           Chat chat = this.chatService.selectByPrimaryKey(newChatid);
/*  47 */           if (chat != null && chat.getBookid() != null) {
/*  48 */             session.setAttribute("newChatid", newChatid);
/*  49 */             if (session.getAttribute("userid") != null && chat.getUserid() == session.getAttribute("userid")) {
/*  50 */               return ServerResponse.createBySuccess(1);
              }
/*  52 */             if (session.getAttribute("bookid") == chat.getBookid()) {
/*  53 */               return ServerResponse.createBySuccess("成功", chat);
              }
/*  55 */             return ServerResponse.createByErrorMessage("没有最新回复");
            }


/*  59 */           return ServerResponse.createByErrorMessage("没有最新回复");
          }
        } else {

/*  63 */         return ServerResponse.createByErrorMessage("没有最新回复");
        }
      }
/*  66 */     return ServerResponse.createByErrorMessage("没有最新回复");
    }

    @RequestMapping({"insert"})
    @ResponseBody
    public ServerResponse insert(@RequestParam Map map, @RequestParam(required = false) Integer r, HttpSession session) {
/*  72 */     if (session.getAttribute("userid") != null) {
/*  73 */       if (r != null && r.intValue() == 1) {
/*  74 */         Chat chat = new Chat();
/*  75 */         chat.setUserid((Integer)session.getAttribute("userid"));
/*  76 */         chat.setUsername((String)session.getAttribute("username"));
/*  77 */         chat.setContent((String)map.get("chatcontent"));
/*  78 */         chat.setDate(new Date((new java.util.Date()).getTime()));
/*  79 */         int i = this.chatService.insert(chat);
/*  80 */         if (i > 0) {
/*  81 */           return ServerResponse.createBySuccess(0);
          }
/*  83 */         return ServerResponse.createByErrorMessage("发言失败");
        }
/*  85 */       if (r != null && r.intValue() == 2) {
/*  86 */         Chat chat = new Chat();
/*  87 */         chat.setUserid((Integer)session.getAttribute("userid"));
/*  88 */         chat.setUsername((String)session.getAttribute("username"));
/*  89 */         chat.setContent((String)map.get("chatcontent"));
/*  90 */         chat.setDate(new Date((new java.util.Date()).getTime()));
/*  91 */         chat.setBookid((Integer)session.getAttribute("bookid"));
/*  92 */         int i = this.chatService.insert(chat);
/*  93 */         if (i > 0) {
/*  94 */           return ServerResponse.createBySuccess(0);
          }
/*  96 */         return ServerResponse.createByErrorMessage("发言失败");
        }

/*  99 */       return ServerResponse.createByErrorMessage("其他频道");
      }

/* 102 */     return ServerResponse.createByErrorMessage("登陆才可以发言客官");
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\ChatController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */