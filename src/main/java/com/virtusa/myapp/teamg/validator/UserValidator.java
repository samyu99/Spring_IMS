package com.virtusa.myapp.teamg.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.virtusa.myapp.teamg.model.User;
import com.virtusa.myapp.teamg.service.UserService;

@Component
public class UserValidator implements Validator {
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;
        String empty="NotEmpty";
        String name="username";

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, name, empty);
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "location", empty);
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileno", empty);
        
        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
            errors.rejectValue(name, "Size.userForm.username");
        }
        if (userService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue(name, "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", empty);
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }
        
        if(user.getMobileno().length()<10 || user.getMobileno().length()>10) {
        	errors.rejectValue("mobileno", "Size.userForm.mobileno");
        }
        
    }
}
