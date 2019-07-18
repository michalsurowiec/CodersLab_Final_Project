package michalsurowiec.finalproject.categories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

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
    public String saveCategory(@ModelAttribute("category") @Valid Category category, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "categoryForm";
        }
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
