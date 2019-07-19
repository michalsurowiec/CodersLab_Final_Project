package michalsurowiec.finalproject.controller;

import michalsurowiec.finalproject.orders.Order;
import michalsurowiec.finalproject.orders.OrderService;
import michalsurowiec.finalproject.products.Product;
import michalsurowiec.finalproject.products.ProductService;
import michalsurowiec.finalproject.users.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
@RequestMapping("/cart")
public class CartController {

    private ProductService productService;
    private UserService userService;
    private OrderService orderService;

    @Autowired
    public CartController(ProductService productService, UserService userService, OrderService orderService) {
        this.productService = productService;
        this.userService = userService;
        this.orderService = orderService;
    }

    @GetMapping("/addProduct/{id}")
    public String addProductToCart(@PathVariable("id") Long id, Principal principal, HttpSession session){
        Order cart = orderService.addProductToOrder(productService.findProductById(id), userService.findUserByEmail(principal.getName()), session);
        session.setAttribute("order", cart);
        return "redirect:/";
    }

    @GetMapping
    public String showCartContent(){
        return "cartContent";
    }

    @GetMapping("/save")
    public String saveCartContent(HttpSession session){
        Order order = (Order) session.getAttribute("order");
        orderService.saveProduct(order);
        session.removeAttribute("order");
        return "redirect:/";
    }

}
