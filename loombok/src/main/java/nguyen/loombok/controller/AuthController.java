package nguyen.loombok.controller;

import nguyen.loombok.model.LoginForm;
import nguyen.loombok.model.RegisterForm;
import nguyen.loombok.model.ForgetPasswordForm;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AuthController {

    // ===== LOGIN =====
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("loginForm", new LoginForm());
        return "login";
    }

    @PostMapping("/login")
    public String processLogin(@Valid @ModelAttribute("loginForm") LoginForm loginForm,
                               BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "login";
        }
        // TODO: Xử lý logic đăng nhập
        return "redirect:/home";
    }

    // ===== REGISTER =====
    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("registerForm", new RegisterForm());
        return "register";
    }

    @PostMapping("/register")
    public String processRegister(@Valid @ModelAttribute("registerForm") RegisterForm registerForm,
                                  BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "register";
        }
        // Kiểm tra mật khẩu xác nhận
        if (!registerForm.getPassword().equals(registerForm.getConfirmPassword())) {
            result.rejectValue("confirmPassword", "error.registerForm", "Mật khẩu xác nhận không khớp");
            return "register";
        }
        // TODO: Xử lý logic đăng ký
        model.addAttribute("successMessage", "Đăng ký thành công!");
        return "redirect:/login";
    }

    // ===== FORGET PASSWORD =====
    @GetMapping("/forgetpassword")
    public String showForgetPasswordForm(Model model) {
        model.addAttribute("forgetPasswordForm", new ForgetPasswordForm());
        return "forgetpassword";
    }

    @PostMapping("/forgetpassword")
    public String processForgetPassword(@Valid @ModelAttribute("forgetPasswordForm") ForgetPasswordForm form,
                                        BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "forgetpassword";
        }
        // TODO: Xử lý logic gửi email khôi phục mật khẩu
        model.addAttribute("successMessage", "Đã gửi email khôi phục mật khẩu!");
        return "forgetpassword";
    }
}
