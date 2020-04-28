INSERT INTO sidedish.category
    (id, title, type)
VALUES
    (4, '할인특가 세트상품', 'best'),
    (5, '풍성한 고기반찬', 'best'),
    (6, '바다향가득 반찬', 'best'),
    (7, '편리한 반찬세트', 'best');

INSERT INTO sidedish.category_item
    (category_id, item_id)
VALUES
    (4, 5), (4, 3), (4, 1), (4, 9),
    (5, 20), (5, 11), (5, 22), (5,16), (5, 2),
    (6, 19), (6, 21), (6, 3), (6, 2),
    (7, 18), (7, 7), (7, 8), (7, 15);
