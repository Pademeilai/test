  package  qin.com.controller;

  import java.io.IOException;
  import java.util.List;
  import java.util.Map;
  import javax.annotation.Resource;
  import javax.servlet.http.HttpServletRequest;
  import javax.servlet.http.HttpSession;
  import org.springframework.beans.factory.annotation.Autowired;
  import org.springframework.stereotype.Controller;
  import org.springframework.util.DigestUtils;
  import org.springframework.web.bind.annotation.RequestMapping;
  import org.springframework.web.bind.annotation.RequestParam;
  import org.springframework.web.bind.annotation.ResponseBody;
  import qin.com.common.ResponseCode;
  import qin.com.common.ServerResponse;
  import qin.com.entity.User;
  import qin.com.service.UserService;


  @Controller
  @RequestMapping({"/user"})
  public class UserController
  {
    @Resource(name = "userServiceImpl")
    @Autowired
    private UserService userService;

    @RequestMapping({"/delete"})
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(Integer id) {
/*  32 */     if (this.userService.deleteByPrimaryKey(id) > 0) {
/*  33 */       return ServerResponse.createBySuccess(1);
      }
/*  35 */     return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "删除数据失败");
    }


    @RequestMapping({"/insert"})
    @ResponseBody
    public ServerResponse insert(HttpServletRequest request, HttpSession session) {
/*  42 */     User user = new User();
/*  43 */     user.setUsername(request.getParameter("name"));
/*  44 */     user.setPassword(request.getParameter("pass"));
/*  45 */     user.setPermission(Integer.valueOf(1));
/*  46 */     user.setApplyfor(Integer.valueOf(2));
/*  47 */     user.setType(Integer.valueOf(2));
/*  48 */     String p1 = request.getParameter("pass");
/*  49 */     String p2 = request.getParameter("pass1");
/*  50 */     if (p1.equals(p2)) {
/*  51 */       if (this.userService.insert(user) > 0) {
/*  52 */         session.setAttribute("userid", user.getUserid());
/*  53 */         session.setAttribute("username", user.getUsername());
/*  54 */         session.setAttribute("userType", user.getType());
/*  55 */         return ServerResponse.createBySuccess("注册成功", user);
        }
/*  57 */       return ServerResponse.createByError();
      }

/*  60 */     return ServerResponse.createByErrorMessage("两次输入的密码不相同！");
    }


    @RequestMapping({"/insertSelective"})
    @ResponseBody
    public ServerResponse insertSelective(User record) {
/*  67 */     User user = new User();
/*  68 */     user.setUserid(record.getUserid());
/*  69 */     user.setUsername(DigestUtils.md5DigestAsHex(record.getUsername().getBytes()));
/*  70 */     user.setPassword(record.getPassword());
/*  71 */     if (this.userService.insert(user) > 0) {
/*  72 */       return ServerResponse.createBySuccess("添加管理数据成功", user);
      }
/*  74 */     return ServerResponse.createByErrorMessage("添加管理员数据失败");
    }


    @RequestMapping({"/selectByPrimaryKey"})
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpSession session, @RequestParam(required = false) Integer r, @RequestParam Map map) throws IOException {
/*  81 */     if (r != null && r.intValue() == 1) {
/*  82 */       String str = (String)map.get("username");
/*  83 */       User user1 = this.userService.selectByPrimaryKey(str);
/*  84 */       return ServerResponse.createBySuccess("查询成功", user1);
      }
/*  86 */     String name = request.getParameter("name");
/*  87 */     String pass = request.getParameter("pass");
/*  88 */     User user = this.userService.selectByPrimaryKey(name);
/*  89 */     if (user != null) {
/*  90 */       String ps = user.getPassword();
/*  91 */       if (ps.equals(pass)) {
/*  92 */         if (user.getPermission().intValue() == 1) {
/*  93 */           session.setAttribute("userid", user.getUserid());
/*  94 */           session.setAttribute("username", user.getUsername());
/*  95 */           session.setAttribute("userType", user.getType());
/*  96 */           return ServerResponse.createBySuccess(0, "登陆成功", user);
          }
/*  98 */         return ServerResponse.createByErrorMessage("您已被封号至无限期");
        }


/* 102 */       return ServerResponse.createByErrorMessage("密码错误");
      }

/* 105 */     return ServerResponse.createByErrorMessage("找不到用户");
    }



    @RequestMapping({"/updateByPrimaryKey"})
    @ResponseBody
    public ServerResponse updateByPrimaryKey(@RequestParam Map map, HttpSession session, @RequestParam(required = false) Integer r) {
/* 113 */     User user = new User();
/* 114 */     System.out.println(r);
/* 115 */     if (r != null && (r.intValue() == 0 || r.intValue() == 1)) {
/* 116 */       System.out.println("封号");
/* 117 */       user.setUserid(Integer.valueOf(Integer.parseInt((String)map.get("userid"))));
/* 118 */       if (r.intValue() == 0) {
/* 119 */         user.setPermission(Integer.valueOf(2));
        } else {
/* 121 */         user.setPermission(Integer.valueOf(1));
/* 122 */         System.out.println("getPermission=" + user.getPermission() + "\n");
        }
/* 124 */       this.userService.updateByPrimaryKey(user);
/* 125 */       return ServerResponse.createBySuccess(0);
/* 126 */     }  if (r != null && r.intValue() == 3) {
/* 127 */       System.out.println("申请成为管理员");
/* 128 */       user.setUserid((Integer)session.getAttribute("userid"));
/* 129 */       user.setApplyfor(Integer.valueOf(1));
/* 130 */       int i = this.userService.updateByPrimaryKey(user);
/* 131 */       if (i > 0) {
/* 132 */         return ServerResponse.createBySuccess(0);
        }
/* 134 */       return ServerResponse.createByErrorMessage("申请失败");
      }
/* 136 */     if (r != null && r.intValue() == 4) {
/* 137 */       System.out.println("任命管理员");
/* 138 */       user.setUserid(Integer.valueOf(Integer.parseInt((String)map.get("userid"))));
/* 139 */       user.setApplyfor(Integer.valueOf(2));
/* 140 */       if (Integer.parseInt((String)map.get("type")) == 1) {
/* 141 */         user.setType(Integer.valueOf(2));
/* 142 */         int j = this.userService.updateByPrimaryKey(user);
/* 143 */         if (j > 0) {
/* 144 */           return ServerResponse.createBySuccess(2);
          }
        } else {
/* 147 */         user.setType(Integer.valueOf(1));
/* 148 */         int j = this.userService.updateByPrimaryKey(user);
/* 149 */         if (j > 0) {
/* 150 */           return ServerResponse.createBySuccess(0);
          }
        }
/* 153 */       int i = this.userService.updateByPrimaryKey(user);
/* 154 */       if (i > 0) {
/* 155 */         return ServerResponse.createBySuccess(0);
        }
/* 157 */       return ServerResponse.createByErrorMessage("任命失败");
      }

/* 160 */     System.out.println("登陆");
/* 161 */     user.setUserid((Integer)session.getAttribute("userid"));
/* 162 */     user.setPassword((String)map.get("pass"));
/* 163 */     User user1 = this.userService.selectByPrimaryKey((String)session.getAttribute("username"));
/* 164 */     if (user1.getPassword().equals(map.get("oldpass"))) {
/* 165 */       if (this.userService.updateByPrimaryKey(user) > 0) {
/* 166 */         return ServerResponse.createBySuccess(0);
        }
/* 168 */       return ServerResponse.createByErrorMessage("修改失败");
      }

/* 171 */     return ServerResponse.createBySuccess(1, "原密码错误");
    }



    @RequestMapping({"/listall"})
    @ResponseBody
    public ServerResponse listall(@RequestParam(required = false) Integer r) {
/* 179 */     if (r != null && r.intValue() == 2) {
/* 180 */       User user = new User();
/* 181 */       user.setApplyfor(Integer.valueOf(1));
/* 182 */       List<User> users = this.userService.selectAllUser(user);
/* 183 */       if (users.size() > 0) {
/* 184 */         return ServerResponse.createBySuccess("查询用户成功", users);
        }
/* 186 */       return ServerResponse.createByErrorMessage("找不到管理员信息");
      }
/* 188 */     if (r != null && r.intValue() == 3) {
/* 189 */       User user = new User();
/* 190 */       user.setPermission(Integer.valueOf(2));
/* 191 */       List<User> users = this.userService.selectAllUser(user);
/* 192 */       if (users.size() > 0) {
/* 193 */         return ServerResponse.createBySuccess("查询用户成功", users);
        }
/* 195 */       return ServerResponse.createByErrorMessage("找不到管理员信息");
      }

/* 198 */     List<User> userlist = this.userService.selectAllUser(new User());
/* 199 */     if (userlist.size() > 0) {
/* 200 */       return ServerResponse.createBySuccess("查询用户成功", userlist);
      }
/* 202 */     return ServerResponse.createByErrorMessage("找不到管理员信息");
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\controller\UserController.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */