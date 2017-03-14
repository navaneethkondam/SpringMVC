package com.empdao;
import com.pojo.employee.Employee;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class EmployeeDao {
JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}
public int save(Employee p){
	String sql="insert into employee(name,salary,designation) values('"+p.getName()+"',"+p.getSalary()+",'"+p.getDesignation()+"')";
	return template.update(sql);
}
public int update(Employee p){
	String sql="update Employee set name='"+p.getName()+"', salary="+p.getSalary()+", designation='"+p.getDesignation()+"' where id="+p.getId()+"";
	return template.update(sql);
}
public int delete(int id){
	String sql="delete from Employee where id="+id+"";
	return template.update(sql);
}
public Employee getEmployeeById(int id) throws DataAccessException{
	
	String sql="select * from employee where id=?";
	
	/*System.out.println(id);
	Object a[]=new Object[]{id};
	System.out.println(a[0].getClass());
	System.out.println("object"+a[0]);
	*/
	
	Employee emp=(Employee)template.queryForObject(sql, new Object[] {id},new BeanPropertyRowMapper<Employee>(Employee.class));
	//System.out.println("dao "+emp.toString());
	 return emp;

}
public List<Employee> getEmployees(){
	return template.query("select * from employee",new RowMapper<Employee>(){
		public Employee mapRow(ResultSet rs, int row) throws SQLException {
			Employee e=new Employee();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setDesignation(rs.getString(3));
			e.setSalary(rs.getInt(4));
			//System.out.println("dao"+e.toString());
			return e;
		}
	});
}
}
