


DROP TABLE IF EXISTS usercredentials;

create table usercredentials( ID int primary key AUTO_INCREMENT NOT NULL,
                              username varchar(25),
                              password varchar(25),
                              enabled boolean

);


INSERT INTO usercredentials(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO usercredentials(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);

					
DROP TABLE IF EXISTS location;

create table location( ID int primary key AUTO_INCREMENT NOT NULL, 
						street varchar(25),
						city varchar(25),
						state varchar(25),
 						zip varchar(25)
					);

INSERT INTO `location`  VALUES (1,'2000 N Court Street', 'Fairfield', 'IA', '52556');
INSERT INTO `location`  VALUES (2,'1390 Mission Strret', 'San Francisco', 'CA', '94566');

create table authorities( ID int primary key AUTO_INCREMENT NOT NULL,
                          id int(25),
                          AUTHORITY varchar(25),
                          username varchar(25)

);

INSERT INTO `authorities` VALUES (1, 'ROLE_ADMIN','admin');
INSERT INTO `authorities` VALUES (2, 'ROLE_USER','guest');
INSERT INTO `authorities` VALUES (3, 'ROLE_USER','admin');

					

					