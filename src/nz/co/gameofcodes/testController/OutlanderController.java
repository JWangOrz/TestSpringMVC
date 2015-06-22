package nz.co.gameofcodes.testController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import nz.co.gameofcodes.dbServices.TestService;
import nz.co.gameofcodes.testUser.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class OutlanderController 
{
	@Autowired
	TestService testService;
	@ModelAttribute
	public void addingCommonObjects(Model model)
	{
		model.addAttribute("headerMessage","Welcome to Westeros");
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView getTestForm()
	{
		ModelAndView model = new ModelAndView("test");
		return model;
	}

	 
	 @RequestMapping(value = "/insert", method = RequestMethod.POST)
		public ModelAndView insUser (@ModelAttribute("user") Test user)
		{
		 if(user!= null)
		 testService.insUser(user);
		 
		 List<Test> userList = testService.getAllUser();
			ModelAndView model = new ModelAndView("testList","userList", userList );
			return model;
		}
	 
	 @RequestMapping(value="/delete")
	 public ModelAndView delUser(@RequestParam String id)
	 {
		 testService.delUser(id);
		 List<Test> userList = testService.getAllUser();
		 ModelAndView model = new ModelAndView("testList","userList", userList);
		 return model;
	 }
	 
	 @RequestMapping("/edit")
	 public ModelAndView editUser(@RequestParam String id, @ModelAttribute ("user")Test user)
	 {
		 user = testService.getUser(id);
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("user", user);
		 ModelAndView model = new ModelAndView("testEdit", "map", map);
		 return model;
	 }
	 
	 @RequestMapping(value="/update", method = RequestMethod.POST)
	 public ModelAndView updUser(@ModelAttribute("user") Test user)
	 {
		 testService.updUser(user);
		 
		 List<Test> userList = testService.getAllUser();
		 ModelAndView model = new ModelAndView("testList","userList", userList);
		 return model;
	 }
	 
	 @RequestMapping(value = "/testSearch", method = RequestMethod.GET)
		public ModelAndView getSearchForm()
		{
		 	
			ModelAndView model = new ModelAndView("testSearch");
			return model;
		}
	 
	 @RequestMapping(value = "/search", method = RequestMethod.POST)
		public ModelAndView insUser (@RequestParam String id, @ModelAttribute("user") Test user)
		{
		 	user = testService.getUser(id);
		 
		 
			ModelAndView model = new ModelAndView("tGreeting","user", user);
			return model;
		}
	 
	 
	@RequestMapping(value = "/tGreeting", method = RequestMethod.POST)
	public ModelAndView submitTestForm(@ModelAttribute("ol") Test ol)
	{
		ModelAndView model = new ModelAndView("tAdmission");
		return model;
	}
}
