package michalsurowiec.finalproject.products;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Constraint(validatedBy = EanTest.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface EanValidation {
    String message() default "{EanValidation.error.message}";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
