package com.crm.db;

import java.util.List;

public class DBUtil {

	/*
	 * �ṩִ����֤�Ĵ洢���̡�huangzk
	 */
	public void executeProcedure_auth(final String procedureCall,
			final List<String> params) {
		// {call ProcedureName(?,?,?,?)}
		/**
		try {
			 this.getJdbcTemplate().execute(
					new ConnectionCallback() {
						public Object doInConnection(Connection conn)
								throws SQLException, DataAccessException {
							// conn.setAutoCommit(true);
							CallableStatement cstmt = conn
									.prepareCall(procedureCall);
							int iLen = params.size() + 1;
							for (int i = 1; i < iLen; i++) {
								cstmt.setString(i, params.get(i - 1));
							}
							cstmt.registerOutParameter(iLen, Types.INTEGER);
							cstmt.registerOutParameter(iLen + 1, Types.VARCHAR); // �߼�����
							cstmt.registerOutParameter(iLen + 2, Types.VARCHAR); // ��������
							cstmt.execute();
							int outFlag = cstmt.getInt(iLen);
							String passWordout = cstmt.getString(iLen + 1); // �߼�����
							String lpassWordout = cstmt.getString(iLen + 2); // ��������
							cstmt.close();
							
							if (outFlag == -1) {
								conn.rollback();
							}
							conn.commit();
							conn.close();
							PassWordVO outTmp = new PassWordVO();
							outTmp.setAhthFlag(outFlag);
							outTmp.setLpassWord(lpassWordout);
							outTmp.setPassWord(passWordout);

							return outTmp;
						}
					});
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
		**/
	}
	
}
