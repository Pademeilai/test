/*    */ package  qin.com.service.impl;
/*    */ 
/*    */ import java.util.List;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import qin.com.entity.Admin;
/*    */ import qin.com.mapper.AdminDao;
/*    */ import qin.com.service.AdminService;
/*    */ 
/*    */ @Service("adminServiceImpl")
/*    */ public class AdminServiceImpl
/*    */   implements AdminService {
/*    */   public int deleteByPrimaryKey(Integer id) {
/* 14 */     return this.adminMapper.deleteByPrimaryKey(id);
/*    */   } @Autowired
/*    */   private AdminDao adminMapper;
/*    */   public int insert(Admin record) {
/* 18 */     return this.adminMapper.insert(record);
/*    */   }
/*    */   
/*    */   public int insertSelective(Admin record) {
/* 22 */     return this.adminMapper.insertSelective(record);
/*    */   }
/*    */   
/*    */   public Admin selectByPrimaryKey(Integer id) {
/* 26 */     return this.adminMapper.selectByPrimaryKey(id);
/*    */   }
/*    */   
/*    */   public int updateByPrimaryKeySelective(Admin record) {
/* 30 */     return this.adminMapper.updateByPrimaryKeySelective(record);
/*    */   }
/*    */   
/*    */   public int updateByPrimaryKey(Admin record) {
/* 34 */     return this.adminMapper.updateByPrimaryKey(record);
/*    */   }
/*    */   
/*    */   public List<Admin> selectAllAdmin() {
/* 38 */     return this.adminMapper.selectAllAdmin();
/*    */   }
/*    */   
/*    */   public int checkAdmin(String name) {
/* 42 */     return this.adminMapper.checkAdmin(name);
/*    */   }
/*    */   
/*    */   public int checkEmail(String email) {
/* 46 */     return this.adminMapper.checkEmail(email);
/*    */   }
/*    */   
/*    */   public int checkPhone(String phone) {
/* 50 */     return this.adminMapper.checkPhone(phone);
/*    */   }
/*    */   
/*    */   public int checkPass(String pass) {
/* 54 */     return this.adminMapper.checkPass(pass);
/*    */   }
/*    */ }


/* Location:              C:\Users\吴光清\Downloads\luntan.war!\WEB-INF\classes\qin\com\service\impl\AdminServiceImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       1.1.3
 */