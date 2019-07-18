package michalsurowiec.finalproject.controller;

import michalsurowiec.finalproject.products.ProductService;
import michalsurowiec.finalproject.users.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    private ProductService productService;

    @Autowired
    public HomeController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/")
    public String home(Model model){
        model.addAttribute("products", productService.findAllProducts());
        return "home";
    }

    @GetMapping(path = "/register")
    public String createUser(Model model){
        model.addAttribute("user", new User());
        return "userForm";
    }

}
