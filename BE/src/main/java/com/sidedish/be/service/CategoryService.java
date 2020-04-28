package com.sidedish.be.service;

import com.sidedish.be.domain.*;
import com.sidedish.be.web.dto.CategoryResponseDto;
import com.sidedish.be.web.dto.SimpleItemResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;
    private final ItemRepository itemRepository;
    private final DeliveryRepository deliveryRepository;
    private final SaleRepository saleRepository;

    public List<CategoryResponseDto> findByType(String type) {
        List<Category> categories = categoryRepository.findAll(type);

        List<CategoryResponseDto> categoryResponses = new ArrayList<>();

        for(Category category: categories) {
            List<SimpleItemResponseDto> simpleItemResponses = new ArrayList<>();

            List<Item> items = itemRepository.findAll(category.getItemIds());
            for(Item item: items) {
                List<Delivery> deliveries = deliveryRepository.findById(item.getDeliveryIds());
                List<Sale> sales = saleRepository.findById(item.getSaleIds());
                simpleItemResponses.add(new SimpleItemResponseDto(item, deliveries, sales));
            }

            categoryResponses.add(new CategoryResponseDto(category, simpleItemResponses));
        }
        return categoryResponses;
    }
}
