package com.beans.sun_web_project;

import java.util.ArrayList;

public class EmpDao extends DBConn{
	//�ڹ������̶� JSP������ �ٸ��� �Լ��� �߻��Ѵ�!
	
	/*����Ʈ ���*/
	public ArrayList<EmpVo> getList(){
		//3. PreparedStatement ��ü ����
		ArrayList<EmpVo> list = new ArrayList<EmpVo>();	//--> ���� : ArrayList, Vo �������ϱ�!!
		String sql = "select empno, ename, deptno from emp";
		getPreparedStatement(sql);
		
		try {
			//4. ResultSet ��ü ����
			rs = pstmt.executeQuery();
			
			//5. ������ ��� - out.write ����ϴ� ��� - html�ڵ� ���� ������
			while(rs.next()){//next �ִ� ���� : Ŀ�� ��ĭ ������ ����
				EmpVo empVo = new EmpVo();
				empVo.setEmpno(rs.getInt(1));
				empVo.setEname(rs.getString(2));
				empVo.setDeptno(rs.getInt(3));
				list.add(empVo);
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	
		return list;
	}
}