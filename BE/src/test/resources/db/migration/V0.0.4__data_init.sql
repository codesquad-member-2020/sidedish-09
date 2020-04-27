-- -----------------------------------------------------
-- dml sql script
-- -----------------------------------------------------

INSERT INTO sidedish_test.delivery
    (id, type)
VALUES
    (1, '새벽배송'), (2, '전국택배');


INSERT INTO sidedish_test.sale
    (id, type, percent)
VALUES
    (1, '론칭특가', 5),(2, '이밴트특가', 10);


INSERT INTO sidedish_test.category
    (id, title, description)
VALUES
    (1, '밑반찬', '언제 먹어도 든든한 밑반찬'),
    (2, '든든한 반찬', '담기만 하면 완성되는 메인반찬'),
    (3, '국.찌개', '김이 모락모락 국,찌개');


INSERT INTO sidedish_test.item
    (id, hash, image, title, description, n_price, delivery_fee, delivery_date)
VALUES
    (1, 'HBBCC', 'http://public.codesquad.kr/jk/storeapp/data/fdb0d5fcfb86e332505785225a6d9ade.jpg', '[마샐미디쉬] 유자소스 연근무침 250g', '향긋한 유자향과 아삭한 연근', 6500, 2500, '월,화,수,목,금,토'),
    (2, 'H1939', 'http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', '[동네부엌] 쇠고기야채장조림 200g', '부드러운 고기부터 밥비벼먹기 딱좋은 국물까지', 7400, 2500, '화,수,목,금,토'),
    (3, 'H8EA5', 'http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', '[소중한식사] 도라지초무침 150g', '새콤달콤 입맛 돋우는', 4000, 2500, '화,수,목,금,토'),
    (4, 'H602F', 'http://public.codesquad.kr/jk/storeapp/data/422befe07f7e2860b9a83a8d7049ec2e.jpg', '[미노리키친] 일본식 우엉조림(킨피라고보) 80g', '한국식 우엉조림과는 다른 진한 감칠맛', 3300, 2500, '월,화,수,목,금,토'),
    (5, 'H9F0B', 'ttp://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', '[빅마마의밥친구] 갈치포무침 150g', '쉽게 접할수 없는 꼬순내가득 갈치포 무침', 7000, 2500, '화,수,목,금,토'),
    (6, 'H0FC6', 'http://public.codesquad.kr/jk/storeapp/data/f6817349118d4c671da8dca9065649a9.jpg', '[마더앤찬] 명란치즈계란말이 230g', '아이반찬으로 최고 계란말이', 4300, 2500, '월,화,수,목,금,토'),
    (7, 'HCCFE', 'http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', '[옹가솜씨] 달걀곤약조림 330g', '칼로리 부담 쭉쭉 내린', 5800, 2500, '월,화,수,목,금,토'),
    (8, 'HB9C1', 'http://public.codesquad.kr/jk/storeapp/data/043cf496f07899e7515f761e29d1ffa9.jpg', '[너의반찬] 미소된장 고추무침 200g', '고소한 양념 때문에 손이 자꾸 가요', 4500, 2500, '월,화,수,목,금,토'),
    (9, 'HBDEF', 'http://public.codesquad.kr/jk/storeapp/data/2d3f99a9a35601f4e98837bc4d39b2c8.jpg', '[미노리키친] 규동 250g', '일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥', 7000, 2500, '월,화,수,목,금,토'),
    (10, 'HDF73', 'http://public.codesquad.kr/jk/storeapp/data/7674311a02ba7c88675f3186ddaeef9e.jpg', '[빅마마의밥친구] 아삭 고소한 연근고기조림 250g', '편식하는 아이도 좋아하는 건강한 연근조림', 5500, 2500, '화,수,목,금,토'),
    (11, 'HF778', 'http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg', '[소중한식사] 골뱅이무침 195g', '매콤새콤달콤, 반찬으로도 안주로도 좋은', 7000, 2500, '화,수,목,금,토'),
    (12, 'HFB53', 'http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', '[옹가솜씨] 꽁치간장조림 240g', '[옹가솜씨] 꽁치간장조림 240g', 5800, 2500, '월,화,수,목,금,토'),
    (13, 'H077F', 'http://public.codesquad.kr/jk/storeapp/data/0221110ead70dfd455e40703bbdd6252.jpg', '[마더앤찬] 코다리구이 320g', '큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.', 7500, 2500, '월,화,수,목,금,토'),
    (14, 'H4665', 'http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', '[남도애꽃] 반건조 문어조림 120g', '씹을수록 감칠맛나는 문어살의 쫄깃함', 4600, 2500, '화,수,목,금,토'),
    (15, 'H1AA9', 'http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', '[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g', '탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.', 6900, 2500, '월,화,수,목,금,토'),
    (16, 'HEDFB', 'http://public.codesquad.kr/jk/storeapp/data/bc3b777115e8377a48c7bd762fe5fdc9.jpg', '[빅마마의밥친구] 비빔오징어 150g', '달콤한 신야초발효액이 포인트!', 5000, 2500, '화,수,목,금,토'),
    (17, 'H72C3', 'http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', '[수하동] 특곰탕 850g', '100% 한우양지로 끓여낸 70년전통의 서울식곰탕', 15000, 2500, '화,수,목,금,토'),
    (18, 'HA6EE', 'http://public.codesquad.kr/jk/storeapp/data/c069bc32cb37727c59e1f0c2839311a0.jpg', '[빅마마의밥친구] 된장찌개 900g', '항아리에서 숙성시킨 집된장으로만 맛을내 짜지 않은 된장찌개', 10000, 2500, '월,화,수,목,금,토'),
    (19, 'H8CD0', 'http://public.codesquad.kr/jk/storeapp/data/f31fc3f5828c27ff60e4cf89a862d31c.jpg', '[탐나는밥상] 동태탕 1000g', '칼칼한 국물이 속 풀기에 딱 좋은 동태탕', 14000, 2500, '월,화,수,목,금,토'),
    (20, 'HE2E9', 'http://public.codesquad.kr/jk/storeapp/data/6edbb16da52708e8533b85fbf743f882.jpg', '[국물닷컴] 치즈부대찌개 600g', '안주용 부대찌개와는 달라 밥말아먹기 딱 좋은', 5500, 2500, '월,화,수,목,금,토'),
    (21, 'HAA47', 'http://public.codesquad.kr/jk/storeapp/data/892f3e7f043bfa7dbbcd58f88eecac36.jpg', '[집밥의완성] 스키야키 1.5kg (2~3인분)', '진한 풍미의 일본식 전골, 스키야키', 10000, 2500, '월,화,수,목,금,토'),
    (22, 'H3254', 'http://public.codesquad.kr/jk/storeapp/data/ae571e13d18fd4f0f40d685d2c8fe8f1.jpg', '[새로미부산어묵] 프리미엄 어묵탕세트', '밀가루 0% 프리미엄 어묵에 어묵스프까지 드려요!', 18000, 2500, '월,화,수,목,금,토'),
    (23, 'H26C7', 'http://public.codesquad.kr/jk/storeapp/data/8fd330b5f5dbccbcbf4f5731e5e9e29b.jpg', '[모이세] 육개장 1팩(600g)', '제주3대해장국 맛집의 인기메뉴', 5900, 2500, '월,화,수,목,금,토'),
    (24, 'HFFF9', 'http://public.codesquad.kr/jk/storeapp/data/2416b58044d49f0d3a24256f8e76163b.jpg', '[마더앤찬] 명란감자국  630ml', '간간한 저염명란과 고소한 감자가 조화로운 국이에요', 7000, 2500, '월,화,수,목,금,토');


INSERT INTO sidedish_test.item_delivery
    (item_id, delivery_id)
VALUES
    (1, 1),(1, 2),(2, 1),(2, 2),(3, 1),(3, 2),(4, 1),(4, 2),(5, 1),(5, 2),(6, 1),(6, 2),(7, 1),(7, 2),(8, 1),(8, 2),
    (9, 1),(9, 2),(10, 1),(10, 2),(11, 1),(11, 2),(12, 1),(12, 2),(13, 1),(13, 2),(14, 1),(14, 2),(15, 1),(15, 2),(16, 1),(16, 2),
    (17, 1),(17, 2),(18, 1),(18, 2),(19, 1),(19, 2),(20, 1),(20, 2),(21, 1),(21, 2),(22, 1),(22, 2),(23, 1),(23, 2),(24, 1),(24, 2);


INSERT INTO sidedish_test.item_sale
    (item_id, sale_id)
VALUES
    (6, 2),(9, 2),(11, 2),(13, 1),(14, 1),(15, 1),(17, 2),(20, 2),(21, 2),(22, 2),(22, 1),(23, 1),(24, 1);


INSERT INTO sidedish_test.thumbnail
    (url, item_id)
VALUES
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/e5646e5fc09a01a9243979b229e0572b.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/4cfd1954861ebd18b5b53e558a8e902e.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c8c8045696b4692107ef28c8b445ca42.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/d0b5d2be962947d9534e2140d1b34b2d.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/edc6bae2e2663f05b4e8eb5a2b95d68f.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c935f5913dc66b11ebceeef85485c438.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/7c1e24867611394f04b37d05593e21ba.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/757878b14ee5a8d5af905c154fc38f01.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/43c38eeffa556554c9b06301eb3e85b2.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4cce011a4a352c22cd399a60271b4921.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/6ef14155afc5b47e8c9efd762f7a6096.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/8744504ff3bc315f901dca1f26fe63a1.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/e30bd6de9340fc05db3cd1d1329b2c56.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0f95f44ea8e2e7930321def493753a48.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/cad8eee316cf7151e07638aa57b32a9d.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/b6beada6b89af950289003d929936d9c.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/385f4106ac26f6e4fe7c640714f405a5.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/2455226945d52f5aefd51f35d663bb16.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/2d408898494ac950d7d2cfd6c36d59c2.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/62c8bb77facfc9c3be81f9bf45b27f2a.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/f6d73afc0ebc1efa71eaea32e9d846f2.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/d1fccf125f0a78113d0e06cb888f2e74.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/92f556b605c4a84813070d7214c4f336.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/538b8ab021c7814aa4af860d94f81287.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/adaef08ab0680b087096afa0f0070fad.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/4e96f386d5a5c4459bc0ac6ffd0c1fce.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/00327d0df92e29bad02e7387349bed53.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/781fea32c56eb102429902a2f62cbaf3.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/2ad963a9f63d371826748c852a0025c3.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/f945d8ac1dccc3f931bcaf35de5de582.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/bacb0b8186371bfafbd92dbeec718e13.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b96b02e9a956c6d5ad1e10eb14ba81e0.jpg', 24);


INSERT INTO sidedish_test.detailImage
    (url, item_id)
VALUES
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 1),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 2),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 3),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 4),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 5),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 6),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 7),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 8),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/9c2c53b40a11b79c90549a058c2da4b7.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/70b0c77d3ef5cdd6269588685bbefe43.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/72f1049b047f65f42a267d5bbd1e6204.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/768afd17faa8bf3461b8160ba0aa26bf.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/95816f09d3294641f2e0feacaa739991.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/2450219a4686d9d6d579fc04020929b4.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/4971475295545ec336c9479fabb25364.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/a8c434715709fe855f3ea1554ec362b6.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HBDEF/b2b3d0d2107ab91b16e0eb804cd84bc9.jpg', 9),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 10),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 11),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 12),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 13),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 14),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 15),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/5f73c5c80b62ef63c8a8eecefe32fc29.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/9bd9158fb5ffbc46708b7928ee50708e.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0253cdebc4972fefd6b94458024fe765.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/3299da0677b50c8c519adc0335271c49.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/0642265b65dcc2490ab164ff428cbfe2.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/695683493c1ae475a175475f50d3259f.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/c8f9bed4f5c07585b869e3d171904a93.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HDF73/d2e3274c95c832bc9bfbcebbd548f61b.jpg', 16),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/341b8605fa224ec1808c4f169097d170.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/0228d4cb660a3cca06952917bd024dcb.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e027227f61a93b6473e8c4bbd5c3de74.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/03ac0b09199421bb61727c667c2361f6.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/cbe4a3e12b7bdba5cf410e0e19dcf1ca.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/b58fa5791b67db106524b48442cb1c6a.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/82cfe0332f0e1c927a23b79f1d152430.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/390ca9ad5a574cbe7f3f6e26871f6690.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H0FC6/e113889a6120357c8e6196802a9f155b.jpg', 17),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/670e7deefe1d84a4f4e058655fbd4d7c.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/1898cda038e92454395b8ffca8cd4393.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49516d302dad870fbdd75cf98a01eae4.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/c1bb6fe4f72fcea27ea989ae48c61c86.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/49afed8d3ec417b39ce8de456fc6661c.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/e62762e63f3e12dc2857a065badf1eea.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/31103ab946bff52b709ec6891e768c05.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/f84dc16f4f6d97661bd13d587a72d6b1.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H602F/fd3f49614f731a0610a5409c0deb3c60.jpg', 18),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 19),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/829c8a3fb87d98ef42ae449215d4c8b7.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/25900d6f62866f25c024105e10907f43.png', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/e52f3fbd48fbe9ff2ac99759cacd0042.png', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/edd7a54096d6df1b8bc8b318cea0191c.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/fb8e6e21faa8284021c1b1c7a1ae1281.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/HAA47/36a0566d2fb69a4bcea946727181836d.jpg', 20),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 21),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 22),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 23),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/3d67aabd2751620367e1d1ac3e3d7ef2.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/855b42b4e80162e6930f06aa80bd1272.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/1966de56cf138639d5d50d4bf2db8e72.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b3dd54082745d1188f3a6e582e7cd993.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/4a6fd1fd1116c14aa6aef5e6851ab6a9.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/7e12275d669102d0269278a7c91ab49d.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/ab34ea3755f59a21662266eb62b7bc4b.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/b0a70ff59a3b5360b6246b507693c4d4.jpg', 24),
    ('http://public.codesquad.kr/jk/storeapp/data/detail/H26C7/dc772923b4a2e053f1baf68fa28a48ee.jpg', 24);


INSERT INTO sidedish_test.category_item
    (category_id, item_id)
VALUES
    (1, 1),(1, 2),(1, 3),(1, 4),(1, 5),(1, 6),(1, 7),(1, 8),
    (2, 9),(2, 10),(2, 11),(2, 12),(2, 13),(2, 14),(2, 15),(2, 16),
    (3, 17),(3, 18),(3, 19),(3, 20),(3, 21),(3, 22),(3, 23),(3, 24);
