package michalsurowiec.finalproject.products;

import michalsurowiec.finalproject.categories.Category;
import michalsurowiec.finalproject.categories.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/admin/product")
public class ProductController {

    private ProductService productService;
    private CategoryService categoryService;

    @Autowired
    public ProductController(ProductService productService, CategoryService categoryService){
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @ModelAttribute("categoryNames")
    public List<Category> users(){
        return categoryService.findAllCategories();
    }

    @GetMapping
    public String findAllProducts(Model model){
        model.addAttribute("products", productService.findAllProducts());
        return "products";
    }

    @GetMapping(path = "/create")
    public String createProduct(Model model){
        model.addAttribute("product", new Product());
        return "productForm";
    }

    @PostMapping(path = "/save")
    public String saveProduct(@ModelAttribute Product product){
        productService.saveProduct(product);
        return "redirect:/admin/product";
    }
}
