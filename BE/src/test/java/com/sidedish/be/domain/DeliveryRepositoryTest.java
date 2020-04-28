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
class DeliveryRepositoryTest {

    private Logger log = LoggerFactory.getLogger(DeliveryRepositoryTest.class);

    @Autowired
    private DeliveryRepository repository;

    @Test
    public void 딜리버리_조회() {
        List<Long> ids = Arrays.asList(1L, 2L);

        List<Delivery> deliveries = repository.findById(ids);

        assertThat(deliveries.size()).isEqualTo(ids.size());
        assertThat(deliveries.get(0).getId()).isEqualTo(ids.get(0));
        assertThat(deliveries.get(1).getId()).isEqualTo(ids.get(1));
    }

    @Test
    public void 비어있는_딜리버리_조회() {
        List<Long> ids = Arrays.asList();

        List<Delivery> deliveries = repository.findById(ids);

        assertThat(deliveries.size()).isEqualTo(0);
    }
}
