ALTER TABLE bossyTable
ADD torseId int;
ALTER TABLE bossyTable
ADD CONSTRAINT FK_bossyTable_torseId
FOREIGN KEY (torseId) REFERENCES stoicTable(id);



UPDATE bossyTable SET torseId = 7  WHERE id = 1;
UPDATE bossyTable SET torseId = 3  WHERE id = 2;
UPDATE bossyTable SET torseId = 9  WHERE id = 3;
UPDATE bossyTable SET torseId = 1  WHERE id = 4;
UPDATE bossyTable SET torseId = 11 WHERE id = 5;
UPDATE bossyTable SET torseId = 5  WHERE id = 6;
UPDATE bossyTable SET torseId = 2  WHERE id = 7;
UPDATE bossyTable SET torseId = 8  WHERE id = 8;
UPDATE bossyTable SET torseId = 4  WHERE id = 9;
UPDATE bossyTable SET torseId = 6  WHERE id = 10;
UPDATE bossyTable SET torseId = 10 WHERE id = 11;

UPDATE bossyTable SET torseId = 1  WHERE id = 12;
UPDATE bossyTable SET torseId = 6  WHERE id = 13;
UPDATE bossyTable SET torseId = 8  WHERE id = 14;
UPDATE bossyTable SET torseId = 3  WHERE id = 15;
UPDATE bossyTable SET torseId = 7  WHERE id = 16;
UPDATE bossyTable SET torseId = 11 WHERE id = 17;
UPDATE bossyTable SET torseId = 4  WHERE id = 18;
UPDATE bossyTable SET torseId = 2  WHERE id = 19;
UPDATE bossyTable SET torseId = 9  WHERE id = 20;
UPDATE bossyTable SET torseId = 5  WHERE id = 21;
UPDATE bossyTable SET torseId = 10 WHERE id = 22;

UPDATE bossyTable SET torseId = 8  WHERE id = 23;
UPDATE bossyTable SET torseId = 3  WHERE id = 24;
UPDATE bossyTable SET torseId = 6  WHERE id = 25;
UPDATE bossyTable SET torseId = 9  WHERE id = 26;
UPDATE bossyTable SET torseId = 2  WHERE id = 27;
UPDATE bossyTable SET torseId = 1  WHERE id = 28;
UPDATE bossyTable SET torseId = 7  WHERE id = 29;
UPDATE bossyTable SET torseId = 10 WHERE id = 30;
UPDATE bossyTable SET torseId = 5  WHERE id = 31;
UPDATE bossyTable SET torseId = 4  WHERE id = 32;
UPDATE bossyTable SET torseId = 11 WHERE id = 33;

UPDATE bossyTable SET torseId = 9  WHERE id = 34;
UPDATE bossyTable SET torseId = 3  WHERE id = 35;
UPDATE bossyTable SET torseId = 6  WHERE id = 36;
UPDATE bossyTable SET torseId = 1  WHERE id = 37;