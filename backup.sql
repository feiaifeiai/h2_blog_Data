;             
CREATE USER IF NOT EXISTS SA SALT 'ad5b9d9f8414f0e4' HASH 'ce6952e05073b64e46766d93c4a7d1f4ec6504707f5473fd27cd655717d8943a' ADMIN;           
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_CCA9BBF2_0E35_48A6_BAA9_58455D1844D6 START WITH 1 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_67207DEB_3246_4916_862C_E2D1070A5ED3 START WITH 1 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_36F7DEAF_617A_4A78_91CA_D89DD391DC56 START WITH 33 BELONGS_TO_TABLE;   
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_5A0DFDC6_5D1B_4C80_8F3C_E22C1589133C START WITH 34 BELONGS_TO_TABLE;   
CREATE CACHED TABLE PUBLIC."schema_version"(
    "installed_rank" INT NOT NULL,
    "version" VARCHAR(50),
    "description" VARCHAR(200) NOT NULL,
    "type" VARCHAR(20) NOT NULL,
    "script" VARCHAR(1000) NOT NULL,
    "checksum" INT,
    "installed_by" VARCHAR(100) NOT NULL,
    "installed_on" TIMESTAMP DEFAULT CURRENT_TIMESTAMP() NOT NULL,
    "execution_time" INT NOT NULL,
    "success" BOOLEAN NOT NULL
);    
ALTER TABLE PUBLIC."schema_version" ADD CONSTRAINT PUBLIC."schema_version_pk" PRIMARY KEY("installed_rank");  
-- 2 +/- SELECT COUNT(*) FROM PUBLIC."schema_version";        
INSERT INTO PUBLIC."schema_version"("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "installed_on", "execution_time", "success") VALUES
(1, '1.1', 'init', 'SQL', 'V1_1__init.sql', -2120734098, 'SA', TIMESTAMP '2017-11-07 17:39:25.99', 2, TRUE),
(2, '1.2', 'role', 'SQL', 'V1_2__role.sql', -575375877, 'SA', TIMESTAMP '2017-11-07 17:39:25.994', 0, TRUE); 
CREATE INDEX PUBLIC."schema_version_s_idx" ON PUBLIC."schema_version"("success");             
CREATE CACHED TABLE PUBLIC."ARTICLE-REPLY"(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_CCA9BBF2_0E35_48A6_BAA9_58455D1844D6) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_CCA9BBF2_0E35_48A6_BAA9_58455D1844D6,
    ARTICLE_ID INT DEFAULT NULL,
    NAME VARCHAR(60) DEFAULT NULL,
    EMAIL VARCHAR(60) DEFAULT NULL,
    CONTENT VARCHAR(5000) DEFAULT NULL,
    CREATE_TIME VARCHAR(30) DEFAULT NULL
); 
ALTER TABLE PUBLIC."ARTICLE-REPLY" ADD CONSTRAINT PUBLIC.CONSTRAINT_C PRIMARY KEY(ID);        
-- 0 +/- SELECT COUNT(*) FROM PUBLIC."ARTICLE-REPLY";         
CREATE CACHED TABLE PUBLIC.ARTICLE(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_5A0DFDC6_5D1B_4C80_8F3C_E22C1589133C) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_5A0DFDC6_5D1B_4C80_8F3C_E22C1589133C,
    USER_ID INT DEFAULT NULL,
    TYPE INT DEFAULT NULL,
    TITLE VARCHAR(60) DEFAULT NULL,
    CONTENT TEXT DEFAULT NULL,
    CREATE_TIME VARCHAR(30) DEFAULT NULL,
    START_TIME VARCHAR(500) DEFAULT NULL,
    END_TIME VARCHAR(500) DEFAULT NULL
);         
ALTER TABLE PUBLIC.ARTICLE ADD CONSTRAINT PUBLIC.CONSTRAINT_F PRIMARY KEY(ID);
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.ARTICLE; 
INSERT INTO PUBLIC.ARTICLE(ID, USER_ID, TYPE, TITLE, CONTENT, CREATE_TIME, START_TIME, END_TIME) VALUES
(1, NULL, 0, '1111', '1111', '2017-11-07 18:11:11.716', '[]', '[]'),
(33, NULL, 0, '111', '2123', '2017-11-07 18:27:10.635', '[]', '[]');           
CREATE CACHED TABLE PUBLIC.USERS(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_36F7DEAF_617A_4A78_91CA_D89DD391DC56) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_36F7DEAF_617A_4A78_91CA_D89DD391DC56,
    USERNAME VARCHAR(255) DEFAULT NULL,
    USER_SEX VARCHAR(255) DEFAULT NULL,
    NICK_NAME VARCHAR(255) DEFAULT NULL,
    PASSWORD VARCHAR(255) DEFAULT NULL
);     
ALTER TABLE PUBLIC.USERS ADD CONSTRAINT PUBLIC.CONSTRAINT_4 PRIMARY KEY(ID);  
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.USERS;   
INSERT INTO PUBLIC.USERS(ID, USERNAME, USER_SEX, NICK_NAME, PASSWORD) VALUES
(1, '2484232069@qq.com', 'm', 'feiai', 'liqiangqqwqq0');        
CREATE CACHED TABLE PUBLIC.ROLE(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_67207DEB_3246_4916_862C_E2D1070A5ED3) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_67207DEB_3246_4916_862C_E2D1070A5ED3,
    NAME VARCHAR(255) DEFAULT NULL,
    URL VARCHAR(255) DEFAULT NULL,
    CREATE_TIME VARCHAR(255) DEFAULT NULL
);      
ALTER TABLE PUBLIC.ROLE ADD CONSTRAINT PUBLIC.CONSTRAINT_2 PRIMARY KEY(ID);   
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.ROLE;    
