package nz.co.gameofcodes.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import nz.co.gameofcodes.testUser.Test;

public class UserExtractor implements ResultSetExtractor<Test>
{
	public Test extractData(ResultSet resultSet) throws SQLException, DataAccessException
	{
		Test user = new Test();
		user.setID(resultSet.getInt(1));
		user.settFirstName(resultSet.getString(2));
		user.settLastName(resultSet.getString(3));
		user.settHouse(resultSet.getString(4));
		user.settGreeting(resultSet.getString(5));
		return user;
	}
}



