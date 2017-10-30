;             
CREATE USER IF NOT EXISTS SA SALT '27c5b2c45dcc53f1' HASH '9264015d5d03850951a580e5f0ed6bb553280bff253b5e08fd56b4ca1d4aedbd' ADMIN;           
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_2BF7D86B_57EE_44BC_AFE3_CBF8008C06FD START WITH 1 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_DA7F59C4_324D_4914_8128_D8175F0B603A START WITH 2 BELONGS_TO_TABLE;    
CREATE SEQUENCE PUBLIC.SYSTEM_SEQUENCE_0B9F2766_0859_4C39_BC5F_289515E1E169 START WITH 1 BELONGS_TO_TABLE;    
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
-- 1 +/- SELECT COUNT(*) FROM PUBLIC."schema_version";        
INSERT INTO PUBLIC."schema_version"("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "installed_on", "execution_time", "success") VALUES
(1, '1.1', 'init', 'SQL', 'V1_1__init.sql', -2120734098, 'SA', TIMESTAMP '2017-10-30 15:01:42.07', 5, TRUE);               
CREATE INDEX PUBLIC."schema_version_s_idx" ON PUBLIC."schema_version"("success");             
CREATE CACHED TABLE PUBLIC."ARTICLE-REPLY"(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_0B9F2766_0859_4C39_BC5F_289515E1E169) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_0B9F2766_0859_4C39_BC5F_289515E1E169,
    ARTICLE_ID INT DEFAULT NULL,
    NAME VARCHAR(60) DEFAULT NULL,
    EMAIL VARCHAR(60) DEFAULT NULL,
    CONTENT VARCHAR(5000) DEFAULT NULL,
    CREATE_TIME VARCHAR(30) DEFAULT NULL
); 
ALTER TABLE PUBLIC."ARTICLE-REPLY" ADD CONSTRAINT PUBLIC.CONSTRAINT_C PRIMARY KEY(ID);        
-- 0 +/- SELECT COUNT(*) FROM PUBLIC."ARTICLE-REPLY";         
CREATE CACHED TABLE PUBLIC.ARTICLE(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_DA7F59C4_324D_4914_8128_D8175F0B603A) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_DA7F59C4_324D_4914_8128_D8175F0B603A,
    USER_ID INT DEFAULT NULL,
    TYPE INT DEFAULT NULL,
    TITLE VARCHAR(60) DEFAULT NULL,
    CONTENT TEXT DEFAULT NULL,
    CREATE_TIME VARCHAR(30) DEFAULT NULL,
    START_TIME VARCHAR(500) DEFAULT NULL,
    END_TIME VARCHAR(500) DEFAULT NULL
);         
ALTER TABLE PUBLIC.ARTICLE ADD CONSTRAINT PUBLIC.CONSTRAINT_F PRIMARY KEY(ID);
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.ARTICLE; 
INSERT INTO PUBLIC.ARTICLE(ID, USER_ID, TYPE, TITLE, CONTENT, CREATE_TIME, START_TIME, END_TIME) VALUES
(1, NULL, 0, STRINGDECODE('java \u7ebf\u7a0b'), STRINGDECODE('java\u7ebf\u7a0b'), '2017-10-30 15:13:33.883', '[]', '[]');            
CREATE CACHED TABLE PUBLIC.USERS(
    ID INT DEFAULT (NEXT VALUE FOR PUBLIC.SYSTEM_SEQUENCE_2BF7D86B_57EE_44BC_AFE3_CBF8008C06FD) NOT NULL NULL_TO_DEFAULT SEQUENCE PUBLIC.SYSTEM_SEQUENCE_2BF7D86B_57EE_44BC_AFE3_CBF8008C06FD,
    USERNAME VARCHAR(255) DEFAULT NULL,
    USER_SEX VARCHAR(255) DEFAULT NULL,
    NICK_NAME VARCHAR(255) DEFAULT NULL,
    PASSWORD VARCHAR(255) DEFAULT NULL
);     
ALTER TABLE PUBLIC.USERS ADD CONSTRAINT PUBLIC.CONSTRAINT_4 PRIMARY KEY(ID);  
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.USERS;   
