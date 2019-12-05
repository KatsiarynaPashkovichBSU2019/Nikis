package by.nikis.entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {

    public Product mapRow(ResultSet resultSet, int i) throws SQLException {

        Product person = new Product();
        person.setId(resultSet.getInt("id"));
        person.setTitle(resultSet.getString("title"));
        return person;
    }
}
