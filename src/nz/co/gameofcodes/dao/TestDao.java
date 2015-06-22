package nz.co.gameofcodes.dao;

import java.util.List;
import nz.co.gameofcodes.testUser.Test;;

	public interface TestDao
	{
		public void insUser(Test user);
		public void updUser(Test user);
		public void delUser(String id);
		public Test getUser(String id);
		public List<Test> getAllUser();
	}

