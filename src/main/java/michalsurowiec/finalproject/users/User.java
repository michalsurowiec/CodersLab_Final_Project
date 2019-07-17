package michalsurowiec.finalproject.users;

import michalsurowiec.finalproject.orders.Order;
import michalsurowiec.finalproject.roles.Role;

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
                ", localNumber=" + localNumber +
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

    public int getFlatNumber() {
        return flatNumber;
    }

    public void setFlatNumber(int flatNumber) {
        this.flatNumber = flatNumber;
    }

    public int getLocalNumber() {
        return localNumber;
    }

    public void setLocalNumber(int localNumber) {
        this.localNumber = localNumber;
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
}
