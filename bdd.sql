--------------------------------------------------------
--  Fichier créé - mercredi-décembre-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STATUS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."STATUS" 
   (	"ID_STATUS" NUMBER(*,0), 
	"STATUS" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USERS" 
   (    "ID_USER" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 1000000 INCREMENT BY 1 START WITH 1 CACHE 2 ORDER  CYCLE  NOKEEP  NOSCALE,	
   "FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"BIRTH_DATE" DATE, 
	"STUDY_LEVEL" VARCHAR2(20 BYTE), 
	"ESTABLISHMENT" VARCHAR2(20 BYTE), 
	"CERTIFICATE_REGIST" VARCHAR2(255 BYTE), 
	"PHOTO" VARCHAR2(255 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUCT" 
   (    "ID_PRODUCT" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 1000000 INCREMENT BY 1 START WITH 1 CACHE 10000 ORDER  CYCLE  NOKEEP  NOSCALE , 	
   "NAME" VARCHAR2(20 BYTE), 
	"IMAGE" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE),
    "PRICE" NUMBER,
	"ID_STATUS" NUMBER(*,0), 
	"ID_CATEGORY" NUMBER(*,0), 
	"ID_USER" NUMBER(*,0), 
	"ID_AVAILABILITY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CART" 
   (	"ID_CART" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 1000000 INCREMENT BY 1 START WITH 1 CACHE 2 ORDER  CYCLE  NOKEEP  NOSCALE , 
	"ID_USER" NUMBER(*,0), 
	"ID_PRODUCT" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AVAILABILITY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AVAILABILITY" 
   (	"ID" NUMBER, 
	"AVAILABILITY" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CATEGORY" 
   (	"ID_CATEGORY" NUMBER(*,0), 
	"NAME" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.STATUS
SET DEFINE OFF;
Insert into SYSTEM.STATUS (ID_STATUS,STATUS) values ('1','Tout neuf');
REM INSERTING into SYSTEM.USERS
SET DEFINE OFF;
Insert into SYSTEM.USERS (FIRST_NAME,LAST_NAME,EMAIL,BIRTH_DATE,STUDY_LEVEL,ESTABLISHMENT,CERTIFICATE_REGIST,PHOTO,PASSWORD,ID_USER) values ('test','test','test@gmail.com',to_date('15/11/00','DD/MM/RR'),'test','test','test','test','test','7');
Insert into SYSTEM.USERS (FIRST_NAME,LAST_NAME,EMAIL,BIRTH_DATE,STUDY_LEVEL,ESTABLISHMENT,CERTIFICATE_REGIST,PHOTO,PASSWORD,ID_USER) values ('aaa','aaa','aa',to_date('15/11/22','DD/MM/RR'),'a','a','a','a','aa','9');
Insert into SYSTEM.USERS (FIRST_NAME,LAST_NAME,EMAIL,BIRTH_DATE,STUDY_LEVEL,ESTABLISHMENT,CERTIFICATE_REGIST,PHOTO,PASSWORD,ID_USER) values ('oanh','Th','ngng@gmail.com',to_date('15/11/96','DD/MM/RR'),'a','a','a','a','1234','11');
Insert into SYSTEM.USERS (FIRST_NAME,LAST_NAME,EMAIL,BIRTH_DATE,STUDY_LEVEL,ESTABLISHMENT,CERTIFICATE_REGIST,PHOTO,PASSWORD,ID_USER) values ('LE','Phong sac','lephongsac@gmail.com',to_date('15/11/96','DD/MM/RR'),'Master','Nanterre','Yes','Yes','15111996','4');
Insert into SYSTEM.USERS (FIRST_NAME,LAST_NAME,EMAIL,BIRTH_DATE,STUDY_LEVEL,ESTABLISHMENT,CERTIFICATE_REGIST,PHOTO,PASSWORD,ID_USER) values ('abc','abc','abc',to_date('15/11/96','DD/MM/RR'),'1511','1511','1511','15','abc','5');
REM INSERTING into SYSTEM.PRODUCT
SET DEFINE OFF;
Insert into SYSTEM.PRODUCT (NAME,IMAGE,DESCRIPTION,ID_STATUS,ID_CATEGORY,ID_USER,ID_PRODUCT,ID_AVAILABILITY,PRICE) values ('TestFonction','TestFonction','TestFonction','1','2','4','220','1','200');
Insert into SYSTEM.PRODUCT (NAME,IMAGE,DESCRIPTION,ID_STATUS,ID_CATEGORY,ID_USER,ID_PRODUCT,ID_AVAILABILITY,PRICE) values ('Update','Update','Update','1','2','4','221','1','200');
Insert into SYSTEM.PRODUCT (NAME,IMAGE,DESCRIPTION,ID_STATUS,ID_CATEGORY,ID_USER,ID_PRODUCT,ID_AVAILABILITY,PRICE) values ('livre','abc','abc','1','1','5','115','2','100');
Insert into SYSTEM.PRODUCT (NAME,IMAGE,DESCRIPTION,ID_STATUS,ID_CATEGORY,ID_USER,ID_PRODUCT,ID_AVAILABILITY,PRICE) values ('abc','e','e','1','1','5','116','2','100');
REM INSERTING into SYSTEM.CART
SET DEFINE OFF;
REM INSERTING into SYSTEM.AVAILABILITY
SET DEFINE OFF;
Insert into SYSTEM.AVAILABILITY (ID,AVAILABILITY) values ('1','Available');
Insert into SYSTEM.AVAILABILITY (ID,AVAILABILITY) values ('2','Solde');
Insert into SYSTEM.AVAILABILITY (ID,AVAILABILITY) values ('3','Reserve');
REM INSERTING into SYSTEM.CATEGORY
SET DEFINE OFF;
Insert into SYSTEM.CATEGORY (ID_CATEGORY,NAME) values ('1','Livre');
Insert into SYSTEM.CATEGORY (ID_CATEGORY,NAME) values ('2','Equipements');
Insert into SYSTEM.CATEGORY (ID_CATEGORY,NAME) values ('3','Autres');
--------------------------------------------------------
--  DDL for Index STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."STATUS_PK" ON "SYSTEM"."STATUS" ("ID_STATUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."USERS_PK" ON "SYSTEM"."USERS" ("ID_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PRODUCT_PK" ON "SYSTEM"."PRODUCT" ("ID_PRODUCT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CART_PK" ON "SYSTEM"."CART" ("ID_CART") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index AVAILABILITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."AVAILABILITY_PK" ON "SYSTEM"."AVAILABILITY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CATEGORY_PK" ON "SYSTEM"."CATEGORY" ("ID_CATEGORY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."USERS_TRG" 
BEFORE INSERT ON USERS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SYSTEM"."USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCT_TRG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."PRODUCT_TRG" 
BEFORE INSERT ON PRODUCT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "SYSTEM"."PRODUCT_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table STATUS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."STATUS" MODIFY ("ID_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STATUS" ADD CONSTRAINT "STATUS_PK" PRIMARY KEY ("ID_STATUS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USERS" MODIFY ("ID_USER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("FIRST_NAME" NOT NULL DISABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("LAST_NAME" NOT NULL DISABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("EMAIL" NOT NULL DISABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("BIRTH_DATE" NOT NULL DISABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("STUDY_LEVEL" NOT NULL DISABLE);
  ALTER TABLE "SYSTEM"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("PASSWORD" NOT NULL DISABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("ID_STATUS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("ID_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("ID_USER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("ID_PRODUCT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("ID_PRODUCT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("ID_AVAILABILITY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CART" MODIFY ("ID_CART" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("ID_CART")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CART" MODIFY ("ID_USER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CART" MODIFY ("ID_PRODUCT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AVAILABILITY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."AVAILABILITY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AVAILABILITY" MODIFY ("AVAILABILITY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AVAILABILITY" ADD CONSTRAINT "AVAILABILITY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CATEGORY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CATEGORY" MODIFY ("ID_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("ID_CATEGORY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "CATEGORY_FK" FOREIGN KEY ("ID_CATEGORY")
	  REFERENCES "SYSTEM"."CATEGORY" ("ID_CATEGORY") ENABLE;
  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PRODUCT_FK1" FOREIGN KEY ("ID_STATUS")
	  REFERENCES "SYSTEM"."STATUS" ("ID_STATUS") ENABLE;
  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PRODUCT_FK2" FOREIGN KEY ("ID_USER")
	  REFERENCES "SYSTEM"."USERS" ("ID_USER") ENABLE;
  ALTER TABLE "SYSTEM"."PRODUCT" ADD CONSTRAINT "PRODUCT_FK3" FOREIGN KEY ("ID_AVAILABILITY")
	  REFERENCES "SYSTEM"."AVAILABILITY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CART" ADD CONSTRAINT "CART_FK1" FOREIGN KEY ("ID_USER")
	  REFERENCES "SYSTEM"."USERS" ("ID_USER") ENABLE;
  ALTER TABLE "SYSTEM"."CART" ADD CONSTRAINT "CART_FK2" FOREIGN KEY ("ID_PRODUCT")
	  REFERENCES "SYSTEM"."PRODUCT" ("ID_PRODUCT") ENABLE;
