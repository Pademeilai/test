/*    */ package qin.com.entity;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ import java.math.BigDecimal;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class Products
/*    */   implements Serializable
/*    */ {
/*    */   private Integer pid;
/*    */   private String pname;
/*    */   private BigDecimal pprice;
/*    */   private String pcatagory;
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   public Integer getPid() {
/* 22 */     return this.pid;
/*    */   }
/*    */   
/*    */   public void setPid(Integer pid) {
/* 26 */     this.pid = pid;
/*    */   }
/*    */   
/*    */   public String getPname() {
/* 30 */     return this.pname;
/*    */   }
/*    */   
/*    */   public void setPname(String pname) {
/* 34 */     this.pname = pname;
/*    */   }
/*    */   
/*    */   public BigDecimal getPprice() {
/* 38 */     return this.pprice;
/*    */   }
/*    */   
/*    */   public void setPprice(BigDecimal pprice) {
/* 42 */     this.pprice = pprice;
/*    */   }
/*    */   
/*    */   public String getPcatagory() {
/* 46 */     return this.pcatagory;
/*    */   }
/*    */   
/*    */   public void setPcatagory(String pcatagory) {
/* 50 */     this.pcatagory = pcatagory;
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\entity\Products.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */