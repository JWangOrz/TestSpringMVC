package nz.co.gameofcodes.dbServices;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import nz.co.gameofcodes.dao.TestDao;
import nz.co.gameofcodes.testUser.Test;

public class TestServiceImpl implements TestService
{
	@Autowired
	TestDao testDao;
	
	@Override
	public void insUser(Test user)
	{
		testDao.insUser(user);
	}
	
	@Override
	public void updUser(Test user)
	{
		testDao.updUser(user);
	}
	
	@Override 
	public void delUser(String id)
	{
		testDao.delUser(id);
	}
	
	@Override
	public Test getUser(String id)
	{
		return testDao.getUser(id);
	}
	
	@Override
	public List<Test> getAllUser()
	{
		return testDao.getAllUser();
	}
}
