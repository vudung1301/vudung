package Bon.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Bon.entities.Role;
import Bon.entities.User;
import Bon.service.ContactService;
import Bon.service.RoleService;
import Bon.service.UserService;

@Controller
public class LoginController extends BaseController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value= {"/login"},method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException{
		
		return "login";
	}
	@RequestMapping(value= {"/createAccount"}, method = RequestMethod.GET)
	public String contact(final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException{
	
	//khởi tạo 1 đối tượng
	User user = new User();
	
	// đấy contact xuống hàm view từ Controler
	model.addAttribute("user", user);
	return "createAccount";
	}
	@RequestMapping(value= {"/createAccount"}, method = RequestMethod.POST)
	public String post_SpringFom(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("user") User user)
			throws IOException{
		// lưu contact vào trong database
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		userService.createAccount(user, name, address, email, phone_number);
		// sau khi xử lí xong thì đưa contact về trạng thái mới
		model.addAttribute("user", new User());

		// trả về đường dẫn tới view
		return "redirect:/home";
	}
}
