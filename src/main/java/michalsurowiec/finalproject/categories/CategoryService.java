package michalsurowiec.finalproject.categories;

import michalsurowiec.finalproject.products.Product;
import michalsurowiec.finalproject.products.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class CategoryService {

    private CategoryRepository categoryRepository;
    private ProductRepository productRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository, ProductRepository productRepository){
        this.categoryRepository = categoryRepository;
        this.productRepository = productRepository;
    }

    public List<Category> findAllCategories(){
        return categoryRepository.findAll();
    }

    public Category findById(Long id){
        return categoryRepository.findById(id).get();
    }

    public void saveCategory(Category category){
        categoryRepository.save(category);
    }

    public void deleteCategory(Category category){
        List<Product> productList = productRepository.findAllByCategory(category);
        for(Product productEach : productList){
            productEach.setCategory(null);
        }
        productRepository.saveAll(productList);
        categoryRepository.delete(category);
    }

}
