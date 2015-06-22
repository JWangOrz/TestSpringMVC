package nz.co.gameofcodes.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import nz.co.gameofcodes.testUser.Test;
import nz.co.gameofcodes.jdbc.UserExtractor;

public class UserRowMapper implements RowMapper<Test>
{
	@Override
	public Test mapRow(ResultSet rs, int line) throws SQLException
	{
		UserExtractor ue = new UserExtractor();
		return ue.extractData(rs);
	}
}
