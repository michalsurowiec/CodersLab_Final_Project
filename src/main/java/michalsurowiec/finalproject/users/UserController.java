package michalsurowiec.finalproject.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//Zrobić: podwójne wpisywanie hasła
@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService){
        this.userService = userService;
    }

    @GetMapping("/register")
    public String createUser(Model model){
        model.addAttribute("user", new User());
        String secondPassword = "";
        model.addAttribute("secondPassword", secondPassword);
        return "userForm";
    }

    @PostMapping("/save")
    public String saveUser(@ModelAttribute User user){
        userService.saveUser(user);
        return "redirect:/user/register";
    }

}
