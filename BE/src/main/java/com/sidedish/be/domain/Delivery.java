package com.sidedish.be.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@Getter
@NoArgsConstructor
public class Delivery {

    @Id
    private Long id;

    private String type;

    @Builder
    public Delivery(Long id, String type) {
        this.id = id;
        this.type = type;
    }
}
