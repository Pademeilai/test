  package  qin.com.entity;

  import java.io.Serializable;
  import java.util.Date;












  public class Admin
    implements Serializable
  {
    private Integer id;
    private String name;
    private String pass;
    private String atype;
    private String phone;
    private String email;
    private String qq;
    private Date createTime;
    private Date updateTime;
    private static final long serialVersionUID = 1L;

    public Integer getId() {
/*  32 */     return this.id;
    }

    public void setId(Integer id) {
/*  36 */     this.id = id;
    }

    public String getName() {
/*  40 */     return this.name;
    }

    public void setName(String name) {
/*  44 */     this.name = name;
    }

    public String getPass() {
/*  48 */     return this.pass;
    }

    public void setPass(String pass) {
/*  52 */     this.pass = pass;
    }

    public String getAtype() {
/*  56 */     return this.atype;
    }

    public void setAtype(String atype) {
/*  60 */     this.atype = atype;
    }

    public String getPhone() {
/*  64 */     return this.phone;
    }

    public void setPhone(String phone) {
/*  68 */     this.phone = phone;
    }

    public String getEmail() {
/*  72 */     return this.email;
    }

    public void setEmail(String email) {
/*  76 */     this.email = email;
    }

    public String getQq() {
/*  80 */     return this.qq;
    }

    public void setQq(String qq) {
/*  84 */     this.qq = qq;
    }

    public Date getCreateTime() {
/*  88 */     return this.createTime;
    }

    public void setCreateTime(Date createTime) {
/*  92 */     this.createTime = createTime;
    }

    public Date getUpdateTime() {
/*  96 */     return this.updateTime;
    }

    public void setUpdateTime(Date updateTime) {
/* 100 */     this.updateTime = updateTime;
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Admin.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */