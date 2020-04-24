-- -----------------------------------------------------
-- ddl sql script
-- -----------------------------------------------------

CREATE TABLE sidedish_test.item (
      id BIGINT NOT NULL AUTO_INCREMENT,
      hash VARCHAR(5) NOT NULL,
      image VARCHAR(100) NOT NULL,
      title VARCHAR(45) NOT NULL,
      description VARCHAR(100) NULL,
      n_price BIGINT NOT NULL,
      delivery_fee BIGINT NOT NULL,
      delivery_date SET('월', '화', '수', '목', '금', '토', '일') NOT NULL,
      PRIMARY KEY (id),
      UNIQUE INDEX  (hash ASC))
ENGINE = InnoDB;

CREATE TABLE sidedish_test.delivery (
      id BIGINT NOT NULL AUTO_INCREMENT,
      type VARCHAR(45) NOT NULL,
      PRIMARY KEY (id))
ENGINE = InnoDB;

CREATE TABLE sidedish_test.sale (
      id BIGINT NOT NULL AUTO_INCREMENT,
      type VARCHAR(45) NOT NULL,
      percent TINYINT NOT NULL,
      PRIMARY KEY (id))
ENGINE = InnoDB;


CREATE TABLE sidedish_test.thumbnail (
      id BIGINT NOT NULL AUTO_INCREMENT,
      url VARCHAR(100) NOT NULL,
      item_id BIGINT NOT NULL,
      PRIMARY KEY (id),
      INDEX fk_thumbnail_item_idx (item_id ASC),
      CONSTRAINT fk_thumbnail_item
        FOREIGN KEY (item_id)
        REFERENCES item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE sidedish_test.detailImage (
      id BIGINT NOT NULL AUTO_INCREMENT,
      url VARCHAR(100) NOT NULL,
      item_id BIGINT NOT NULL,
      PRIMARY KEY (id),
      INDEX fk_detailImage_item1_idx (item_id ASC),
      CONSTRAINT fk_detailImage_item1
        FOREIGN KEY (item_id)
        REFERENCES item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE sidedish_test.item_delivery (
      item_id BIGINT NOT NULL,
      delivery_id BIGINT NOT NULL,
      PRIMARY KEY (item_id, delivery_id),
      INDEX fk_item_has_delivery_delivery1_idx (delivery_id ASC),
      INDEX fk_item_has_delivery_item1_idx (item_id ASC),
      CONSTRAINT fk_item_has_delivery_item1
        FOREIGN KEY (item_id)
        REFERENCES item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
      CONSTRAINT fk_item_has_delivery_delivery1
        FOREIGN KEY (delivery_id)
        REFERENCES delivery (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE sidedish_test.item_sale (
      item_id BIGINT NOT NULL,
      sale_id BIGINT NOT NULL,
      PRIMARY KEY (item_id, sale_id),
      INDEX fk_item_has_sale_sale1_idx (sale_id ASC),
      INDEX fk_item_has_sale_item1_idx (item_id ASC),
      CONSTRAINT fk_item_has_sale_item1
        FOREIGN KEY (item_id)
        REFERENCES item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
      CONSTRAINT fk_item_has_sale_sale1
        FOREIGN KEY (sale_id)
        REFERENCES sale (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE sidedish_test.category (
      id BIGINT NOT NULL AUTO_INCREMENT,
      title VARCHAR(45) NOT NULL,
      description VARCHAR(100) NOT NULL,
      PRIMARY KEY (id))
ENGINE = InnoDB;

CREATE TABLE sidedish_test.category_item (
      category_id BIGINT NOT NULL,
      item_id BIGINT NOT NULL,
      PRIMARY KEY (category_id, item_id),
      INDEX fk_category_has_item_item1_idx (item_id ASC),
      INDEX fk_category_has_item_category1_idx (category_id ASC),
      CONSTRAINT fk_category_has_item_category1
        FOREIGN KEY (category_id)
        REFERENCES category (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
      CONSTRAINT fk_category_has_item_item1
        FOREIGN KEY (item_id)
        REFERENCES item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
ENGINE = InnoDB;
