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
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@RequiredArgsConstructor
@Repository
public class CategoryRepository {

    private final String SELECT_ALL_CATEGORY = "SELECT id, title, description, GROUP_CONCAT(item_id) " +
            "FROM category LEFT OUTER JOIN category_item on id = category_item.category_id GROUP BY id";

    private final String SELECT_CATEGORY_BY_ID = "SELECT id, title, description, GROUP_CONCAT(item_id) " +
            "FROM category LEFT OUTER JOIN category_item on id = category_item.category_id WHERE id = :id GROUP BY id";

    private final NamedParameterJdbcTemplate jdbcTemplate;

    private final RowMapper<Category> categoryRowMapper = (ResultSet rs, int rowNum) ->
            Category.builder()
                    .id(rs.getLong("id"))
                    .title(rs.getString("title"))
                    .description(rs.getString("description"))
                    .itemIds(Arrays.stream(rs.getString("group_concat(item_id)").split(",")).map(Long::parseLong).collect(Collectors.toList()))
                    .build();

    public Optional<Category> findById(Long id) {
        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("id", id);
        return Optional.ofNullable(jdbcTemplate.queryForObject(SELECT_CATEGORY_BY_ID, parameterSource, categoryRowMapper));
    }

    public List<Category> findAll() {
        return jdbcTemplate.query(SELECT_ALL_CATEGORY, categoryRowMapper);
    }

    public Integer count() {
        SqlParameterSource parameterSource = new MapSqlParameterSource();
        return jdbcTemplate.queryForObject("SELECT count(*) FROM category", parameterSource, Integer.class);
    }
}
