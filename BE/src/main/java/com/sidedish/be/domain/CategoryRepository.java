package com.sidedish.be.domain;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RequiredArgsConstructor
@Repository
public class CategoryRepository {

    private final NamedParameterJdbcTemplate jdbcTemplate;

    private final String SELECT_ALL_CATEGORY =
            "SELECT id, title, description, type, GROUP_CONCAT(DISTINCT item_id) " +
                    "FROM category LEFT OUTER JOIN category_item on id = category_item.category_id " +
                    "WHERE type = :type GROUP BY id";

    private final RowMapper<Category> categoryRowMapper = (ResultSet rs, int rowNum) -> {
        Category category = Category.builder()
                .id(rs.getLong("id"))
                .title(rs.getString("title"))
                .description(rs.getString("description"))
                .type(rs.getString("type"))
                .build();

        String rawString = rs.getString("GROUP_CONCAT(DISTINCT item_id)");
        if (!rs.wasNull())
            category.addItemIds(Arrays.stream(rawString.split(",")).map(Long::parseLong).collect(Collectors.toList()));

        return category;
    };

    public List<Category> findAll(String type) {
        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("type", type);
        return jdbcTemplate.query(SELECT_ALL_CATEGORY, parameterSource, categoryRowMapper);
    }
}
