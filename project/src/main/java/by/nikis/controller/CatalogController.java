package by.nikis.controller;

import java.time.LocalDateTime;

import by.nikis.dao.DBConfig;
import by.nikis.dao.ProductDAO;
import by.nikis.dao.impl.ProductDAOImpl;
import by.nikis.entity.Product;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import by.nikis.model.HelloWorld;

/**
 * @author Ramesh Fadatare
 */
@Controller
public class CatalogController {

    @RequestMapping("/catalog")
    public String handler(Model model) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(DBConfig.class);

        ProductDAOImpl productDAO = context.getBean(ProductDAOImpl.class);
        for (Product p : productDAO.getAll()) {
            System.out.println(p);
        }
        model.addAttribute("list", productDAO.getAll());
        return "catalog";
    }
}