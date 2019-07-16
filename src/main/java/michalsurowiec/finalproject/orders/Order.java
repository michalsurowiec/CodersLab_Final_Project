package michalsurowiec.finalproject.orders;

import michalsurowiec.finalproject.products.Product;
import michalsurowiec.finalproject.users.User;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDateTime created;
    @ManyToMany
    @JoinTable(name = "order_product",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "order_id"))
    private Set<Product> productSet = new HashSet<>();
    @NotNull
    @Min(1)
    private int quantity;
    @ManyToOne
    private User user;
    private LocalDateTime paymentDate;
    /*
    Values of orderStatus:
    0 - order received, checking availability
    -1 - item not available
    1 - availability confirmed, waiting for payment
    2 - payment received
    -2 - payment not received on time
    3 - item sent
    4 - item delivered
     */
    private int orderStatus = 0;


    @PrePersist
    public void prePersist() {
        created = LocalDateTime.now();
        paymentDate = LocalDateTime.now().plusWeeks(1);
    }

}
