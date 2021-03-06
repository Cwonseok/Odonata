-- Member 테이블

  CREATE TABLE "ODONATA"."MEMBER" 
   (    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "USER_NAME" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "USER_PWD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
    "USER_EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
    "USER_PHONE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
    "USER_BIRTH" DATE NOT NULL ENABLE, 
    "USER_ID" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "USER_TYPE" VARCHAR2(30 BYTE) DEFAULT 'User' NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE, 
     CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USER_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- MSG 테이블

  CREATE TABLE "ODONATA"."MSG" 
   (    "MESSAGE_CODE" NUMBER NOT NULL ENABLE, 
    "MESSAGE_TITLE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
    "SENDTIME" DATE NOT NULL ENABLE, 
    "READTIME" DATE NOT NULL ENABLE, 
    "MSGTEXT" VARCHAR2(300 BYTE), 
    "SEND_ID" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "RECEIVE_ID" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
    "FIELD" VARCHAR2(255 BYTE), 
     CONSTRAINT "PK_MSG" PRIMARY KEY ("MESSAGE_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Payment 테이블

 CREATE TABLE "ODONATA"."PAYMENT" 
   (	"P_CODE" NUMBER NOT NULL ENABLE, 
	"P_STATUS" CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE, 
	"P_METHOD" VARCHAR2(50 BYTE), 
	"P_TOTAL" NUMBER NOT NULL ENABLE, 
	"V_CODE" NUMBER NOT NULL ENABLE, 
	"P_DATE" DATE NOT NULL ENABLE, 
	 CONSTRAINT "PK_PAYMENT" PRIMARY KEY ("P_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Reserv 테이블

  CREATE TABLE "ODONATA"."RESERV" 
   (    "V_CODE" NUMBER NOT NULL ENABLE, 
    "V_STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
    "CHECK_IN" DATE NOT NULL ENABLE, 
    "CHECK_OUT" DATE NOT NULL ENABLE, 
    "PERSONNEL" NUMBER NOT NULL ENABLE, 
    "ROOMS_CODE" NUMBER NOT NULL ENABLE, 
    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_RESERV" PRIMARY KEY ("V_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Review 테이블

  CREATE TABLE "ODONATA"."REVIEW" 
   (    "R_CODE" NUMBER NOT NULL ENABLE, 
    "R_CONTENT" NVARCHAR2(200), 
    "R_UPDATE" DATE NOT NULL ENABLE, 
    "R_MODFIY" DATE NOT NULL ENABLE, 
    "USER_CODE" NUMBER NOT NULL ENABLE, 
    "ROOMS_CODE" NUMBER NOT NULL ENABLE, 
    "STATUS" CHAR(1 BYTE) NOT NULL ENABLE, 
     CONSTRAINT "PK_REVIEW" PRIMARY KEY ("R_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;


-- Rooms 테이블

  CREATE TABLE "SEMIPJ"."ROOMS" 
   (	"ROOMS_CODE" NUMBER NOT NULL ENABLE, 
	"ROOMS_HOST" VARCHAR2(300 BYTE), 
	"ROOMS_TYPE" VARCHAR2(20 BYTE), 
	"ROOMS_ADDR" VARCHAR2(100 BYTE), 
	"ROOMS_PRICE" VARCHAR2(100 BYTE), 
	"ROOMS_PERSONNEL" VARCHAR2(100 BYTE), 
	"ROOMS_ROOMCNT" VARCHAR2(50 BYTE), 
	"ROOMS_TOILETCNT" VARCHAR2(50 BYTE), 
	"ROOMS_DOGAVAIL" VARCHAR2(100 BYTE) DEFAULT 'N', 
	"AMENITY" VARCHAR2(200 BYTE), 
	"ROOMS_DESC" VARCHAR2(500 BYTE), 
	"ROOMS_REGDATE" DATE, 
	"STATUS" VARCHAR2(50 BYTE) DEFAULT 'Y', 
	"USER_CODE" NUMBER NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SEMIPJ"."ROOMS"."ROOMS_PRICE" IS '원';
   COMMENT ON COLUMN "SEMIPJ"."ROOMS"."ROOMS_PERSONNEL" IS 'Min. 1';
   COMMENT ON COLUMN "SEMIPJ"."ROOMS"."ROOMS_ROOMCNT" IS 'Min. 1';
   COMMENT ON COLUMN "SEMIPJ"."ROOMS"."ROOMS_TOILETCNT" IS 'Min. 0';
   COMMENT ON COLUMN "SEMIPJ"."ROOMS"."ROOMS_DOGAVAIL" IS 'Y or N';
   COMMENT ON COLUMN "SEMIPJ"."ROOMS"."STATUS" IS 'Y or N';


-- SookSoIMG 테이블

  CREATE TABLE "SEMIPJ"."SOOKSOIMG" 
   (	"IMAGE_NUMBER" NUMBER NOT NULL ENABLE, 
	"ORIGIN_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"CHANGE_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"IMG_LEVEL" NUMBER, 
	"IMG_PATH" VARCHAR2(300 BYTE) NOT NULL ENABLE, 
	"ROOMS_CODE" NUMBER NOT NULL ENABLE, 
	"STATUS" VARCHAR2(20 BYTE) DEFAULT 'Y' NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SEMIPJ"."SOOKSOIMG"."STATUS" IS 'Y or N';

-- PAYMENT 시퀸스 추가 [2021-11-21]
CREATE SEQUENCE SEQ_PCD
START WITH 1
INCREMENT BY 1
MAXVALUE 500
MINVALUE 1
CYCLE
NOCACHE; 