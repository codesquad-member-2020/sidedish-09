package com.sidedish.be.web.dto;


import com.fasterxml.jackson.annotation.JsonInclude;
import com.sidedish.be.domain.Item;
import com.sidedish.be.domain.Sale;
import lombok.Getter;

import java.text.DecimalFormat;
import java.util.List;

@Getter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class DetailItemResponseDto {

    private static DecimalFormat decimalFormat = new DecimalFormat();

    static {
        decimalFormat.setGroupingUsed(true);
        decimalFormat.setGroupingSize(3);
    }

    private String hash;
    private String title;
    private String top_image;
    private List<String> thumb_images;
    private String product_description;
    private String point;
    private String delivery_info;
    private String delivery_fee;
    private String s_price;
    private String n_price;
    private List<String> detail_section;

    public DetailItemResponseDto(Item item, List<Sale> sales) {
        int totalDiscountPercent = sales.stream().map(Sale::getPercent).reduce(0, Integer::sum);
        long salePrice = item.getNPrice() - (item.getNPrice() * totalDiscountPercent / 100);

        if(totalDiscountPercent > 0) {
            this.n_price = decimalFormat.format(item.getNPrice());
        }
        this.s_price = decimalFormat.format(salePrice);
        this.point = String.format("%s원", decimalFormat.format(salePrice / 10));
        this.hash = item.getHash();
        this.title = item.getTitle();
        this.top_image = item.getThumbnails().get(0);
        this.thumb_images = item.getThumbnails();
        this.product_description = item.getDescription();
        this.delivery_info = String.format("서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [%s] 수령 가능한 상품입니다.", item.getDeliveryDate());
        this.delivery_fee = String.format("%s원 (40,000원 이상 구매 시 무료)", decimalFormat.format(item.getDeliveryFee()));
        this.detail_section = item.getDetailImages();
    }
}
