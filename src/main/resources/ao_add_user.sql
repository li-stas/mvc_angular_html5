
-- ao_USER
INSERT INTO ao_USER (USERNAME, PASSWORD, ENABLED,login,KTA) VALUES ('admin@gmail.com','12345',1,'login',0);
INSERT INTO ao_USER (USERNAME, PASSWORD, ENABLED,login,KTA) VALUES ('roleuser@outlook.com','12345',1,'login',462);
INSERT INTO ao_USER (USERNAME, PASSWORD, ENABLED,login,KTA) VALUES ('javastudy@outlook.com','12345',1,'login',462);
INSERT INTO ao_USER (USERNAME, PASSWORD, ENABLED,login,KTA) VALUES ('superuser@outlook.com','12345',1,'login',31);

INSERT INTO ao_USER (IDUSER,USERname,login,password,KTA, ENABLED)
VALUES (51,'ПИНЧУК В.П.','login51','pwd51',51,1);

INSERT INTO ao_USER (IDUSER,USERname,login,password,KTA, ENABLED)
VALUES (31,'ВИТМАРК','login51','pwd31',31,1);

INSERT INTO ao_USER (IDUSER,USERname,login,password,KTA, ENABLED)
VALUES (364,'БУДЯК Т.И.','login364','pwd364',364,1);

INSERT INTO ao_USER (IDUSER,USERname,login,password,KTA, ENABLED)
VALUES (461,'ФИЛИАЛ ШОСТКА','login461','pwd461',461,1);

INSERT INTO ao_USER (IDUSER,USERname,login,password,KTA, ENABLED)
VALUES (462,'КОДЕНЕЦ А.Н.','login462','pwd462',462,1);


-- INSERT INTO s_tag (KOD,FIO,KTAS) VALUES (469,'ГРЕК А.Ю.',31);
-- INSERT INTO s_tag (KOD,FIO,KTAS) VALUES (535,'САВЧЕНКО И.С.',31);
-- INSERT INTO s_tag (KOD,FIO,KTAS) VALUES (559,'КАНИВЕЦ Ю.О.',31);
-- INSERT INTO s_tag (KOD,FIO,KTAS) VALUES (592,'БУГАЕНКО А.Ю.',31);
-- INSERT INTO s_tag (KOD,FIO,KTAS) VALUES (594,'ЯРЕМЕНКО Е.Л.',31);
INSERT INTO ao_AUTHORITIES (USERname, AUTHORITY) VALUES ('admin@gmail.com','ROLE_ADMIN');
INSERT INTO ao_AUTHORITIES (USERname, AUTHORITY) VALUES ('roleuser@outlook.com','ROLE_USER');
INSERT INTO ao_AUTHORITIES (USERname, AUTHORITY) VALUES ('superuser@outlook.com','ROLE_SUPER_USER');
