package com.sidedish.be.domain;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class ItemRepositoryTest {

    private Logger log = LoggerFactory.getLogger(ItemRepositoryTest.class);

    @Autowired
    private ItemRepository repository;

    @Test
    public void 해쉬값을_통해_아이템_리스트_가져오기() {
        List<String> hashList = Arrays.asList("H602F", "H9F0B");
        List<Item> items = repository.findByHash(hashList);

        assertThat(items.size()).isEqualTo(2);
        assertThat(items.get(0).getHash()).isEqualTo(hashList.get(0));
        assertThat(items.get(1).getHash()).isEqualTo(hashList.get(1));
    }

}
