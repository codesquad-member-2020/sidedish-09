package com.sidedish.be.domain;

import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Repository
public class CategoryRepository {

    private final String SELECT_CATEGORY = "SELECT c.id, c.title, c.description, ci.item_id " +
            "FROM category c LEFT OUTER JOIN category_item ci on c.id = ci.category_id";

    private final JdbcTemplate jdbcTemplate;

    private final RowMapper<Category> categoryRowMapper = (ResultSet rs, int rowNum) -> {
        Long curId = rs.getLong("id");

        Category category = Category.builder()
                .id(curId)
                .title(rs.getString("title"))
                .description(rs.getString("description"))
                .build();

        // same category id 추가
        category.addItem(Item.builder()
                .id(rs.getLong("item_id"))
                .build());
        while (rs.next() && curId.equals(rs.getLong("id"))) {
            category.addItem(Item.builder()
                    .id(rs.getLong("item_id"))
                    .build());
        }
        rs.previous();

        return category;
    };

    public Optional<Category> findById(Long id) {
        return Optional.ofNullable(jdbcTemplate.queryForObject(SELECT_CATEGORY + " WHERE id = ?", categoryRowMapper, id));
    }

    public List<Category> findAll() {
        return jdbcTemplate.query(SELECT_CATEGORY, categoryRowMapper);
    }

    public Integer count() {
        return jdbcTemplate.queryForObject("SELECT count(*) FROM category", Integer.class);
    }
}
