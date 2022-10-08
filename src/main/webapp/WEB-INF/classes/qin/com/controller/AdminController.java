  package  qin.com.controller;

  import java.io.IOException;
  import java.util.List;
  import javax.annotation.Resource;
  import javax.servlet.http.HttpServletRequest;
  import javax.servlet.http.HttpServletResponse;
  import javax.servlet.http.HttpSession;
  import org.apache.ibatis.annotations.Param;
  import org.springframework.beans.factory.annotation.Autowired;
  import org.springframework.stereotype.Controller;
  import org.springframework.util.DigestUtils;
  import org.springframework.web.bind.annotation.RequestMapping;
  import org.springframework.web.bind.annotation.RequestParam;
  import org.springframework.web.bind.annotation.ResponseBody;
  import qin.com.common.ResponseCode;
  import qin.com.common.ServerResponse;
  import qin.com.entity.Admin;
  import qin.com.service.AdminService;


  @Controller
  @RequestMapping({"/admin"})
  public class AdminController
  {
    @Resource(name = "adminServiceImpl")
    @Autowired
    private AdminService adminService;

    @RequestMapping({"/index"})
    public String index() {
/*  32 */     return "index";
    }


    @RequestMapping({"/book"})
    public String book() {
/*  38 */     return "book";
    }
    @RequestMapping({"/exit"})
    public String exit(HttpSession session) {
/*  42 */     session.setAttribute("userid", null);
/*  43 */     session.setAttribute("username", null);
/*  44 */     session.setAttribute("userType", null);
/*  45 */     return "index";
    }

    @RequestMapping({"/information"})
    public String information() {
/*  50 */     return "information";
    }

    @RequestMapping({"/myhome"})
    public String myhome() {
/*  55 */     return "myhome";
    }

    @RequestMapping({"/admin"})
    public String admin() {
/*  60 */     return "admin";
    }
    @RequestMapping({"/ordinaryAdmin"})
    public String ordinaryAdmin() {
/*  64 */     return "ordinaryAdmin";
    }

    @RequestMapping({"/webmaster"})
    public String webmaster() {
/*  69 */     return "webmaster";
    }

    @RequestMapping({"/news"})
    public String news() {
/*  74 */     return "news";
    }


    @RequestMapping({"/creation"})
    public String creation(@RequestParam Integer r, HttpSession session) {
/*  80 */     session.setAttribute("bookid", r);
/*  81 */     return "creation";
    }

    @RequestMapping({"/delete"})
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(Integer id) {
/*  87 */     if (this.adminService.deleteByPrimaryKey(id) > 0) {
/*  88 */       return ServerResponse.createBySuccess(1);
      }
/*  90 */     return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(), "删除数据失败");
    }


    @RequestMapping({"/insert"})
    @ResponseBody
    public ServerResponse insert(Admin record) {
/*  97 */     Admin admin = new Admin();
/*  98 */     admin.setName(record.getName());
/*  99 */     admin.setPass(DigestUtils.md5DigestAsHex(record.getPass().getBytes()));
/* 100 */     admin.setPhone(record.getPhone());
/* 101 */     admin.setEmail(record.getEmail());
/* 102 */     admin.setQq(record.getQq());
/* 103 */     if (this.adminService.insert(admin) > 0) {
/* 104 */       return ServerResponse.createBySuccess("添加数据成功", admin);
      }
/* 106 */     return ServerResponse.createByError();
    }


    @RequestMapping({"/insertSelective"})
    @ResponseBody
    public ServerResponse insertSelective(Admin record) {
/* 113 */     Admin admin = new Admin();
/* 114 */     admin.setName(record.getName());
/* 115 */     admin.setPass(DigestUtils.md5DigestAsHex(record.getPass().getBytes()));
/* 116 */     admin.setPhone(record.getPhone());
/* 117 */     admin.setEmail(record.getEmail());
/* 118 */     admin.setQq(record.getQq());
/* 119 */     if (this.adminService.insert(admin) > 0) {
/* 120 */       return ServerResponse.createBySuccess("添加管理数据成功", admin);
      }
/* 122 */     return ServerResponse.createByErrorMessage("添加管理员数据失败");
    }


    @RequestMapping({"/selectByPrimaryKey"})
    @ResponseBody
    public ServerResponse selectByPrimaryKey() throws IOException {
/* 129 */     Admin admin = this.adminService.selectByPrimaryKey(Integer.valueOf(1));
/* 130 */     if (admin != null) {
/* 131 */       return ServerResponse.createBySuccess(0, admin);
      }
/* 133 */     return ServerResponse.createByErrorMessage("找不到管理员");
    }


    @RequestMapping({"/updateByPrimaryKeySelective"})
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(Admin record) {
/* 140 */     Admin admin = new Admin();
/* 141 */     admin.setId(record.getId());
/* 142 */     admin.setName(record.getName());

/* 144 */     admin.setPass(DigestUtils.md5DigestAsHex(record.getPass().getBytes()));
/* 145 */     admin.setPhone(record.getPhone());
/* 146 */     admin.setEmail(record.getEmail());
/* 147 */     admin.setQq(record.getQq());
/* 148 */     if (this.adminService.updateByPrimaryKeySelective(admin) > 0) {
/* 149 */       return ServerResponse.createBySuccess("更新管理数据成功", admin);
      }
/* 151 */     return ServerResponse.createByErrorMessage("更新管理数据失败");
    }


    @RequestMapping({"/updateByPrimaryKey"})
    @ResponseBody
    public ServerResponse updateByPrimaryKey(Admin record) {
/* 158 */     Admin admin = new Admin();
/* 159 */     admin.setId(record.getId());
/* 160 */     admin.setName(record.getName());

/* 162 */     admin.setPass(DigestUtils.md5DigestAsHex(record.getPass().getBytes()));
/* 163 */     admin.setPhone(record.getPhone());
/* 164 */     admin.setEmail(record.getEmail());
/* 165 */     admin.setQq(record.getQq());
/* 166 */     if (this.adminService.updateByPrimaryKeySelective(admin) > 0) {
/* 167 */       return ServerResponse.createBySuccess("更新管理数据成功", admin);
      }
/* 169 */     return ServerResponse.createByErrorMessage("更新管理员数据失败");
    }


    @RequestMapping({"/listall"})
    @ResponseBody
    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response) {
/* 176 */     List<Admin> adminlist = this.adminService.selectAllAdmin();
/* 177 */     if (adminlist.size() > 0) {
/* 178 */       return ServerResponse.createBySuccess("查询用户成功", adminlist);
      }
/* 180 */     return ServerResponse.createByErrorMessage("找不到管理员信息");
    }


    @RequestMapping({"/checkAdmin"})
    @ResponseBody
    public ServerResponse checkAdmin(@Param("name") String name) {
/* 187 */     if (this.adminService.checkAdmin(name) > 0) {
/* 188 */       return ServerResponse.createBySuccess(0);
      }
/* 190 */     return ServerResponse.createByErrorMessage("管理员信息已经");
    }


    @RequestMapping({"/checkEmail"})
    @ResponseBody
    public ServerResponse checkEmail(String email) {
/* 197 */     System.out.println(email);
/* 198 */     if (this.adminService.checkEmail(email) < 0) {
/* 199 */       return ServerResponse.createBySuccess(0);
      }
/* 201 */     return ServerResponse.createByErrorMessage("邮箱已经存在");
    }


    @RequestMapping({"/checkPhone"})
    @ResponseBody
    public ServerResponse checkPhone(@Param("phone") String phone) {
/* 208 */     if (this.adminService.checkPhone(phone) < 0) {
/* 209 */       return ServerResponse.createBySuccess(0);
      }
/* 211 */     return ServerResponse.createByErrorMessage("已经存在");
    }


    @RequestMapping({"/checkNameAndPass"})
    @ResponseBody
    public ServerResponse checkNameAndPass(@Param("name") String name, @Param("pass") String pass) {
/* 218 */     if (this.adminService.checkAdmin(name) > 0 && this.adminService.checkPass(DigestUtils.md5DigestAsHex(pass.getBytes())) > 0) {
/* 219 */       return ServerResponse.createBySuccess(0);
      }
/* 221 */     return ServerResponse.createByErrorMessage("输入的管理员和密码错误");
    }


    @RequestMapping({"/checkEmailAndPass"})
    @ResponseBody
    public ServerResponse checkEmailAndPass(@Param("email") String email, @Param("pass") String pass) {
/* 228 */     if (this.adminService.checkEmail(email) > 0 && this.adminService.checkPass(DigestUtils.md5DigestAsHex(pass.getBytes())) > 0) {
/* 229 */       return ServerResponse.createBySuccess(0);
      }
/* 231 */     return ServerResponse.createByErrorMessage("输入的邮箱和密码错误");
    }


    @RequestMapping({"/checkPhoneAndPass"})
    @ResponseBody
    public ServerResponse checkPhoneAndPass(@Param("phone") String phone, @Param("pass") String pass) {
/* 238 */     if (this.adminService.checkPhone(phone) > 0 && this.adminService.checkPass(DigestUtils.md5DigestAsHex(pass.getBytes())) > 0) {
/* 239 */       return ServerResponse.createBySuccess(0);
      }
/* 241 */     return ServerResponse.createByErrorMessage("输入的电话和密码错误");
    }
  }


