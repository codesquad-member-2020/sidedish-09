package com.sidedish.be.web;

import com.sidedish.be.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RequestMapping("/items")
@RestController
public class ItemController {

    private final ItemService itemService;

    @GetMapping("/{hash}")
    public ResponseEntity<Object> findByHash(@PathVariable String hash) {
        return ResponseEntity.ok(itemService.findByHash(hash));
    }
}
