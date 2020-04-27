package com.sidedish.be.web.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.sidedish.be.domain.Category;
import lombok.Getter;

import java.util.List;

@Getter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class CategoryResponseDto {

    private String title;
    private String description;
    private List<SimpleItemResponseDto> items;

    public CategoryResponseDto(Category category, List<SimpleItemResponseDto> items) {
        this.title = category.getTitle();
        this.description = category.getDescription();
        this.items = items;
    }
}
