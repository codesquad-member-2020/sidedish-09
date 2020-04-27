package com.sidedish.be.domain;

import lombok.*;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

@ToString
@Setter
@Getter
@NoArgsConstructor
public class Item {

    @Id
    private Long id;

    private String hash;

    private String image;

    private String title;

    private String description;

    private Long nPrice;

    private Long deliveryFee;

    private String deliveryDate;

    private List<Long> deliveryIds = new ArrayList<>();

    private List<Long> saleIds = new ArrayList<>();

    private List<String> thumbnails = new ArrayList<>();

    private List<String> detailImages = new ArrayList<>();

    private List<Sale> sales = new ArrayList<>();

    @Builder
    public Item(Long id, String hash, String image, String title, String description,
                Long nPrice, Long deliveryFee, String deliveryDate,
                List<Long> deliveryIds, List<Long> saleIds, List<String> thumbnails, List<String> detailImages) {
        this.id = id;
        this.hash = hash;
        this.image = image;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.deliveryFee = deliveryFee;
        this.deliveryDate = deliveryDate;
        this.deliveryIds.addAll(deliveryIds);
        this.saleIds.addAll(saleIds);
        this.thumbnails.addAll(thumbnails);
        this.detailImages.addAll(detailImages);
    }
}
