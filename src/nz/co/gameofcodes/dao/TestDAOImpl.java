package nz.co.gameofcodes.dao;

import javax.sql.DataSource;
import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import nz.co.gameofcodes.testUser.Test;
import nz.co.gameofcodes.jdbc.UserRowMapper;

public class TestDAOImpl implements TestDao
{
	@Autowired
	DataSource ds;
	
	public void insUser(Test user)
	{
		String sql = "INSERT INTO citizen (first_name, last_name, house, message)"
					+ "VALUES(?,?,?,?)";
		
		JdbcTemplate jt = new JdbcTemplate(ds);
		jt.update(sql, new Object[]
				{
					user.gettFirstName(), user.gettLastName(), user.gettHouse(),
					user.gettGreeting()
				});
	}
	
	public List<Test> getAllUser()
	{
		List userList = new ArrayList();
		String sql = "select * from citizen";
		JdbcTemplate jt = new JdbcTemplate(ds);
		userList = jt.query(sql, new UserRowMapper());
		return userList;
	}
	
	public void delUser(String id)
	{
		String sql = "delete from citizen where id=" + id;
		JdbcTemplate jt = new JdbcTemplate(ds);
		jt.update(sql);
	}
	
	public void updUser(Test user)
	{
		String sql = "UPDATE citizen set first_name=?, last_name=?, house=?, message=? where id=?";
						
		JdbcTemplate jt = new JdbcTemplate(ds);
		jt.update(sql, new Object[]
				{
					user.gettFirstName(), user.gettLastName(), user.gettHouse(), user.gettGreeting(),
					user.getid()
				});
	}
	
	public Test getUser(String id)
	{
		List<Test> userList = new ArrayList<Test>();
		String sql = "select * from citizen where id=" + id;
		JdbcTemplate jt = new JdbcTemplate(ds);
		userList = jt.query(sql, new UserRowMapper());
		return userList.get(0);
	}
}
	
	
