package michalsurowiec.finalproject.products;

import michalsurowiec.finalproject.categories.Category;
import org.hibernate.validator.constraints.EAN;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private String name;
    private String description;
    @NotNull
    @EAN
    private Long ean;
    @ManyToOne
    private Category category;

}
