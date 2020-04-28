package com.sidedish.be.domain;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class ItemRepositoryTest {

    private Logger log = LoggerFactory.getLogger(ItemRepositoryTest.class);

    @Autowired
    private ItemRepository repository;

    @Test
    public void 해쉬값을_통해_아이템_가져오기() {
        String hash = "H4665";
        Item item = repository.findByHash(hash).orElseThrow(() -> new IllegalArgumentException(hash));

        assertThat(item.getHash()).isEqualTo(hash);
        assertThat(item.getNPrice()).isGreaterThan(0);
    }

    @Test
    public void 해쉬값을_통해_아이템_리스트_가져오기() {
        List<Long> ids = Arrays.asList(1L, 12L);
        List<Item> items = repository.findById(ids);

        assertThat(items.size()).isEqualTo(2);
        assertThat(items.get(0).getId()).isEqualTo(ids.get(0));
        assertThat(items.get(1).getId()).isEqualTo(ids.get(1));
    }

}