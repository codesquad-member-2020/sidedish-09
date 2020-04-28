package com.sidedish.be.service;

import com.sidedish.be.domain.Item;
import com.sidedish.be.domain.ItemRepository;
import com.sidedish.be.domain.Sale;
import com.sidedish.be.domain.SaleRepository;
import com.sidedish.be.web.dto.DetailItemResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class ItemService {

    private final ItemRepository itemRepository;
    private final SaleRepository saleRepository;

    public DetailItemResponseDto findByHash(String hash) {
        Item item = itemRepository.findByHash(hash).orElseThrow(() -> new IllegalArgumentException(hash));
        List<Sale> sales = new ArrayList<>(saleRepository.findById(item.getSaleIds()));
        return new DetailItemResponseDto(item, sales);
    }
}
