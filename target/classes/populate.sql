
INSERT INTO usercredentials(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO usercredentials(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);


INSERT INTO `authorities` VALUES (1, 'ROLE_ADMIN','admin');
INSERT INTO `authorities` VALUES (2, 'ROLE_USER','guest');
INSERT INTO `authorities` VALUES (3, 'ROLE_USER','admin');



INSERT INTO `location`  VALUES (1,'2000 N Court Street', 'Fairfield', 'IA', '52556');
INSERT INTO `location`  VALUES (2,'1390 Mission Strret', 'San Francisco', 'CA', '94566');


--INSERT INTO `users`  VALUES (1,'admin', 'F', 'Bisr', '1', 'admin');
--INSERT INTO `users`   VALUES (2,'guest', 'F', 'Fikir', '2', 'guest');


--INSERT INTO `account`  VALUES (1,'1234', 'CHECKING', '1000',1);
--INSERT INTO `account`  VALUES (2,'5678', 'SAVING', '1500',1);
--INSERT INTO `account`  VALUES (3,'91011', 'CREDIT', '2000',1);



--INSERT INTO `account`  VALUES (1,'0234', 'CHECKING', '1000',2);
--INSERT INTO `account`  VALUES (2,'0678', 'SAVING', '1500',2);
--INSERT INTO `account`  VALUES (3,'01011', 'CREDIT', '2000',2);








