ALTER TABLE sidedish.category ADD type VARCHAR(45);

UPDATE sidedish.category SET type = 'carousel' WHERE id > 0;
