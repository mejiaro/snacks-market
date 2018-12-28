PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170406155344');
INSERT INTO schema_migrations VALUES('20170407144950');
INSERT INTO schema_migrations VALUES('20170409053819');
INSERT INTO schema_migrations VALUES('20170409211823');
INSERT INTO schema_migrations VALUES('20170410171603');
INSERT INTO schema_migrations VALUES('20181224215355');
INSERT INTO schema_migrations VALUES('20181224223902');
INSERT INTO schema_migrations VALUES('20181224232757');
INSERT INTO schema_migrations VALUES('20181227164412');
INSERT INTO schema_migrations VALUES('20181228165410');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2018-12-24 23:33:04.836590','2018-12-24 23:33:04.836590');
CREATE TABLE IF NOT EXISTS "products" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "price" decimal(6,2), "stock" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO products VALUES(1,'Nerds',0.14999999999999999444,81,'2018-12-24 23:33:11.368891','2018-12-24 23:33:11.368891');
INSERT INTO products VALUES(2,'KitKat',0.9000000000000000222,5,'2018-12-24 23:33:11.373003','2018-12-24 23:33:11.373003');
INSERT INTO products VALUES(3,'Airheads',0.2000000000000000111,47,'2018-12-24 23:33:11.376290','2018-12-24 23:33:11.376290');
INSERT INTO products VALUES(4,'Aerodynamic Leather Watch',0.020000000000000000416,30,'2018-12-24 23:33:11.553011','2018-12-24 23:33:11.553011');
INSERT INTO products VALUES(5,'Small Silk Knife',0.029999999999999998889,20,'2018-12-24 23:33:11.555970','2018-12-24 23:33:11.555970');
INSERT INTO products VALUES(6,'Aerodynamic Concrete Keyboard',0.080000000000000001665,41,'2018-12-24 23:33:11.558798','2018-12-24 23:33:11.558798');
INSERT INTO products VALUES(7,'Practical Copper Lamp',0.010000000000000000208,29,'2018-12-24 23:33:11.561299','2018-12-24 23:33:11.561299');
INSERT INTO products VALUES(8,'Awesome Leather Coat',0.010000000000000000208,34,'2018-12-24 23:33:11.563831','2018-12-24 23:33:11.563831');
INSERT INTO products VALUES(9,'Enormous Marble Table',0.059999999999999997779,41,'2018-12-24 23:33:11.566571','2018-12-24 23:33:11.566571');
INSERT INTO products VALUES(10,'Heavy Duty Rubber Table',0.050000000000000002775,8,'2018-12-24 23:33:11.568867','2018-12-24 23:33:11.568867');
INSERT INTO products VALUES(11,'Small Rubber Coat',0.010000000000000000208,52,'2018-12-24 23:33:11.571511','2018-12-24 23:33:11.571511');
INSERT INTO products VALUES(12,'Mediocre Linen Car',0.050000000000000002775,36,'2018-12-24 23:33:11.574172','2018-12-24 23:33:11.574172');
INSERT INTO products VALUES(13,'Rustic Aluminum Shirt',0.059999999999999997779,19,'2018-12-24 23:33:11.577013','2018-12-24 23:33:11.577013');
INSERT INTO products VALUES(14,'Sleek Steel Bench',0.070000000000000006661,53,'2018-12-24 23:33:11.579415','2018-12-24 23:33:11.579415');
INSERT INTO products VALUES(15,'Small Marble Shirt',0.029999999999999998889,48,'2018-12-24 23:33:11.581896','2018-12-24 23:33:11.581896');
INSERT INTO products VALUES(16,'Synergistic Wool Lamp',0.020000000000000000416,35,'2018-12-24 23:33:11.585112','2018-12-24 23:33:11.585112');
INSERT INTO products VALUES(17,'Sleek Granite Shirt',0.040000000000000000832,30,'2018-12-24 23:33:11.589608','2018-12-24 23:33:11.589608');
INSERT INTO products VALUES(18,'Heavy Duty Wooden Shirt',0.050000000000000002775,25,'2018-12-24 23:33:11.592799','2018-12-24 23:33:11.592799');
INSERT INTO products VALUES(19,'Incredible Linen Car',0.059999999999999997779,7,'2018-12-24 23:33:11.595636','2018-12-24 23:33:11.595636');
INSERT INTO products VALUES(20,'Rustic Concrete Car',0.040000000000000000832,42,'2018-12-24 23:33:11.598237','2018-12-24 23:33:11.598237');
INSERT INTO products VALUES(21,'Fantastic Aluminum Clock',0.050000000000000002775,17,'2018-12-24 23:33:11.601102','2018-12-24 23:33:11.601102');
INSERT INTO products VALUES(22,'Small Concrete Car',0.080000000000000001665,42,'2018-12-24 23:33:11.603615','2018-12-24 23:33:11.603615');
INSERT INTO products VALUES(23,'Awesome Linen Shoes',0.059999999999999997779,32,'2018-12-24 23:33:11.607667','2018-12-24 23:33:11.607667');
INSERT INTO products VALUES(24,'Rustic Plastic Computer',0.059999999999999997779,23,'2018-12-24 23:33:11.612185','2018-12-24 23:33:11.612185');
INSERT INTO products VALUES(25,'Heavy Duty Plastic Chair',0.040000000000000000832,35,'2018-12-24 23:33:11.615517','2018-12-24 23:33:11.615517');
INSERT INTO products VALUES(26,'Practical Wool Gloves',0.059999999999999997779,20,'2018-12-24 23:33:11.619152','2018-12-24 23:33:11.619152');
INSERT INTO products VALUES(27,'Intelligent Iron Gloves',0.080000000000000001665,17,'2018-12-24 23:33:11.623518','2018-12-24 23:33:11.623518');
INSERT INTO products VALUES(28,'Mediocre Linen Pants',0.010000000000000000208,54,'2018-12-24 23:33:11.626227','2018-12-24 23:33:11.626227');
INSERT INTO products VALUES(29,'Fantastic Plastic Car',0.059999999999999997779,31,'2018-12-24 23:33:11.629167','2018-12-24 23:33:11.629167');
INSERT INTO products VALUES(30,'Awesome Linen Plate',0.080000000000000001665,24,'2018-12-24 23:33:11.631856','2018-12-24 23:33:11.631856');
INSERT INTO products VALUES(31,'Small Leather Gloves',0.029999999999999998889,24,'2018-12-24 23:33:11.634590','2018-12-24 23:33:11.634590');
INSERT INTO products VALUES(32,'Ergonomic Copper Bottle',0.040000000000000000832,26,'2018-12-24 23:33:11.638306','2018-12-24 23:33:11.638306');
INSERT INTO products VALUES(33,'Awesome Bronze Watch',0.059999999999999997779,17,'2018-12-24 23:33:11.640864','2018-12-24 23:33:11.640864');
INSERT INTO products VALUES(34,'Camisa',10.099999999999999644,100,'2018-12-28 16:57:32.141396','2018-12-28 16:57:32.145742');
CREATE TABLE IF NOT EXISTS "likes" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "product_id" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_f7ed05ee50"
FOREIGN KEY ("product_id")
  REFERENCES "products" ("id")
, CONSTRAINT "fk_rails_1e09b5dabf"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO likes VALUES(1,1,1,'2018-12-24 23:33:13.110870','2018-12-24 23:33:13.110870');
INSERT INTO likes VALUES(2,14,1,'2018-12-24 23:33:13.115826','2018-12-24 23:33:13.115826');
INSERT INTO likes VALUES(3,10,1,'2018-12-24 23:33:13.120021','2018-12-24 23:33:13.120021');
INSERT INTO likes VALUES(4,30,1,'2018-12-24 23:33:13.124267','2018-12-24 23:33:13.124267');
INSERT INTO likes VALUES(5,8,1,'2018-12-24 23:33:13.128580','2018-12-24 23:33:13.128580');
INSERT INTO likes VALUES(6,22,1,'2018-12-24 23:33:13.142565','2018-12-24 23:33:13.142565');
INSERT INTO likes VALUES(7,15,1,'2018-12-24 23:33:13.147017','2018-12-24 23:33:13.147017');
INSERT INTO likes VALUES(8,2,1,'2018-12-24 23:33:13.151454','2018-12-24 23:33:13.151454');
INSERT INTO likes VALUES(9,16,1,'2018-12-24 23:33:13.155996','2018-12-24 23:33:13.155996');
INSERT INTO likes VALUES(10,13,1,'2018-12-24 23:33:13.160372','2018-12-24 23:33:13.160372');
INSERT INTO likes VALUES(11,12,1,'2018-12-24 23:33:13.164985','2018-12-24 23:33:13.164985');
INSERT INTO likes VALUES(12,4,1,'2018-12-24 23:33:13.170303','2018-12-24 23:33:13.170303');
INSERT INTO likes VALUES(13,20,11,'2018-12-24 23:33:13.175140','2018-12-24 23:33:13.175140');
INSERT INTO likes VALUES(14,29,11,'2018-12-24 23:33:13.179438','2018-12-24 23:33:13.179438');
INSERT INTO likes VALUES(15,7,11,'2018-12-24 23:33:13.184256','2018-12-24 23:33:13.184256');
INSERT INTO likes VALUES(16,1,11,'2018-12-24 23:33:13.189067','2018-12-24 23:33:13.189067');
INSERT INTO likes VALUES(17,24,11,'2018-12-24 23:33:13.197165','2018-12-24 23:33:13.197165');
INSERT INTO likes VALUES(18,33,11,'2018-12-24 23:33:13.202956','2018-12-24 23:33:13.202956');
INSERT INTO likes VALUES(19,18,11,'2018-12-24 23:33:13.209083','2018-12-24 23:33:13.209083');
INSERT INTO likes VALUES(20,3,11,'2018-12-24 23:33:13.216483','2018-12-24 23:33:13.216483');
INSERT INTO likes VALUES(21,11,11,'2018-12-24 23:33:13.222479','2018-12-24 23:33:13.222479');
INSERT INTO likes VALUES(22,2,11,'2018-12-24 23:33:13.227215','2018-12-24 23:33:13.227215');
INSERT INTO likes VALUES(23,4,11,'2018-12-24 23:33:13.231844','2018-12-24 23:33:13.231844');
INSERT INTO likes VALUES(24,10,11,'2018-12-24 23:33:13.236171','2018-12-24 23:33:13.236171');
INSERT INTO likes VALUES(25,2,10,'2018-12-24 23:33:13.241619','2018-12-24 23:33:13.241619');
INSERT INTO likes VALUES(26,7,10,'2018-12-24 23:33:13.245464','2018-12-24 23:33:13.245464');
INSERT INTO likes VALUES(27,4,10,'2018-12-24 23:33:13.249062','2018-12-24 23:33:13.249062');
INSERT INTO likes VALUES(28,1,10,'2018-12-24 23:33:13.253521','2018-12-24 23:33:13.253521');
INSERT INTO likes VALUES(29,27,10,'2018-12-24 23:33:13.258276','2018-12-24 23:33:13.258276');
INSERT INTO likes VALUES(30,6,10,'2018-12-24 23:33:13.262581','2018-12-24 23:33:13.262581');
INSERT INTO likes VALUES(31,16,10,'2018-12-24 23:33:13.267715','2018-12-24 23:33:13.267715');
INSERT INTO likes VALUES(32,25,10,'2018-12-24 23:33:13.272921','2018-12-24 23:33:13.272921');
INSERT INTO likes VALUES(33,32,10,'2018-12-24 23:33:13.277551','2018-12-24 23:33:13.277551');
INSERT INTO likes VALUES(34,17,10,'2018-12-24 23:33:13.282619','2018-12-24 23:33:13.282619');
INSERT INTO likes VALUES(35,19,10,'2018-12-24 23:33:13.288337','2018-12-24 23:33:13.288337');
INSERT INTO likes VALUES(36,15,10,'2018-12-24 23:33:13.294073','2018-12-24 23:33:13.294073');
INSERT INTO likes VALUES(37,12,5,'2018-12-24 23:33:13.300003','2018-12-24 23:33:13.300003');
INSERT INTO likes VALUES(38,2,5,'2018-12-24 23:33:13.307619','2018-12-24 23:33:13.307619');
INSERT INTO likes VALUES(39,17,5,'2018-12-24 23:33:13.312526','2018-12-24 23:33:13.312526');
INSERT INTO likes VALUES(40,33,5,'2018-12-24 23:33:13.317955','2018-12-24 23:33:13.317955');
INSERT INTO likes VALUES(41,32,5,'2018-12-24 23:33:13.323724','2018-12-24 23:33:13.323724');
INSERT INTO likes VALUES(42,27,5,'2018-12-24 23:33:13.328088','2018-12-24 23:33:13.328088');
INSERT INTO likes VALUES(43,14,5,'2018-12-24 23:33:13.332623','2018-12-24 23:33:13.332623');
INSERT INTO likes VALUES(44,26,5,'2018-12-24 23:33:13.337540','2018-12-24 23:33:13.337540');
INSERT INTO likes VALUES(45,19,5,'2018-12-24 23:33:13.341785','2018-12-24 23:33:13.341785');
INSERT INTO likes VALUES(46,8,5,'2018-12-24 23:33:13.346217','2018-12-24 23:33:13.346217');
INSERT INTO likes VALUES(47,23,5,'2018-12-24 23:33:13.350345','2018-12-24 23:33:13.350345');
INSERT INTO likes VALUES(48,16,5,'2018-12-24 23:33:13.354620','2018-12-24 23:33:13.354620');
INSERT INTO likes VALUES(49,6,8,'2018-12-24 23:33:13.359267','2018-12-24 23:33:13.359267');
INSERT INTO likes VALUES(50,21,8,'2018-12-24 23:33:13.363431','2018-12-24 23:33:13.363431');
INSERT INTO likes VALUES(51,22,8,'2018-12-24 23:33:13.367252','2018-12-24 23:33:13.367252');
INSERT INTO likes VALUES(52,4,8,'2018-12-24 23:33:13.371169','2018-12-24 23:33:13.371169');
INSERT INTO likes VALUES(53,8,8,'2018-12-24 23:33:13.375126','2018-12-24 23:33:13.375126');
INSERT INTO likes VALUES(54,32,8,'2018-12-24 23:33:13.379291','2018-12-24 23:33:13.379291');
INSERT INTO likes VALUES(55,9,8,'2018-12-24 23:33:13.383954','2018-12-24 23:33:13.383954');
INSERT INTO likes VALUES(56,33,8,'2018-12-24 23:33:13.388269','2018-12-24 23:33:13.388269');
INSERT INTO likes VALUES(57,30,8,'2018-12-24 23:33:13.392254','2018-12-24 23:33:13.392254');
INSERT INTO likes VALUES(58,7,8,'2018-12-24 23:33:13.399859','2018-12-24 23:33:13.399859');
INSERT INTO likes VALUES(59,11,8,'2018-12-24 23:33:13.404785','2018-12-24 23:33:13.404785');
INSERT INTO likes VALUES(60,12,8,'2018-12-24 23:33:13.409064','2018-12-24 23:33:13.409064');
INSERT INTO likes VALUES(61,16,3,'2018-12-24 23:33:13.415619','2018-12-24 23:33:13.415619');
INSERT INTO likes VALUES(62,32,3,'2018-12-24 23:33:13.419614','2018-12-24 23:33:13.419614');
INSERT INTO likes VALUES(63,23,3,'2018-12-24 23:33:13.424308','2018-12-24 23:33:13.424308');
INSERT INTO likes VALUES(64,18,3,'2018-12-24 23:33:13.428911','2018-12-24 23:33:13.428911');
INSERT INTO likes VALUES(65,28,3,'2018-12-24 23:33:13.432869','2018-12-24 23:33:13.432869');
INSERT INTO likes VALUES(66,27,3,'2018-12-24 23:33:13.437012','2018-12-24 23:33:13.437012');
INSERT INTO likes VALUES(67,22,3,'2018-12-24 23:33:13.441231','2018-12-24 23:33:13.441231');
INSERT INTO likes VALUES(68,9,3,'2018-12-24 23:33:13.445532','2018-12-24 23:33:13.445532');
INSERT INTO likes VALUES(69,21,3,'2018-12-24 23:33:13.449796','2018-12-24 23:33:13.449796');
INSERT INTO likes VALUES(70,7,3,'2018-12-24 23:33:13.453812','2018-12-24 23:33:13.453812');
INSERT INTO likes VALUES(71,29,3,'2018-12-24 23:33:13.457717','2018-12-24 23:33:13.457717');
INSERT INTO likes VALUES(72,31,3,'2018-12-24 23:33:13.461772','2018-12-24 23:33:13.461772');
INSERT INTO likes VALUES(73,28,6,'2018-12-24 23:33:13.467191','2018-12-24 23:33:13.467191');
INSERT INTO likes VALUES(74,21,6,'2018-12-24 23:33:13.471160','2018-12-24 23:33:13.471160');
INSERT INTO likes VALUES(75,10,6,'2018-12-24 23:33:13.475198','2018-12-24 23:33:13.475198');
INSERT INTO likes VALUES(76,33,6,'2018-12-24 23:33:13.479066','2018-12-24 23:33:13.479066');
INSERT INTO likes VALUES(77,3,6,'2018-12-24 23:33:13.483555','2018-12-24 23:33:13.483555');
INSERT INTO likes VALUES(78,12,6,'2018-12-24 23:33:13.487963','2018-12-24 23:33:13.487963');
INSERT INTO likes VALUES(79,15,6,'2018-12-24 23:33:13.491734','2018-12-24 23:33:13.491734');
INSERT INTO likes VALUES(80,20,6,'2018-12-24 23:33:13.497018','2018-12-24 23:33:13.497018');
INSERT INTO likes VALUES(81,27,6,'2018-12-24 23:33:13.501161','2018-12-24 23:33:13.501161');
INSERT INTO likes VALUES(82,32,6,'2018-12-24 23:33:13.507070','2018-12-24 23:33:13.507070');
INSERT INTO likes VALUES(83,2,6,'2018-12-24 23:33:13.510921','2018-12-24 23:33:13.510921');
INSERT INTO likes VALUES(84,1,6,'2018-12-24 23:33:13.515340','2018-12-24 23:33:13.515340');
INSERT INTO likes VALUES(85,33,2,'2018-12-24 23:33:13.521071','2018-12-24 23:33:13.521071');
INSERT INTO likes VALUES(86,26,2,'2018-12-24 23:33:13.525028','2018-12-24 23:33:13.525028');
INSERT INTO likes VALUES(87,6,2,'2018-12-24 23:33:13.528879','2018-12-24 23:33:13.528879');
INSERT INTO likes VALUES(88,32,2,'2018-12-24 23:33:13.534311','2018-12-24 23:33:13.534311');
INSERT INTO likes VALUES(89,15,2,'2018-12-24 23:33:13.538603','2018-12-24 23:33:13.538603');
INSERT INTO likes VALUES(90,27,2,'2018-12-24 23:33:13.542277','2018-12-24 23:33:13.542277');
INSERT INTO likes VALUES(91,23,2,'2018-12-24 23:33:13.547080','2018-12-24 23:33:13.547080');
INSERT INTO likes VALUES(92,4,2,'2018-12-24 23:33:13.551131','2018-12-24 23:33:13.551131');
INSERT INTO likes VALUES(93,18,2,'2018-12-24 23:33:13.555117','2018-12-24 23:33:13.555117');
INSERT INTO likes VALUES(94,30,2,'2018-12-24 23:33:13.559327','2018-12-24 23:33:13.559327');
INSERT INTO likes VALUES(95,19,2,'2018-12-24 23:33:13.564281','2018-12-24 23:33:13.564281');
INSERT INTO likes VALUES(96,1,2,'2018-12-24 23:33:13.568999','2018-12-24 23:33:13.568999');
CREATE TABLE IF NOT EXISTS "audits" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "auditable_id" integer, "auditable_type" varchar, "associated_id" integer, "associated_type" varchar, "user_id" integer, "user_type" varchar, "username" varchar, "action" varchar, "audited_changes" text, "version" integer DEFAULT 0, "comment" varchar, "remote_address" varchar, "request_uuid" varchar, "created_at" datetime);
CREATE TABLE IF NOT EXISTS "orders" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "product_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_f868b47f6a"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
, CONSTRAINT "fk_rails_dfb33b2de0"
FOREIGN KEY ("product_id")
  REFERENCES "products" ("id")
);
CREATE TABLE IF NOT EXISTS "oauth_applications" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "uid" varchar NOT NULL, "secret" varchar NOT NULL, "redirect_uri" text NOT NULL, "scopes" varchar DEFAULT '' NOT NULL, "confidential" boolean DEFAULT 1 NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "oauth_access_grants" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_owner_id" integer NOT NULL, "application_id" integer NOT NULL, "token" varchar NOT NULL, "expires_in" integer NOT NULL, "redirect_uri" text NOT NULL, "created_at" datetime NOT NULL, "revoked_at" datetime, "scopes" varchar);
CREATE TABLE IF NOT EXISTS "oauth_access_tokens" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_owner_id" integer, "application_id" integer, "token" varchar NOT NULL, "refresh_token" varchar, "expires_in" integer, "revoked_at" datetime, "created_at" datetime NOT NULL, "scopes" varchar, "previous_refresh_token" varchar DEFAULT '' NOT NULL);
INSERT INTO oauth_access_tokens VALUES(1,1,NULL,'24a40a35dd7b457771da7d27108fd17f2d3111847962ebe5cbb638dc34bb4727','2bd23037c7ad29884d637d47235c33a0e5f5c36adf38ccc371ade85d1910e21a',7200,NULL,'2018-12-24 23:34:19.946758','','');
INSERT INTO oauth_access_tokens VALUES(2,1,NULL,'042d6f84fcb1e6c697720b060780472689f6b18ec4324c90b51889a1fbc1c884','4e9c5b426cb5d7648cbb6e920294f13dc45f200ed6c9604bd2939d638b947d8e',7200,NULL,'2018-12-24 23:34:45.311851','','2bd23037c7ad29884d637d47235c33a0e5f5c36adf38ccc371ade85d1910e21a');
INSERT INTO oauth_access_tokens VALUES(3,1,NULL,'a82ed2779460807c26a94f7846c7966ff67cf27d50ff323b04104cd67164dcfd','de73a6d5bc3f816676b51a28543cff987de1ac4e2ba27f614621ce873ce2782c',7200,NULL,'2018-12-24 23:34:48.418844','','2bd23037c7ad29884d637d47235c33a0e5f5c36adf38ccc371ade85d1910e21a');
INSERT INTO oauth_access_tokens VALUES(4,1,NULL,'8a1d4efaaf2605f8aebc7fc76a29d017e5a2d72d2f15c499bbec9255d8454180','a4de9e8ba96858197f80b1d2d22c2c8f565bb6d270433bbe153c7293f7db3fb2',7200,NULL,'2018-12-26 22:52:30.120456','','2bd23037c7ad29884d637d47235c33a0e5f5c36adf38ccc371ade85d1910e21a');
INSERT INTO oauth_access_tokens VALUES(5,12,NULL,'42e54b9b8906348a52e1d5677d55c62feef4001edb5af1802c5de7a46dddd7b3','e8ed14e0e3261e1956390a2bcd2f9e9bdb0480c27a098cd443a332218e2e86d0',7200,NULL,'2018-12-27 01:12:22.331714','','');
INSERT INTO oauth_access_tokens VALUES(6,11,NULL,'346d8081bfb2d5205f75e54542b0d8a894a9903f103f8289fa020fb9e6d795fd','1fe5b93b4ece8e9ebc11f8d34e8a66ce59fdd5d943a829fe26de60adc9fa89a0',7200,NULL,'2018-12-28 16:47:30.472935','','');
CREATE TABLE IF NOT EXISTS "users" ("id" integer NOT NULL PRIMARY KEY, "name" varchar DEFAULT NULL, "email" varchar DEFAULT NULL, "is_admin" boolean DEFAULT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar DEFAULT NULL, "reset_password_sent_at" datetime DEFAULT NULL, "confirmation_token" varchar, "confirmed_at" datetime, "confirmation_sent_at" datetime);
INSERT INTO users VALUES(1,'Stealy','stealy@snacks.io',1,'2018-12-24 23:33:11.780866','2018-12-24 23:33:11.780866','$2a$11$dJcvaAMCg3TB9RNDUJIjvOXuhSNu/PcG7vm.LhSHITOi8Tc.BqfRq',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(2,'Beth''s Mytholog','beth''smytholog@snacks.io',0,'2018-12-24 23:33:11.906843','2018-12-24 23:33:11.906843','$2a$11$xVXsseMLpmuq0K0cNIUGmulRDSbXeyhY1BAdzvocdu0UKNAUAsNpC',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(3,'Snuffles','snuffles@snacks.io',0,'2018-12-24 23:33:12.029971','2018-12-24 23:33:12.029971','$2a$11$JaHScggxFX93U6HtBXIdcelAsO3/WHNcIHFIZ0zlSoZU3Bor/HJLa',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(4,'Cousin Nicky','cousinnicky@snacks.io',1,'2018-12-24 23:33:12.154766','2018-12-24 23:33:12.154766','$2a$11$Caj0BDXqTYATqCFjomxuBuK8AcUF77GBnyiaKPmFZTpi5LK1Y3meO',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(5,'Eyeholes Man','eyeholesman@snacks.io',1,'2018-12-24 23:33:12.281965','2018-12-24 23:33:12.281965','$2a$11$LBGOA8DFYgi4oBZodnNIyeBFJMpgfvlcIB8H9WJEK7TrteaR.3Nym',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(6,'Dr. Glip-Glop','dr.glip-glop@snacks.io',0,'2018-12-24 23:33:12.407708','2018-12-24 23:33:12.407708','$2a$11$AF5kJeEMYnE4Q/4OjYB7r.ppjytAwZTziA7lkVkL1N4.PFkIHpwtC',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(7,'Lighthouse Chief','lighthousechief@snacks.io',0,'2018-12-24 23:33:12.533581','2018-12-24 23:33:12.533581','$2a$11$szKqAbK3tYnJF/AkCifS.e.rIP.X5LeY1rgP/6DxEuh9LOmvXSauC',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(8,'Mr. Meeseeks','mr.meeseeks@snacks.io',0,'2018-12-24 23:33:12.660058','2018-12-24 23:33:12.660058','$2a$11$2FGWJJu6.Y4yACNUOq..NuJPB1wU.SbrsfpjgLtGfhop0VjFk2Usu',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(9,'Jerry''s Mytholog','jerry''smytholog@snacks.io',1,'2018-12-24 23:33:12.786134','2018-12-24 23:33:12.786134','$2a$11$pswPx7RYe88/OPSuXiuG1evdcHutWwtfPgNveXRNKTXqJXd7ybpaW',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(10,'Revolio ''Gearhead'' Clockberg, Jr.','revolio''gearhead''clockberg,jr.@snacks.io',1,'2018-12-24 23:33:12.911564','2018-12-24 23:33:12.911564','$2a$11$VRtlgq7sskgm197.qRly/.H9Dxcq2lSOMel/O9KW7Q/KSJ4Vh8PwS',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(11,'Admin','admin@snacks.io',1,'2018-12-24 23:33:13.078657','2018-12-24 23:33:13.078657','$2a$11$pR6djL.iFWHrAPj5UQNpSeQ5wZogMX8hgkxONh0BBSG6erqGKDiQ6',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(12,'Ricardo','mejiaro1@gmail.com',NULL,'2018-12-27 01:00:37.834499','2018-12-27 01:00:37.834499','$2a$11$YYxR/8/OeECUD59SOLk/I.je3lEwdfHIW8cVcXcfCSlZPWIXdKqry',NULL,NULL,NULL,'2018-12-27 16:45:44.628848',NULL);
INSERT INTO users VALUES(13,'Ricardo','mejiaro@gmail.com',NULL,'2018-12-27 17:18:03.996378','2018-12-27 17:18:03.996378','$2a$11$HeZk.9zkuzG.fMkpCOKPZuJbNRqQylkRzPkh8klekQTIdKD8vDrjW',NULL,NULL,'xeBLyay6sKAigcjChXk4',NULL,'2018-12-27 17:18:03.998058');
CREATE TABLE IF NOT EXISTS "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "byte_size" bigint NOT NULL, "checksum" varchar NOT NULL, "created_at" datetime NOT NULL);
INSERT INTO active_storage_blobs VALUES(1,'yGH6AUaVGoYJiZQXisPQSp3z','camisa-2.png','image/png','{"identified":true}',15479,'prBUiEuAf0NpHsOKLk9p2A==','2018-12-28 16:57:32.106383');
CREATE TABLE IF NOT EXISTS "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" integer NOT NULL, "blob_id" integer NOT NULL, "created_at" datetime NOT NULL, CONSTRAINT "fk_rails_c3b3935057"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
INSERT INTO active_storage_attachments VALUES(1,'image','Product',34,1,'2018-12-28 16:57:32.143869');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('products',34);
INSERT INTO sqlite_sequence VALUES('likes',96);
INSERT INTO sqlite_sequence VALUES('oauth_access_tokens',6);
INSERT INTO sqlite_sequence VALUES('active_storage_blobs',1);
INSERT INTO sqlite_sequence VALUES('active_storage_attachments',1);
CREATE INDEX "index_likes_on_product_id" ON "likes" ("product_id");
CREATE INDEX "index_likes_on_user_id" ON "likes" ("user_id");
CREATE INDEX "auditable_index" ON "audits" ("auditable_id", "auditable_type");
CREATE INDEX "associated_index" ON "audits" ("associated_id", "associated_type");
CREATE INDEX "user_index" ON "audits" ("user_id", "user_type");
CREATE INDEX "index_audits_on_request_uuid" ON "audits" ("request_uuid");
CREATE INDEX "index_audits_on_created_at" ON "audits" ("created_at");
CREATE INDEX "index_orders_on_user_id" ON "orders" ("user_id");
CREATE INDEX "index_orders_on_product_id" ON "orders" ("product_id");
CREATE UNIQUE INDEX "index_oauth_applications_on_uid" ON "oauth_applications" ("uid");
CREATE INDEX "index_oauth_access_grants_on_resource_owner_id" ON "oauth_access_grants" ("resource_owner_id");
CREATE INDEX "index_oauth_access_grants_on_application_id" ON "oauth_access_grants" ("application_id");
CREATE UNIQUE INDEX "index_oauth_access_grants_on_token" ON "oauth_access_grants" ("token");
CREATE INDEX "index_oauth_access_tokens_on_resource_owner_id" ON "oauth_access_tokens" ("resource_owner_id");
CREATE INDEX "index_oauth_access_tokens_on_application_id" ON "oauth_access_tokens" ("application_id");
CREATE UNIQUE INDEX "index_oauth_access_tokens_on_token" ON "oauth_access_tokens" ("token");
CREATE UNIQUE INDEX "index_oauth_access_tokens_on_refresh_token" ON "oauth_access_tokens" ("refresh_token");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_users_on_confirmation_token" ON "users" ("confirmation_token");
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key");
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id");
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id");
COMMIT;
