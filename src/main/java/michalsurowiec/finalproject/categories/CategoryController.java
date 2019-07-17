package michalsurowiec.finalproject.categories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

//Dokonać walidacji Category Controller
@Controller
@RequestMapping("/admin/category")
public class CategoryController {

    private CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService){
        this.categoryService = categoryService;
    }

    @GetMapping
    public String findAllCategories(Model model){
        model.addAttribute("categories", categoryService.findAllCategories());
        return "categories";
    }

    @GetMapping(path = "/update/{id}")
    public String updateCategory(@PathVariable("id") Long id, Model model){
        model.addAttribute("category", categoryService.findById(id));
        return "categoryForm";
    }

    @PostMapping(path = "/save")
    public String saveCategory(@ModelAttribute Category category){
        categoryService.saveCategory(category);
        return "redirect:/admin/category";
    }

    @GetMapping(path = "/create")
    public String createCategory(Model model){
        model.addAttribute("category", new Category());
        return "categoryForm";
    }

    @GetMapping(path = "/delete/{id}")
    public String deleteCategory(@ModelAttribute Category category){
        categoryService.deleteCategory(category);
        return "redirect:/admin/category";
    }
}
