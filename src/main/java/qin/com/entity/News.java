  package qin.com.entity;

  import java.io.Serializable;
  import java.util.Date;










  public class News
    implements Serializable
  {
    private Integer newsid;
    private String title;
    private String content;
    private String author;
    private Integer userid;
    private String type;
    private Integer count;
    private Integer like;
    private String remark;
    private Date date;
    private static final long serialVersionUID = 1L;

    public Integer getLike() {
/*  31 */     return this.like;
    }

    public void setLike(Integer like) {
/*  35 */     this.like = like;
    }



    public Integer getNewsid() {
/*  41 */     return this.newsid;
    }

    public void setNewsid(Integer newsid) {
/*  45 */     this.newsid = newsid;
    }

    public String getTitle() {
/*  49 */     return this.title;
    }

    public void setTitle(String title) {
/*  53 */     this.title = title;
    }

    public String getContent() {
/*  57 */     return this.content;
    }

    public void setContent(String content) {
/*  61 */     this.content = content;
    }

    public String getAuthor() {
/*  65 */     return this.author;
    }

    public void setAuthor(String author) {
/*  69 */     this.author = author;
    }

    public Integer getUserid() {
/*  73 */     return this.userid;
    }

    public void setUserid(Integer userid) {
/*  77 */     this.userid = userid;
    }

    public String getType() {
/*  81 */     return this.type;
    }

    public void setType(String type) {
/*  85 */     this.type = type;
    }

    public Integer getCount() {
/*  89 */     return this.count;
    }

    public void setCount(Integer count) {
/*  93 */     this.count = count;
    }

    public String getRemark() {
/*  97 */     return this.remark;
    }

    public void setRemark(String remark) {
/* 101 */     this.remark = remark;
    }

    public Date getDate() {
/* 105 */     return this.date;
    }

    public void setDate(Date date) {
/* 109 */     this.date = date;
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\News.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */