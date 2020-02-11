package kr.co.coduck.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.coduck.dto.UserByLectDto;
import kr.co.coduck.form.UserRegisterForm;
import kr.co.coduck.service.LectService;
import kr.co.coduck.service.UserService;
import kr.co.coduck.vo.Lect;
import kr.co.coduck.vo.User;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private LectService lectService;
	
	private final String photoSaveDirectory = "C:\\projects\\spring_workspace\\coduck\\src\\main\\webapp\\resources\\images\\userImageFilename";
	
	@GetMapping("/userbylist.hta")
	public String userbylist(HttpSession session, Model model) {
		User user = (User)session.getAttribute("LU");
		List<UserByLectDto> userLectList = lectService.getLectListUserByNo(user.getNo());
		model.addAttribute("userLectList", userLectList);
		return "user/userbylist";
	}
	
	@GetMapping("/userlecting.hta")
	public String userlecting(HttpSession session, Model model) {
		User user = (User)session.getAttribute("LU");
		List<UserByLectDto> userLectList = lectService.getLectListUserByNo(user.getNo());
		model.addAttribute("userLectList", userLectList);
		System.out.println(userLectList);
		return "user/userlecting";
	}
	
	@GetMapping("/login.hta")
	public String loginform() {
		return "user/loginform";
	}
	
	@GetMapping("/userprofil.hta")
	public String userprofil(HttpSession session, Model model) {
		User user = (User)session.getAttribute("LU");
		User userProfil = userService.getUserProfil(user.getNo());
		model.addAttribute("userProfil", userProfil);
		
		return "user/userprofil";
	}
	
	@PostMapping("/login.hta")
	public String login(@RequestParam("id") String userId, @RequestParam("pwd") String userPassword, HttpSession session) {
		User user = userService.login(userId, userPassword);
		
		if(user == null) {
			return "redirect:/user/login.hta?error=fail";
		}
		session.setAttribute("LU", user);
		return "redirect:/home.hta";
	}
	
	@GetMapping("/register.hta")//get방식의 요청은 여기로
	public String registerform() {
		
		return "user/registerform";	//WEB-INF/views/user/registerform.jsp
	}
	
	@PostMapping("/register.hta")
	public String register(UserRegisterForm registerForm) throws Exception {
		System.out.println(registerForm);
		
		User user = new User();
		user.setName(registerForm.getName());
		user.setId(registerForm.getId());
		user.setPassword(registerForm.getPwd());
		user.setEmail(registerForm.getEmail());
		user.setNickname(registerForm.getNickname());
		user.setSelfInfo(registerForm.getSelfInfo());
		user.setBankNumber(registerForm.getBanknumber());
		
		MultipartFile imgfile = registerForm.getImgfile();
		if(!imgfile.isEmpty()) {
			String filename = imgfile.getOriginalFilename();
			
			FileCopyUtils.copy(imgfile.getBytes(), new File(photoSaveDirectory, filename));
			
			user.setImageFilename(filename);
		}
		
		boolean isSuccess = userService.addNewUser(user);
		if(!isSuccess) {
			return "redirect:/user/register.hta?error=fail";
		}
		return "redirect:/home.hta";
	}
	
	@PostMapping("/userupdate.hta")
	public String userupdate(UserRegisterForm registerForm, HttpSession session) throws Exception {
		User user = (User)session.getAttribute("LU");
		User userProfilUpDate = userService.getUserProfil(user.getNo());
		userProfilUpDate.setNickname(registerForm.getNickname());
		userProfilUpDate.setEmail(registerForm.getEmail());
		userProfilUpDate.setSelfInfo(registerForm.getSelfInfo());
		userProfilUpDate.setPassword(registerForm.getPwd());
		userProfilUpDate.setBankNumber(registerForm.getBanknumber());
		
		
		
		MultipartFile imgfile = registerForm.getImgfile();
		if(!imgfile.isEmpty()) {
			String filename = imgfile.getOriginalFilename();
			
			FileCopyUtils.copy(imgfile.getBytes(), new File(photoSaveDirectory, filename));
			
			userProfilUpDate.setImageFilename(filename);
			
		}
		
		userService.userProfilUpdate(userProfilUpDate);
		
		return "redirect:/home.hta";
	}

}






































