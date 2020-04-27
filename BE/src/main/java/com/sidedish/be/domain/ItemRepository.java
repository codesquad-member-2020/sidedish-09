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
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@RequiredArgsConstructor
@Repository
public class ItemRepository {

    private final String SELECT_ITEM_BY_HASH =
            "SELECT i.id, i.hash, i.image, i.title, i.description, i.n_price, i.delivery_fee, i.delivery_date, " +
                    "GROUP_CONCAT(DISTINCT d.delivery_id), GROUP_CONCAT(DISTINCT s.sale_id), " +
                    "GROUP_CONCAT(DISTINCT t.url), GROUP_CONCAT(DISTINCT dI.url) FROM item i " +
                    "LEFT OUTER JOIN item_delivery d on i.id = d.item_id " +
                    "LEFT OUTER JOIN item_sale s on i.id = s.item_id " +
                    "LEFT OUTER JOIN thumbnail t on i.id = t.item_id " +
                    "LEFT OUTER JOIN detailImage dI on i.id = dI.item_id " +
                    "WHERE i.hash = :hash GROUP BY i.id";

    private final String SELECT_ITEMS_BY_HASH =
            "SELECT i.id, i.hash, i.image, i.title, i.description, i.n_price, i.delivery_fee, i.delivery_date, " +
                    "GROUP_CONCAT(DISTINCT d.delivery_id), GROUP_CONCAT(DISTINCT s.sale_id), " +
                    "GROUP_CONCAT(DISTINCT t.url), GROUP_CONCAT(DISTINCT dI.url) FROM item i " +
                    "LEFT OUTER JOIN item_delivery d on i.id = d.item_id " +
                    "LEFT OUTER JOIN item_sale s on i.id = s.item_id " +
                    "LEFT OUTER JOIN thumbnail t on i.id = t.item_id " +
                    "LEFT OUTER JOIN detailImage dI on i.id = dI.item_id " +
                    "WHERE i.hash In ( :hash ) GROUP BY i.id";

    private final NamedParameterJdbcTemplate jdbcTemplate;

    private final RowMapper<Item> itemRowMapper = (ResultSet rs, int rowNum) -> {
        String rawString = null;

        rawString = rs.getString("GROUP_CONCAT(DISTINCT d.delivery_id)");
        List<Long> deliveryIds = rawString != null ?
                Arrays.stream(rawString.split(",")).map(Long::parseLong).collect(Collectors.toList()) :
                Collections.emptyList();

        rawString = rs.getString("GROUP_CONCAT(DISTINCT s.sale_id)");
        List<Long> saleIds = rawString != null ?
                Arrays.stream(rawString.split(",")).map(Long::parseLong).collect(Collectors.toList()) :
                Collections.emptyList();

        rawString = rs.getString("GROUP_CONCAT(DISTINCT t.url)");
        List<String> thumbnails = rawString != null ?
                Arrays.stream(rawString.split(",")).collect(Collectors.toList()) :
                Collections.emptyList();

        rawString = rs.getString("GROUP_CONCAT(DISTINCT dI.url)");
        List<String> detailImages = rawString != null ?
                Arrays.stream(rawString.split(",")).collect(Collectors.toList()) :
                Collections.emptyList();


        return Item.builder()
                .id(rs.getLong("i.id"))
                .hash(rs.getString("i.hash"))
                .image((rs.getString("i.image")))
                .title(rs.getString("i.title"))
                .description(rs.getString("i.description"))
                .nPrice(rs.getLong("i.n_price"))
                .deliveryFee(rs.getLong("i.delivery_fee"))
                .deliveryDate(rs.getString("i.delivery_date"))
                .deliveryIds(deliveryIds)
                .saleIds(saleIds)
                .thumbnails(thumbnails)
                .detailImages(detailImages)
                .build();
    };

    public Optional<Item> findByHash(String hash) {
        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("hash", hash);
        return Optional.ofNullable(jdbcTemplate.queryForObject(SELECT_ITEM_BY_HASH, parameterSource, itemRowMapper));
    }

    public List<Item> findByHash(List<String> hash) {
        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("hash", hash.isEmpty() ? null : hash);
        return jdbcTemplate.query(SELECT_ITEMS_BY_HASH, parameterSource, itemRowMapper);
    }
}
