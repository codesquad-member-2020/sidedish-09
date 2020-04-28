package com.sidedish.be.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.data.annotation.Id;

@ToString
@Getter
@NoArgsConstructor
public class Sale {

    @Id
    private Long id;

    private String type;

    private Integer percent;

    @Builder
    public Sale(Long id, String type, Integer percent) {
        this.id = id;
        this.type = type;
        this.percent = percent;
    }
}
