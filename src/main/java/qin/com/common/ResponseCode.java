/*    */ package qin.com.common;
/*    */ 
/*    */ 
/*    */ 
/*    */ public enum ResponseCode
/*    */ {
/*  7 */   SUCCESS(0, "SUCCESS"),
/*    */   
/*  9 */   ERROR(1, "ERROR"),
/*    */   
/* 11 */   NEED_LOGIN(8, "NEED_LOGIN"),
/*    */   
/* 13 */   ILLEGAL_ARGUMENT(2, "ILLEGAL_ARGUMENT");
/*    */ 
/*    */ 
/*    */   
/*    */   private final int code;
/*    */ 
/*    */ 
/*    */   
/*    */   private final String desc;
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   ResponseCode(int code, String desc) {
/* 27 */     this.code = code;
/*    */     
/* 29 */     this.desc = desc;
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public int getCode() {
/* 37 */     return this.code;
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public String getDesc() {
/* 43 */     return this.desc;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\common\ResponseCode.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */