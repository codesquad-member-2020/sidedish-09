package com.sidedish.be.service;

import com.sidedish.be.domain.*;
import com.sidedish.be.web.dto.CategoryResponseDto;
import com.sidedish.be.web.dto.DetailItemResponseDto;
import com.sidedish.be.web.dto.SimpleItemResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;
    private final ItemRepository itemRepository;
    private final DeliveryRepository deliveryRepository;
    private final SaleRepository saleRepository;

    public List<CategoryResponseDto> findByType(String type) {
        List<Category> categories = categoryRepository.findAll(type);

        List<CategoryResponseDto> categoryResponseDtos = new ArrayList<>();

        for(Category category: categories) {
            List<SimpleItemResponseDto> simpleItemResponseDto = new ArrayList<>();

            List<Item> items = itemRepository.findById(category.getItemIds());
            for(Item item: items) {
                List<Delivery> deliveries = deliveryRepository.findById(item.getDeliveryIds());
                List<Sale> sales = saleRepository.findById(item.getSaleIds());
                simpleItemResponseDto.add(new SimpleItemResponseDto(item, deliveries, sales));
            }

            categoryResponseDtos.add(new CategoryResponseDto(category, simpleItemResponseDto));
        }
        return categoryResponseDtos;
    }
}
