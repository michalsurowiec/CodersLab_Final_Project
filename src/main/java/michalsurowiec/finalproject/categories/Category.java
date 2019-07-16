package michalsurowiec.finalproject.categories;

import michalsurowiec.finalproject.products.Product;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private String name;
    private String description;
    @OneToMany(mappedBy = "category")
    private Set<Product> productSet = new HashSet<>();

}
