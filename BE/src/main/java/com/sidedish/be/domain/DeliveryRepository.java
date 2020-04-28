package com.sidedish.be.domain;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.Collections;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Repository
public class DeliveryRepository {

    private final NamedParameterJdbcTemplate jdbcTemplate;

    private final String SELECT_DELIVERIES = "SELECT id, type FROM delivery WHERE id in ( :ids )";

    private final RowMapper<Delivery> rowDeliveryMapper = (rs, rowNum) ->
            Delivery.builder()
                    .id(rs.getLong("id"))
                    .type(rs.getString("type"))
                    .build();

    public List<Delivery> findById(List<Long> ids) {
        if(ids.isEmpty())
            return Collections.emptyList();

        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("ids", ids);
        return jdbcTemplate.query(SELECT_DELIVERIES, parameterSource, rowDeliveryMapper);
    }
}
