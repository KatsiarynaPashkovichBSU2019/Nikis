package by.nikis.dao.impl;

import by.nikis.dao.ProductDAO;
import by.nikis.entity.Product;
import by.nikis.entity.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.List;

@Component
public class ProductDAOImpl implements ProductDAO {
    JdbcTemplate jdbcTemplate;


    @Autowired
    public ProductDAOImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Product> getAll() {
        return jdbcTemplate.query(
                "SELECT product_id as id, title FROM goods", new ProductMapper());
    }
}
