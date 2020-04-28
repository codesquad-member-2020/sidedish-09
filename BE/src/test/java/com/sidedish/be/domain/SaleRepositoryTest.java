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
class SaleRepositoryTest {

    private Logger log = LoggerFactory.getLogger(SaleRepositoryTest.class);

    @Autowired
    private SaleRepository repository;

    @Test
    public void 할인_조회() {
        List<Long> ids = Arrays.asList(1L, 2L);

        List<Sale> sales = repository.findById(ids);

        assertThat(sales.size()).isEqualTo(ids.size());
        assertThat(sales.get(0).getId()).isEqualTo(ids.get(0));
        assertThat(sales.get(0).getPercent()).isGreaterThan(0);
        assertThat(sales.get(1).getId()).isEqualTo(ids.get(1));
        assertThat(sales.get(1).getPercent()).isGreaterThan(0);
    }

    @Test
    public void 비어있는_할인_조회() {
        List<Long> ids = Arrays.asList();

        List<Sale> sales = repository.findById(ids);

        assertThat(sales.size()).isEqualTo(0);
    }
}
