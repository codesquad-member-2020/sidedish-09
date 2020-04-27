package com.sidedish.be.web.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sidedish.be.domain.Delivery;
import com.sidedish.be.domain.Item;
import com.sidedish.be.domain.Sale;
import lombok.Getter;

import java.util.List;
import java.util.stream.Collectors;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Getter
public class SimpleItemResponseDto {

    private String detail_hash;
    private String image;
    private String alt;
    private String title;
    private String description;
    private Long n_price;
    private Long s_price;
    private List<String> delivery_type;
    private List<String> badge;

    public SimpleItemResponseDto(Item item, List<Delivery> deliveries, List<Sale> sales) {
        int totalDiscountPercent = sales.stream().map(Sale::getPercent).reduce(0, Integer::sum);

        if(totalDiscountPercent > 0) {
            this.n_price = item.getNPrice();
        }
        this.s_price = item.getNPrice() - (item.getNPrice() * totalDiscountPercent / 100);
        this.detail_hash = item.getHash();
        this.image = item.getImage();
        this.alt = item.getTitle();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.badge = deliveries.stream().map(Delivery::getType).collect(Collectors.toList());
        this.delivery_type = sales.stream().map(Sale::getType).collect(Collectors.toList());
    }
}
