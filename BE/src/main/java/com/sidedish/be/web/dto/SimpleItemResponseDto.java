package com.sidedish.be.web.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sidedish.be.domain.Delivery;
import com.sidedish.be.domain.Item;
import com.sidedish.be.domain.Sale;
import lombok.Getter;

import java.text.DecimalFormat;
import java.util.List;
import java.util.stream.Collectors;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Getter
public class SimpleItemResponseDto {

    private static DecimalFormat decimalFormat = new DecimalFormat();

    static {
        decimalFormat.setGroupingUsed(true);
        decimalFormat.setGroupingSize(3);
    }

    private String detail_hash;
    private String image;
    private String alt;
    private String title;
    private String description;
    private String n_price;
    private String s_price;
    private List<String> delivery_type;
    private List<String> badge;

    public SimpleItemResponseDto(Item item, List<Delivery> deliveries, List<Sale> sales) {
        int totalDiscountPercent = sales.stream().map(Sale::getPercent).reduce(0, Integer::sum);

        if(totalDiscountPercent > 0) {
            this.n_price =  decimalFormat.format(item.getNPrice());
        }
        this.s_price = decimalFormat.format(item.getNPrice() - (item.getNPrice() * totalDiscountPercent / 100));
        this.detail_hash = item.getHash();
        this.image = item.getImage();
        this.alt = item.getTitle();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.badge = sales.stream().map(Sale::getType).collect(Collectors.toList());
        this.delivery_type = deliveries.stream().map(Delivery::getType).collect(Collectors.toList());
    }
}
