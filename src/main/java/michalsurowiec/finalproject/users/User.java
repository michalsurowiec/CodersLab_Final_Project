package michalsurowiec.finalproject.users;

import michalsurowiec.finalproject.orders.Order;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Email
    private String email;
    @NotNull
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W])(?=.*[\\d])(?=.{8,}).*$")
    private String password;
    @NotNull
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    private String name;
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    @NotNull
    private String surname;
    @Pattern(regexp = "^\\d{2}-\\d{3}$")
    @NotNull
    private String postalCode;
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    @NotNull
    private String city;
    @NotNull
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż-]*$")
    private String street;
    @NotNull
    private int flatNumber;
    private int localNumber;
    private Long phoneNumber;
    @OneToMany(mappedBy = "user")
    private Set<Order> orderSet = new HashSet<>();

}
