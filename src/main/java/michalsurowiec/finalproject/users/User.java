package michalsurowiec.finalproject.users;

import michalsurowiec.finalproject.orders.Order;
import michalsurowiec.finalproject.roles.Role;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Email
    private String email;
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W])(?=.*[\\d])(?=.{8,}).*$",
            message = "Niepoprawne hasło! Upewnij się, że wpisałeś zgodnie z instrukcją")
    private String password;
    @NotBlank
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    private String name;
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    @NotBlank
    private String surname;
    @Pattern(regexp = "^\\d{2}-\\d{3}$")
    private String postalCode;
    @NotBlank
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    private String city;
    @NotBlank
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż-]*$")
    private String street;
    @NotBlank
    @Pattern(regexp = "^\\d+$|^\\d+\\/\\d+$")
    private String flatNumber;
    private Long phoneNumber;
    @OneToMany(mappedBy = "user")
    private Set<Order> orderSet = new HashSet<>();
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Role> roles;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", city='" + city + '\'' +
                ", street='" + street + '\'' +
                ", flatNumber=" + flatNumber +
                ", phoneNumber=" + phoneNumber +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public Long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Set<Order> getOrderSet() {
        return orderSet;
    }

    public void setOrderSet(Set<Order> orderSet) {
        this.orderSet = orderSet;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public String getFlatNumber() {
        return flatNumber;
    }

    public void setFlatNumber(String flatNumber) {
        this.flatNumber = flatNumber;
    }
}
