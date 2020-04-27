package com.sidedish.be.domain;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Repository
public class SaleRepository {

    private final String SELECT_DELIVERIES = "SELECT id, type, percent FROM sale WHERE id in ( :ids )";

    private final NamedParameterJdbcTemplate jdbcTemplate;

    private final RowMapper<Sale> rowDeliveryMapper = (rs, rowNum) ->
            Sale.builder()
                    .id(rs.getLong("id"))
                    .type(rs.getString("type"))
                    .percent(rs.getInt("percent"))
                    .build();

    public List<Sale> findById(List<Long> ids) {
        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("ids", ids.isEmpty() ? null : ids);
        return jdbcTemplate.query(SELECT_DELIVERIES, parameterSource, rowDeliveryMapper);
    }
}