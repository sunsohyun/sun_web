package com.beans.sun_web_project;

import java.util.ArrayList;

public class EmpDao extends DBConn{
	//자바파일이라 JSP에서와 다르게 입셉션 발생한다!
	
	/*리스트 출력*/
	public ArrayList<EmpVo> getList(){
		//3. PreparedStatement 객체 생성
		ArrayList<EmpVo> list = new ArrayList<EmpVo>();	//--> 오류 : ArrayList, Vo 임포드하기!!
		String sql = "select empno, ename, deptno from emp";
		getPreparedStatement(sql);
		
		try {
			//4. ResultSet 객체 생성
			rs = pstmt.executeQuery();
			
			//5. 데이터 출력 - out.write 사용하는 방식 - html코드 적기 불편함
			while(rs.next()){//next 주는 이유 : 커서 한칸 내리기 위해
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