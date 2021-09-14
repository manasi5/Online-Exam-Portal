package onlineexam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyController {
	
	@Autowired
	StudentRepository studentrepo;
	
	@Autowired
	Student s;

	//Home Page
	@GetMapping(value = "/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.jsp");
		return mv;
	}
	
	//Login or Register
	@GetMapping(value="/login")
	public ModelAndView loginuser() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login.jsp");
		return mv;
		
	}
	@PostMapping(value="/loginregister")
	public ModelAndView loginregister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register.jsp");
		return mv;
	}
	
	//Admin Login
	@GetMapping(value = "/admin")
	public ModelAndView admin () {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin.jsp");
		return mv;
	}
	
	//Student Registeration
    @RequestMapping(value = "/studentregisteration")
	public ModelAndView studentregisteration() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentRegisterationform.jsp");
		return mv;
	}
 
    //adminlogin
	@PostMapping(value = "/adminlogin")
	public ModelAndView adminlogin (@RequestParam("username")String username,@RequestParam("password")String password){
		ModelAndView mv = new ModelAndView();
		if(username.equals("teacher")&&password.equals("1234")) {
			mv.setViewName("adminlogin.jsp");
		
		}else {
		mv.setViewName("loginfail.jsp");
		
	}
		return mv;
	}
	
	//studentlogin
	@PostMapping(path= "/studentregisterconfig")
	 public ModelAndView insert(Integer userid,String fn,String ln,String course,String gender, int country_code,int phone ,String email,String psw) {
		 Student e = new Student(userid,  fn, ln,course,  gender,psw,email,phone);
         studentrepo.save(e);
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("studentregisterconfig.jsp");
		 return mv;
	 }
	
	//Proceed for test
	@GetMapping(value="/index")
	public ModelAndView exam() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;
	}
	//Another Student can register
	@GetMapping(value="/register")
	public ModelAndView register() {
		ModelAndView  mv = new ModelAndView();
	    mv.setViewName("sloginconf.jsp");
	    return mv;
	}
	
	
	
}
