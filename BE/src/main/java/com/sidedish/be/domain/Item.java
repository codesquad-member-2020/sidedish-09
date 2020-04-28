package com.sidedish.be.domain;

import lombok.*;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

@ToString
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
                Long nPrice, Long deliveryFee, String deliveryDate) {
        this.id = id;
        this.hash = hash;
        this.image = image;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.deliveryFee = deliveryFee;
        this.deliveryDate = deliveryDate;
    }

    public void addDeliveryIds(List<Long> ids) {
        this.deliveryIds.addAll(ids);
    }

    public void addSaleIds(List<Long> ids) {
        this.saleIds.addAll(ids);
    }

    public void addThumbnail(List<String> thumbnails) {
        this.thumbnails.addAll(thumbnails);
    }

    public void addDetailImages(List<String> detailImage) {
        this.detailImages.addAll(detailImage);
    }
}
