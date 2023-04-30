package ru.cars.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.cars.model.User;
import ru.cars.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Optional;
/**
 * @author Igor Suvorov
 */

@Controller
public class BlogController {
    @GetMapping("/blog")
    public String blog() {
        return "blog";
    }

    @GetMapping("/faq")
    public String faq() {
        return "faq";
    }
}
