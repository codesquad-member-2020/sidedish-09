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

    private final NamedParameterJdbcTemplate jdbcTemplate;

    private final String SELECT_ITEM_BY_HASH =
            "SELECT i.id, i.hash, i.image, i.title, i.description, i.n_price, i.delivery_fee, i.delivery_date, " +
                    "GROUP_CONCAT(DISTINCT d.delivery_id), GROUP_CONCAT(DISTINCT s.sale_id), " +
                    "GROUP_CONCAT(DISTINCT t.url), GROUP_CONCAT(DISTINCT dI.url) FROM item i " +
                    "LEFT OUTER JOIN item_delivery d on i.id = d.item_id " +
                    "LEFT OUTER JOIN item_sale s on i.id = s.item_id " +
                    "LEFT OUTER JOIN thumbnail t on i.id = t.item_id " +
                    "LEFT OUTER JOIN detailImage dI on i.id = dI.item_id " +
                    "WHERE i.hash = :hash GROUP BY i.id";

    private final String SELECT_ITEMS_BY_ID =
            "SELECT i.id, i.hash, i.image, i.title, i.description, i.n_price, i.delivery_fee, i.delivery_date, " +
                    "GROUP_CONCAT(DISTINCT d.delivery_id), GROUP_CONCAT(DISTINCT s.sale_id), " +
                    "GROUP_CONCAT(DISTINCT t.url), GROUP_CONCAT(DISTINCT dI.url) FROM item i " +
                    "LEFT OUTER JOIN item_delivery d on i.id = d.item_id " +
                    "LEFT OUTER JOIN item_sale s on i.id = s.item_id " +
                    "LEFT OUTER JOIN thumbnail t on i.id = t.item_id " +
                    "LEFT OUTER JOIN detailImage dI on i.id = dI.item_id " +
                    "WHERE i.id In ( :ids ) GROUP BY i.id";

    private final RowMapper<Item> itemRowMapper = (ResultSet rs, int rowNum) -> {
        Item item = Item.builder()
                .id(rs.getLong("i.id"))
                .hash(rs.getString("i.hash"))
                .image((rs.getString("i.image")))
                .title(rs.getString("i.title"))
                .description(rs.getString("i.description"))
                .nPrice(rs.getLong("i.n_price"))
                .deliveryFee(rs.getLong("i.delivery_fee"))
                .deliveryDate(rs.getString("i.delivery_date"))
                .build();

        String rawString = rs.getString("GROUP_CONCAT(DISTINCT d.delivery_id)");
        if (!rs.wasNull())
            item.addDeliveryIds(Arrays.stream(rawString.split(",")).map(Long::parseLong).collect(Collectors.toList()));

        rawString = rs.getString("GROUP_CONCAT(DISTINCT s.sale_id)");
        if (!rs.wasNull())
            item.addSaleIds(Arrays.stream(rawString.split(",")).map(Long::parseLong).collect(Collectors.toList()));


        rawString = rs.getString("GROUP_CONCAT(DISTINCT t.url)");
        if (!rs.wasNull())
            item.addThumbnail(Arrays.stream(rawString.split(",")).collect(Collectors.toList()));


        rawString = rs.getString("GROUP_CONCAT(DISTINCT dI.url)");
        if (!rs.wasNull())
            item.addDetailImages(Arrays.stream(rawString.split(",")).collect(Collectors.toList()));

        return item;
    };

    public Optional<Item> findByHash(String hash) {
        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("hash", hash);
        List<Item> items = jdbcTemplate.query(SELECT_ITEM_BY_HASH, parameterSource, itemRowMapper);
        if (items.isEmpty())
            return Optional.empty();

        return Optional.of(items.get(0));
    }

    public List<Item> findAll(List<Long> ids) {
        if (ids.isEmpty())
            return Collections.emptyList();

        SqlParameterSource parameterSource = new MapSqlParameterSource().addValue("ids", ids);
        return jdbcTemplate.query(SELECT_ITEMS_BY_ID, parameterSource, itemRowMapper);
    }
}
