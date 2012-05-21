package com.sdkd.adminsystem.dao.admin;

import java.util.List;
import com.sdkd.adminsystem.entity.Admin;

public interface AdminDao {

	public void addAdmin(Admin admin);
	public void deleteAdmin(Integer adminId);
	public Admin getAdmin(Integer adminId);
	public void updateAdmin(Admin admin);
	public List getAdminList();
}
