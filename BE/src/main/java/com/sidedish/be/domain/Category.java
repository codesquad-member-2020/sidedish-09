package com.sidedish.be.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.data.annotation.Id;

import java.util.ArrayList;
import java.util.List;

@ToString
@Getter
@NoArgsConstructor
public class Category {

    @Id
    private Long id;

    private String title;

    private String description;

    private String type;

    private List<Long> itemIds = new ArrayList<>();

    @Builder
    public Category(Long id, String title, String description, String type) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.type = type;
    }

    public void addItemIds(List<Long> ids) {
        this.itemIds.addAll(ids);
    }
}
