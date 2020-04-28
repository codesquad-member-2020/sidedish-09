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
    public void 캐로셀_타입_조회() {
        List<Category> categories = repository.findAll("carousel");

        for(Category category: categories) {
            assertThat(category.getType()).isEqualTo("carousel");
        }
    }
}
