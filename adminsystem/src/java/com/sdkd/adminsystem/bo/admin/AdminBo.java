package com.sdkd.adminsystem.bo.admin;
import java.util.List;

import com.sdkd.adminsystem.entity.Admin;

public interface AdminBo{

	public void addAdmin(Admin admin);
	public void deleteAdmin(Integer adminId);
	public void updateAdmin(Admin admin);
	public List getAdminList();
	public Admin getAdmin(Integer adminId);
}
