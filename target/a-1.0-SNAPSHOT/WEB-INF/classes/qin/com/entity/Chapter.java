  package  qin.com.entity;

  import java.io.Serializable;
  import java.sql.Date;












  public class Chapter
    implements Serializable
  {
    private Integer bookid;
    private String bunding;
    private String chapter;
    private Integer count;
    private String modle;
    private String time;
    private String content;
    private Integer array;
    private Integer admin_id;
    private String admin_name;
    private Date path_time;
    private static final long serialVersionUID = 1L;

    public Integer getAdmin_id() {
/*  34 */     return this.admin_id;
    }

    public void setAdmin_id(Integer admin_id) {
/*  38 */     this.admin_id = admin_id;
    }

    public String getAdmin_name() {
/*  42 */     return this.admin_name;
    }

    public void setAdmin_name(String admin_name) {
/*  46 */     this.admin_name = admin_name;
    }

    public Date getPath_time() {
/*  50 */     return this.path_time;
    }

    public void setPath_time(Date path_time) {
/*  54 */     this.path_time = path_time;
    }

    public Integer getArray() {
/*  58 */     return this.array;
    }

    public void setArray(Integer array) {
/*  62 */     this.array = array;
    }



    public Integer getBookid() {
/*  68 */     return this.bookid;
    }

    public void setBookid(Integer bookid) {
/*  72 */     this.bookid = bookid;
    }

    public String getBunding() {
/*  76 */     return this.bunding;
    }

    public void setBunding(String bunding) {
/*  80 */     this.bunding = bunding;
    }

    public String getChapter() {
/*  84 */     return this.chapter;
    }

    public void setChapter(String chapter) {
/*  88 */     this.chapter = chapter;
    }

    public Integer getCount() {
/*  92 */     return this.count;
    }

    public void setCount(Integer count) {
/*  96 */     this.count = count;
    }

    public String getModle() {
/* 100 */     return this.modle;
    }

    public void setModle(String modle) {
/* 104 */     this.modle = modle;
    }

    public String getTime() {
/* 108 */     return this.time;
    }

    public void setTime(String time) {
/* 112 */     this.time = time;
    }

    public String getContent() {
/* 116 */     return this.content;
    }

    public void setContent(String content) {
/* 120 */     this.content = content;
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Chapter.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */