  package  qin.com.common;

  import com.fasterxml.jackson.annotation.JsonIgnore;
  import com.fasterxml.jackson.databind.annotation.JsonSerialize;
  import java.io.Serializable;
  import qin.com.common.ResponseCode;

  @JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
  public class ServerResponse<T> implements Serializable {
    private int total;

    private ServerResponse(int total) {
/*  13 */     this.total = total;
    }


    private String msg;
    private T rows;

    private ServerResponse(int total, T rows) {
/*  21 */     this.total = total;
/*  22 */     this.rows = rows;
    }






    private ServerResponse(int total, String msg, T rows) {
/*  31 */     this.total = total;
/*  32 */     this.msg = msg;
/*  33 */     this.rows = rows;
    }





    private ServerResponse(int total, String msg) {
/*  41 */     this.total = total;
/*  42 */     this.msg = msg;
    }
    private ServerResponse(String msg, T rows) {
/*  45 */     this.msg = msg;
/*  46 */     this.rows = rows;
    }

    @JsonIgnore
    public boolean isSuccess() {
/*  51 */     return (this.total == ResponseCode.SUCCESS.getCode());
    }

    public int gettotal() {
/*  55 */     return this.total;
    }

    public T getrows() {
/*  59 */     return this.rows;
    }

    public String getMsg() {
/*  63 */     return this.msg;
    }






    public static <T> qin.com.common.ServerResponse<T> createBySuccess(int total) {
/*  72 */     return new qin.com.common.ServerResponse<>(total);
    }







    public static <T> qin.com.common.ServerResponse<T> createBySuccessMessage(String msg) {
/*  82 */     return new qin.com.common.ServerResponse<>(ResponseCode.SUCCESS.getCode(), msg);
    }








    public static <T> qin.com.common.ServerResponse<T> createBySuccess(int total, T rows) {
/*  93 */     return new qin.com.common.ServerResponse<>(total, rows);
    }









    public static <T> qin.com.common.ServerResponse<T> createBySuccess(int total, String msg, T rows) {
/* 105 */     return new qin.com.common.ServerResponse<>(total, msg, rows);
    }
    public static <T> qin.com.common.ServerResponse<T> createBySuccess(String msg, T rows) {
/* 108 */     return new qin.com.common.ServerResponse<>(msg, rows);
    }







    public static <T> qin.com.common.ServerResponse<T> createByError() {
/* 118 */     return new qin.com.common.ServerResponse<>(ResponseCode.ERROR.getCode(), ResponseCode.ERROR.getDesc());
    }

    public static <T> qin.com.common.ServerResponse<T> createByErrorMessage(String errorMessage) {
/* 122 */     return new qin.com.common.ServerResponse<>(ResponseCode.ERROR.getCode(), errorMessage);
    }

    public static <T> qin.com.common.ServerResponse<T> createByErrorCodeMessage(int errorCode, String errorMessage) {
/* 126 */     return new qin.com.common.ServerResponse<>(errorCode, errorMessage);
    }
  }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\common\ServerResponse.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */