;             
CREATE USER IF NOT EXISTS SA SALT '85a853b72f928af5' HASH '015ba894806bb54e0d7fe66f1e3ce7c9280c239ed8b7fafd78335abbeabe3ba6' ADMIN;           
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_CFB5B3FE_8569_461F_9023_D090776E5B86 START WITH 2 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_23400E0E_CBD4_42D3_A245_2E34137956B8 START WITH 1 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_A2AF29DE_7A76_435D_8500_BDECBB356B61 START WITH 1 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_7DC0F7C9_CC59_44C0_9B63_103B3DFB055B START WITH 1 BELONGS_TO_TABLE;    
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
(1, '1.1', 'init', 'SQL', 'V1_1__init.sql', -2120734098, 'SA', TIMESTAMP '2017-11-09 14:53:15.858', 4, TRUE),
(2, '1.2', 'role', 'SQL', 'V1_2__role.sql', -575375877, 'SA', TIMESTAMP '2017-11-09 14:53:15.864', 1, TRUE);
CREATE INDEX PUBLIC."schema_version_s_idx" ON PUBLIC."schema_version"("success");             
CREATE CACHED TABLE PUBLIC."ARTICLE-REPLY"(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_23400E0E_CBD4_42D3_A245_2E34137956B8) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_23400E0E_CBD4_42D3_A245_2E34137956B8,
    ARTICLE_ID INT DEFAULT NULL,
    NAME VARCHAR(60) DEFAULT NULL,
    EMAIL VARCHAR(60) DEFAULT NULL,
    CONTENT VARCHAR(5000) DEFAULT NULL,
    CREATE_TIME VARCHAR(30) DEFAULT NULL
); 
ALTER TABLE PUBLIC."ARTICLE-REPLY" ADD CONSTRAINT PUBLIC.CONSTRAINT_C PRIMARY KEY(ID);        
-- 0 +/- SELECT COUNT(*) FROM PUBLIC."ARTICLE-REPLY";         
CREATE CACHED TABLE PUBLIC.ARTICLE(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_A2AF29DE_7A76_435D_8500_BDECBB356B61) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_A2AF29DE_7A76_435D_8500_BDECBB356B61,
    USER_ID INT DEFAULT NULL,
    TYPE INT DEFAULT NULL,
    TITLE VARCHAR(60) DEFAULT NULL,
    CONTENT TEXT DEFAULT NULL,
    CREATE_TIME VARCHAR(30) DEFAULT NULL,
    START_TIME VARCHAR(500) DEFAULT NULL,
    END_TIME VARCHAR(500) DEFAULT NULL
);         
ALTER TABLE PUBLIC.ARTICLE ADD CONSTRAINT PUBLIC.CONSTRAINT_F PRIMARY KEY(ID);
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.ARTICLE; 
CREATE CACHED TABLE PUBLIC.USERS(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_CFB5B3FE_8569_461F_9023_D090776E5B86) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_CFB5B3FE_8569_461F_9023_D090776E5B86,
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
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_7DC0F7C9_CC59_44C0_9B63_103B3DFB055B) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_7DC0F7C9_CC59_44C0_9B63_103B3DFB055B,
    NAME VARCHAR(255) DEFAULT NULL,
    URL VARCHAR(255) DEFAULT NULL,
    CREATE_TIME VARCHAR(255) DEFAULT NULL
);      
ALTER TABLE PUBLIC.ROLE ADD CONSTRAINT PUBLIC.CONSTRAINT_2 PRIMARY KEY(ID);   
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.ROLE;    
