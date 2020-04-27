package com.sidedish.be.service;

import com.sidedish.be.domain.Category;
import com.sidedish.be.domain.CategoryRepository;
import com.sidedish.be.domain.ItemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;
    private final ItemRepository itemRepository;

    public List<Category> findAll() {
        List<Category> categories = categoryRepository.findAll();
        return categoryRepository.findAll();
    }
}
