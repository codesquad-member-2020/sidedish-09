package com.sidedish.be.domain;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class CategoryRepositoryTest {

    private Logger log = LoggerFactory.getLogger(CategoryRepositoryTest.class);

    @Autowired
    private CategoryRepository repository;

    @Test
    public void 카테고리_하나_가져오기() {
        Category category = repository.findById(1L).orElseThrow(IllegalArgumentException::new);

        assertThat(category.getId()).isEqualTo(1L);
        assertThat(category.getTitle()).isEqualTo("밑반찬");
        assertThat(category.getDescription()).isEqualTo("언제 먹어도 든든한 밑반찬");
        assertThat(category.getItemIds().size()).isEqualTo(8);
    }

    @Test
    public void 카테고리_모두_가져오기() {
        List<Category> categories = repository.findAll();

        assertThat(categories.size()).isEqualTo(repository.count());
    }
}
