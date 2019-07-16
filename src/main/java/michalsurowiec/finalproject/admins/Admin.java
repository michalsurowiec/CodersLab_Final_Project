package michalsurowiec.finalproject.admins;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull
    private String employeeCode;
    @NotNull
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[\\W])(?=.*[\\d])(?=.{12,}).*$")
    private String password;
    @NotNull
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    private String name;
    @Pattern(regexp = "^[a-zA-ZĄ-ćĘęŁ-ńÓóŚśŹ-ż]*$")
    @NotNull
    private String surname;
    private boolean superadmin = false;
}
