package com.sidedish.be.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@Getter
@NoArgsConstructor
public class Item {

    @Id
    private Long id;

    private String title;

    private String description;

    @Builder
    public Item(Long id, String title, String description) {
        this.id = id;
        this.title = title;
        this.description = description;
    }
}
