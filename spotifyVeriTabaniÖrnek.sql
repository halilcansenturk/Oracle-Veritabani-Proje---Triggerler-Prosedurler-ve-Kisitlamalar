--------------------------------------------------------
--  File created - Cuma-Haziran-14-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADMINLER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMINLER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ALBUMLER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ALBUMLER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CALMA_LISTELERI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CALMA_LISTELERI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CALMA_LIST_SARKILARI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CALMA_LIST_SARKILARI_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GECMIS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GECMIS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KULLANICILAR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KULLANICILAR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PODCAST_BOLUMLER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PODCAST_BOLUMLER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PODCAST_GECMIS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PODCAST_GECMIS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PODCAST_KAYDETME_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PODCAST_KAYDETME_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PODCAST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PODCAST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SARKICILAR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SARKICILAR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SARKILAR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SARKILAR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEZON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SEZON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMINLER
--------------------------------------------------------

  CREATE TABLE "ADMINLER" 
   (	"AD_ID" NUMBER, 
	"KULLANICI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ALBUMLER
--------------------------------------------------------

  CREATE TABLE "ALBUMLER" 
   (	"ALB_ID" NUMBER, 
	"ALB_BASLIK" VARCHAR2(100), 
	"ALB_YAYIN_TAR" DATE, 
	"ALB_TUR" VARCHAR2(50), 
	"SARKICI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CALMA_LISTELERI
--------------------------------------------------------

  CREATE TABLE "CALMA_LISTELERI" 
   (	"CAL_LIST" NUMBER, 
	"CAL_LIST_AD" VARCHAR2(100), 
	"KULLANICI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table CALMA_LIST_SARKILARI
--------------------------------------------------------

  CREATE TABLE "CALMA_LIST_SARKILARI" 
   (	"CAL_LIST_SARKI_ID" NUMBER, 
	"CAL_LIST_ID" NUMBER, 
	"SARKI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table GECMIS
--------------------------------------------------------

  CREATE TABLE "GECMIS" 
   (	"GECMIS_ID" NUMBER, 
	"KULLANICI_ID" NUMBER, 
	"PODCAST_ID" NUMBER, 
	"GECMIS_SURE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KULLANICILAR
--------------------------------------------------------

  CREATE TABLE "KULLANICILAR" 
   (	"KUL_ID" NUMBER, 
	"KUL_ISIM" VARCHAR2(50), 
	"KUL_SOYISIM" VARCHAR2(50), 
	"KUL_MAIL" VARCHAR2(100), 
	"KUL_SIFRE" VARCHAR2(50), 
	"KUL_KULLANICIADI" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table PODCAST
--------------------------------------------------------

  CREATE TABLE "PODCAST" 
   (	"POD_ID" NUMBER, 
	"POD_BASLIK" VARCHAR2(100), 
	"POD_ACIKLAMA" VARCHAR2(500), 
	"POD_DINLENME_SAYISI" NUMBER DEFAULT 0, 
	"POD_TARIH" DATE, 
	"POD_VIZYON" DATE, 
	"ADMIN_ID" NUMBER, 
	"SEZON_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PODCAST_BOLUMLER
--------------------------------------------------------

  CREATE TABLE "PODCAST_BOLUMLER" 
   (	"BOLUM_ID" NUMBER, 
	"BOLUM_ADI" VARCHAR2(250)
   ) ;
--------------------------------------------------------
--  DDL for Table PODCAST_GECMIS
--------------------------------------------------------

  CREATE TABLE "PODCAST_GECMIS" 
   (	"GECMIS_ID" NUMBER, 
	"KULLANICI_ID" NUMBER, 
	"PODCAST_ID" NUMBER, 
	"SURE" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table PODCAST_KAYDETME
--------------------------------------------------------

  CREATE TABLE "PODCAST_KAYDETME" 
   (	"KAYDETME_ID" NUMBER, 
	"KULLANICI_ID" NUMBER, 
	"PODCAST_ID" NUMBER, 
	"KAYDETME_TARIHI" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table SARKICILAR
--------------------------------------------------------

  CREATE TABLE "SARKICILAR" 
   (	"SARKICI_ID" NUMBER, 
	"SARKICI_ISIM" VARCHAR2(50), 
	"SARKICI_SOYISIM" VARCHAR2(50), 
	"SARKICI_BIO" VARCHAR2(500), 
	"SARKICI_TUR" VARCHAR2(50), 
	"SARKICI_SAHNE_ISMI" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table SARKILAR
--------------------------------------------------------

  CREATE TABLE "SARKILAR" 
   (	"SARKI_ID" NUMBER, 
	"SARKI_BASLIK" VARCHAR2(100), 
	"SARKI_YAYINLANMA_TAR" DATE, 
	"SARKI_TUR" VARCHAR2(50), 
	"SARKI_DINLENME_SAYISI" NUMBER DEFAULT 0, 
	"ALBUM_ID" NUMBER, 
	"SARKICI_ID" NUMBER, 
	"TUR_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SEZON
--------------------------------------------------------

  CREATE TABLE "SEZON" 
   (	"SEZ_ID" NUMBER, 
	"SEZON_ADI" VARCHAR2(250)
   ) ;
--------------------------------------------------------
--  DDL for View KULLANICI_VIEW
--------------------------------------------------------

  CREATE OR REPLACE VIEW "KULLANICI_VIEW" ("KUL_ID", "KUL_ISIM", "KUL_SOYISIM", "KUL_MAIL") AS 
  SELECT KUL_ID, KUL_ISIM, KUL_SOYISIM, KUL_MAIL
FROM KULLANICILAR
;
REM INSERTING into ADMINLER
SET DEFINE OFF;
Insert into ADMINLER (AD_ID,KULLANICI_ID) values ('1','1');
Insert into ADMINLER (AD_ID,KULLANICI_ID) values ('2','2');
REM INSERTING into ALBUMLER
SET DEFINE OFF;
Insert into ALBUMLER (ALB_ID,ALB_BASLIK,ALB_YAYIN_TAR,ALB_TUR,SARKICI_ID) values ('1','Ateþe Düþtüm',to_date('27/04/2024','DD/MM/RRRR'),'Arabesk','1');
REM INSERTING into CALMA_LISTELERI
SET DEFINE OFF;
Insert into CALMA_LISTELERI (CAL_LIST,CAL_LIST_AD,KULLANICI_ID) values ('2','uyurken dinlenecek þarkýlar','1');
Insert into CALMA_LISTELERI (CAL_LIST,CAL_LIST_AD,KULLANICI_ID) values ('3','favori þarkýlarým','2');
Insert into CALMA_LISTELERI (CAL_LIST,CAL_LIST_AD,KULLANICI_ID) values ('1','Ders dinlerken dinleyeceðim þarkýlar','1');
REM INSERTING into CALMA_LIST_SARKILARI
SET DEFINE OFF;
REM INSERTING into GECMIS
SET DEFINE OFF;
REM INSERTING into KULLANICILAR
SET DEFINE OFF;
Insert into KULLANICILAR (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL,KUL_SIFRE,KUL_KULLANICIADI) values ('3','Test','User','testuser@example.com','password123','testuser');
Insert into KULLANICILAR (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL,KUL_SIFRE,KUL_KULLANICIADI) values ('4','Test2','User2','testuser2@example.com','password123','testuser2');
Insert into KULLANICILAR (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL,KUL_SIFRE,KUL_KULLANICIADI) values ('6','ali','poyraz','alipoyraz@23123','password123','alipyraz');
Insert into KULLANICILAR (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL,KUL_SIFRE,KUL_KULLANICIADI) values ('1','Halil Can','Þentürk','halilcan@gmail.com','12345','halilcansenturk');
Insert into KULLANICILAR (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL,KUL_SIFRE,KUL_KULLANICIADI) values ('2','Ayþenur','Þahin','aysenursahin@gmail.com','12345','aysenursahin');
REM INSERTING into PODCAST
SET DEFINE OFF;
Insert into PODCAST (POD_ID,POD_BASLIK,POD_ACIKLAMA,POD_DINLENME_SAYISI,POD_TARIH,POD_VIZYON,ADMIN_ID,SEZON_ID) values ('2','Murder and Coffe','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t','35',to_date('27/04/2024','DD/MM/RRRR'),to_date('28/04/2024','DD/MM/RRRR'),'1','1');
Insert into PODCAST (POD_ID,POD_BASLIK,POD_ACIKLAMA,POD_DINLENME_SAYISI,POD_TARIH,POD_VIZYON,ADMIN_ID,SEZON_ID) values ('1','Nereye Koyduysan Ordadýr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t','25',to_date('27/04/2024','DD/MM/RRRR'),to_date('28/04/2024','DD/MM/RRRR'),'1','1');
Insert into PODCAST (POD_ID,POD_BASLIK,POD_ACIKLAMA,POD_DINLENME_SAYISI,POD_TARIH,POD_VIZYON,ADMIN_ID,SEZON_ID) values ('3','Mesut Süre','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t','100',to_date('20/04/2024','DD/MM/RRRR'),to_date('26/04/2024','DD/MM/RRRR'),'1','1');
REM INSERTING into PODCAST_BOLUMLER
SET DEFINE OFF;
REM INSERTING into PODCAST_GECMIS
SET DEFINE OFF;
REM INSERTING into PODCAST_KAYDETME
SET DEFINE OFF;
Insert into PODCAST_KAYDETME (KAYDETME_ID,KULLANICI_ID,PODCAST_ID,KAYDETME_TARIHI) values ('1','1','1',to_timestamp('28/04/2024 23:03:01,622417000','DD/MM/RRRR HH24:MI:SSXFF'));
REM INSERTING into SARKICILAR
SET DEFINE OFF;
Insert into SARKICILAR (SARKICI_ID,SARKICI_ISIM,SARKICI_SOYISIM,SARKICI_BIO,SARKICI_TUR,SARKICI_SAHNE_ISMI) values ('1','Mert','Demir','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t','Arabesk','Mert Demir');
Insert into SARKICILAR (SARKICI_ID,SARKICI_ISIM,SARKICI_SOYISIM,SARKICI_BIO,SARKICI_TUR,SARKICI_SAHNE_ISMI) values ('2','Kaan','Boþnak','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t','Alternatif Rock','Yüzyüzeyken Konuþuruz');
REM INSERTING into SARKILAR
SET DEFINE OFF;
Insert into SARKILAR (SARKI_ID,SARKI_BASLIK,SARKI_YAYINLANMA_TAR,SARKI_TUR,SARKI_DINLENME_SAYISI,ALBUM_ID,SARKICI_ID,TUR_ID) values ('5','Test Þarký',to_date('27/04/2022','DD/MM/RRRR'),'Pop','0','1','1','1');
Insert into SARKILAR (SARKI_ID,SARKI_BASLIK,SARKI_YAYINLANMA_TAR,SARKI_TUR,SARKI_DINLENME_SAYISI,ALBUM_ID,SARKICI_ID,TUR_ID) values ('3','Gözlerime Bak',to_date('27/04/2024','DD/MM/RRRR'),'arabesk','0','1','1',null);
Insert into SARKILAR (SARKI_ID,SARKI_BASLIK,SARKI_YAYINLANMA_TAR,SARKI_TUR,SARKI_DINLENME_SAYISI,ALBUM_ID,SARKICI_ID,TUR_ID) values ('1','Ateþe Düþtüm',to_date('27/04/2024','DD/MM/RRRR'),'arabesk
','0','1','1',null);
Insert into SARKILAR (SARKI_ID,SARKI_BASLIK,SARKI_YAYINLANMA_TAR,SARKI_TUR,SARKI_DINLENME_SAYISI,ALBUM_ID,SARKICI_ID,TUR_ID) values ('2','Ýkimize Birden',to_date('27/04/2024','DD/MM/RRRR'),'arabesk','0','1','1',null);
REM INSERTING into SEZON
SET DEFINE OFF;
Insert into SEZON (SEZ_ID,SEZON_ADI) values ('3','3. Sezon');
Insert into SEZON (SEZ_ID,SEZON_ADI) values ('1','1. Sezon');
Insert into SEZON (SEZ_ID,SEZON_ADI) values ('2','2.Sezon');
REM INSERTING into KULLANICI_VIEW
SET DEFINE OFF;
Insert into KULLANICI_VIEW (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL) values ('3','Test','User','testuser@example.com');
Insert into KULLANICI_VIEW (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL) values ('4','Test2','User2','testuser2@example.com');
Insert into KULLANICI_VIEW (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL) values ('6','ali','poyraz','alipoyraz@23123');
Insert into KULLANICI_VIEW (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL) values ('1','Halil Can','Þentürk','halilcan@gmail.com');
Insert into KULLANICI_VIEW (KUL_ID,KUL_ISIM,KUL_SOYISIM,KUL_MAIL) values ('2','Ayþenur','Þahin','aysenursahin@gmail.com');
--------------------------------------------------------
--  DDL for Index ADMINLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINLER_PK" ON "ADMINLER" ("AD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALBUMLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUMLER_PK" ON "ALBUMLER" ("ALB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CALMA_LISTELERI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALMA_LISTELERI_PK" ON "CALMA_LISTELERI" ("CAL_LIST") 
  ;
--------------------------------------------------------
--  DDL for Index CALMA_LIST_SARKILARI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALMA_LIST_SARKILARI_PK" ON "CALMA_LIST_SARKILARI" ("CAL_LIST_SARKI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GECMIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GECMIS_PK" ON "GECMIS" ("GECMIS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICILAR_PK" ON "KULLANICILAR" ("KUL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICILAR_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICILAR_UK1" ON "KULLANICILAR" ("KUL_MAIL", "KUL_KULLANICIADI") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_BOLUMLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_BOLUMLER_PK" ON "PODCAST_BOLUMLER" ("BOLUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_GECMIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_GECMIS_PK" ON "PODCAST_GECMIS" ("GECMIS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_KAYDETME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_KAYDETME_PK" ON "PODCAST_KAYDETME" ("KAYDETME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_PK" ON "PODCAST" ("POD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKICILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKICILAR_PK" ON "SARKICILAR" ("SARKICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKILAR_PK" ON "SARKILAR" ("SARKI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEZON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEZON_PK" ON "SEZON" ("SEZ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ADMINLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINLER_PK" ON "ADMINLER" ("AD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALBUMLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUMLER_PK" ON "ALBUMLER" ("ALB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CALMA_LISTELERI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALMA_LISTELERI_PK" ON "CALMA_LISTELERI" ("CAL_LIST") 
  ;
--------------------------------------------------------
--  DDL for Index CALMA_LIST_SARKILARI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALMA_LIST_SARKILARI_PK" ON "CALMA_LIST_SARKILARI" ("CAL_LIST_SARKI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index GECMIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GECMIS_PK" ON "GECMIS" ("GECMIS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICILAR_PK" ON "KULLANICILAR" ("KUL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICILAR_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICILAR_UK1" ON "KULLANICILAR" ("KUL_MAIL", "KUL_KULLANICIADI") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_PK" ON "PODCAST" ("POD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_BOLUMLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_BOLUMLER_PK" ON "PODCAST_BOLUMLER" ("BOLUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_GECMIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_GECMIS_PK" ON "PODCAST_GECMIS" ("GECMIS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCAST_KAYDETME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCAST_KAYDETME_PK" ON "PODCAST_KAYDETME" ("KAYDETME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKICILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKICILAR_PK" ON "SARKICILAR" ("SARKICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKILAR_PK" ON "SARKILAR" ("SARKI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SEZON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEZON_PK" ON "SEZON" ("SEZ_ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger ADMINLER_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINLER_TRIGGER" 
   before insert on "ADMINLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."AD_ID" is null then 
         select ADMINLER_SEQ.nextval into :NEW."AD_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMINLER_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ALBUMLER_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ALBUMLER_TRIGGER" 
   before insert on "ALBUMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."ALB_ID" is null then 
         select ALBUMLER_SEQ.nextval into :NEW."ALB_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ALBUMLER_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALMA_LISTELERI_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CALMA_LISTELERI_TRIGGER" 
   before insert on "CALMA_LISTELERI" 
   for each row 
begin  
   if inserting then 
      if :NEW."CAL_LIST" is null then 
         select CALMA_LISTELERI_SEQ.nextval into :NEW."CAL_LIST" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "CALMA_LISTELERI_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALMA_LIST_SARKILARI_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CALMA_LIST_SARKILARI_TRIGGER" 
   before insert on "CALMA_LIST_SARKILARI" 
   for each row 
begin  
   if inserting then 
      if :NEW."CAL_LIST_SARKI_ID" is null then 
         select CALMA_LIST_SARKILARI_SEQ.nextval into :NEW."CAL_LIST_SARKI_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "CALMA_LIST_SARKILARI_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GECMIS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "GECMIS_TRIGGER" 
   before insert on "GECMIS" 
   for each row 
begin  
   if inserting then 
      if :NEW."GECMIS_ID" is null then 
         select GECMIS_SEQ.nextval into :NEW."GECMIS_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "GECMIS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KULLANICILAR_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "KULLANICILAR_TRIGGER" 
   before insert on "KULLANICILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."KUL_ID" is null then 
         select KULLANICILAR_SEQ.nextval into :NEW."KUL_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "KULLANICILAR_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_BOLUMLER_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_BOLUMLER_TRIGGER" 
   before insert on "PODCAST_BOLUMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."BOLUM_ID" is null then 
         select PODCAST_BOLUMLER_SEQ.nextval into :NEW."BOLUM_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_BOLUMLER_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_GECMIS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_GECMIS_TRIGGER" 
   before insert on "PODCAST_GECMIS" 
   for each row 
begin  
   if inserting then 
      if :NEW."GECMIS_ID" is null then 
         select PODCAST_GECMIS_SEQ.nextval into :NEW."GECMIS_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_GECMIS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_KAYDETME_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_KAYDETME_TRIGGER" 
   before insert on "PODCAST_KAYDETME" 
   for each row 
begin  
   if inserting then 
      if :NEW."KAYDETME_ID" is null then 
         select PODCAST_KAYDETME_SEQ.nextval into :NEW."KAYDETME_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_KAYDETME_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_TRIGGER" 
   before insert on "PODCAST" 
   for each row 
begin  
   if inserting then 
      if :NEW."POD_ID" is null then 
         select PODCAST_SEQ.nextval into :NEW."POD_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SARKICILAR_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SARKICILAR_TRIGGER" 
   before insert on "SARKICILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."SARKICI_ID" is null then 
         select SARKICILAR_SEQ.nextval into :NEW."SARKICI_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SARKICILAR_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SARKI_EKLE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SARKI_EKLE_TRIGGER" 
BEFORE INSERT ON SARKILAR
FOR EACH ROW
BEGIN
    :NEW.SARKI_DINLENME_SAYISI := 0;
END;
/
ALTER TRIGGER "SARKI_EKLE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SARKILAR_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SARKILAR_TRIGGER" 
   before insert on "SARKILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."SARKI_ID" is null then 
         select SARKILAR_SEQ.nextval into :NEW."SARKI_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SARKILAR_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SEZON_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SEZON_TRIGGER" 
   before insert on "SEZON" 
   for each row 
begin  
   if inserting then 
      if :NEW."SEZ_ID" is null then 
         select SEZON_SEQ.nextval into :NEW."SEZ_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SEZON_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ADMINLER_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMINLER_TRIGGER" 
   before insert on "ADMINLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."AD_ID" is null then 
         select ADMINLER_SEQ.nextval into :NEW."AD_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMINLER_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ALBUMLER_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ALBUMLER_TRIGGER" 
   before insert on "ALBUMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."ALB_ID" is null then 
         select ALBUMLER_SEQ.nextval into :NEW."ALB_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ALBUMLER_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALMA_LISTELERI_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CALMA_LISTELERI_TRIGGER" 
   before insert on "CALMA_LISTELERI" 
   for each row 
begin  
   if inserting then 
      if :NEW."CAL_LIST" is null then 
         select CALMA_LISTELERI_SEQ.nextval into :NEW."CAL_LIST" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "CALMA_LISTELERI_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALMA_LIST_SARKILARI_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CALMA_LIST_SARKILARI_TRIGGER" 
   before insert on "CALMA_LIST_SARKILARI" 
   for each row 
begin  
   if inserting then 
      if :NEW."CAL_LIST_SARKI_ID" is null then 
         select CALMA_LIST_SARKILARI_SEQ.nextval into :NEW."CAL_LIST_SARKI_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "CALMA_LIST_SARKILARI_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GECMIS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "GECMIS_TRIGGER" 
   before insert on "GECMIS" 
   for each row 
begin  
   if inserting then 
      if :NEW."GECMIS_ID" is null then 
         select GECMIS_SEQ.nextval into :NEW."GECMIS_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "GECMIS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KULLANICILAR_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "KULLANICILAR_TRIGGER" 
   before insert on "KULLANICILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."KUL_ID" is null then 
         select KULLANICILAR_SEQ.nextval into :NEW."KUL_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "KULLANICILAR_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_TRIGGER" 
   before insert on "PODCAST" 
   for each row 
begin  
   if inserting then 
      if :NEW."POD_ID" is null then 
         select PODCAST_SEQ.nextval into :NEW."POD_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_BOLUMLER_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_BOLUMLER_TRIGGER" 
   before insert on "PODCAST_BOLUMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."BOLUM_ID" is null then 
         select PODCAST_BOLUMLER_SEQ.nextval into :NEW."BOLUM_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_BOLUMLER_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_GECMIS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_GECMIS_TRIGGER" 
   before insert on "PODCAST_GECMIS" 
   for each row 
begin  
   if inserting then 
      if :NEW."GECMIS_ID" is null then 
         select PODCAST_GECMIS_SEQ.nextval into :NEW."GECMIS_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_GECMIS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PODCAST_KAYDETME_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "PODCAST_KAYDETME_TRIGGER" 
   before insert on "PODCAST_KAYDETME" 
   for each row 
begin  
   if inserting then 
      if :NEW."KAYDETME_ID" is null then 
         select PODCAST_KAYDETME_SEQ.nextval into :NEW."KAYDETME_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "PODCAST_KAYDETME_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SARKICILAR_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SARKICILAR_TRIGGER" 
   before insert on "SARKICILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."SARKICI_ID" is null then 
         select SARKICILAR_SEQ.nextval into :NEW."SARKICI_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SARKICILAR_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SARKI_EKLE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SARKI_EKLE_TRIGGER" 
BEFORE INSERT ON SARKILAR
FOR EACH ROW
BEGIN
    :NEW.SARKI_DINLENME_SAYISI := 0;
END;
/
ALTER TRIGGER "SARKI_EKLE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SARKILAR_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SARKILAR_TRIGGER" 
   before insert on "SARKILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."SARKI_ID" is null then 
         select SARKILAR_SEQ.nextval into :NEW."SARKI_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SARKILAR_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SEZON_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SEZON_TRIGGER" 
   before insert on "SEZON" 
   for each row 
begin  
   if inserting then 
      if :NEW."SEZ_ID" is null then 
         select SEZON_SEQ.nextval into :NEW."SEZ_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SEZON_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Procedure KULLANICI_EKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "KULLANICI_EKLE" (
    p_kul_isim IN VARCHAR2,
    p_kul_soyisim IN VARCHAR2,
    p_kul_mail IN VARCHAR2,
    p_kul_sifre IN VARCHAR2,
    p_kul_kullaniciadi IN VARCHAR2
) IS
BEGIN
    INSERT INTO KULLANICILAR (
        KUL_ID,
        KUL_ISIM,
        KUL_SOYISIM,
        KUL_MAIL,
        KUL_SIFRE,
        KUL_KULLANICIADI
    ) VALUES (
        kullanicilar_seq.NEXTVAL,
        p_kul_isim,
        p_kul_soyisim,
        p_kul_mail,
        p_kul_sifre,
        p_kul_kullaniciadi
    );
END;

/
--------------------------------------------------------
--  DDL for Function SURE_DAKIKA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SURE_DAKIKA" (P_GECMIS_ID NUMBER)
RETURN NUMBER AS
  DAKIKA NUMBER;
BEGIN
  -- Belirtilen P_GECMIS_ID için sürenin dakika cinsinden deðerini hesapla
  SELECT (TO_NUMBER(SURE) / 60)
  INTO DAKIKA
  FROM PODCAST_GECMIS
  WHERE GECMIS_ID = P_GECMIS_ID;

  -- Debug: Deðeri yazdýrma
 DBMS_OUTPUT.PUT_LINE('DAKIKA: ' || DAKIKA);

  RETURN DAKIKA;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('No data found for GECMIS_ID: ' || P_GECMIS_ID);
    RETURN NULL;  -- Eðer belirtilen P_GECMIS_ID bulunamazsa NULL döndür
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Too many rows for GECMIS_ID: ' || P_GECMIS_ID);
    RETURN NULL;  -- Eðer belirtilen P_GECMIS_ID için birden fazla satýr dönerse NULL döndür
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Other error: ' || SQLERRM);
    RETURN NULL;  -- Diðer hatalar için NULL döndür
END;

/
--------------------------------------------------------
--  Constraints for Table ADMINLER
--------------------------------------------------------

  ALTER TABLE "ADMINLER" MODIFY ("AD_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMINLER" MODIFY ("KULLANICI_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMINLER" ADD CONSTRAINT "ADMINLER_PK" PRIMARY KEY ("AD_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ALBUMLER
--------------------------------------------------------

  ALTER TABLE "ALBUMLER" MODIFY ("ALB_ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUMLER" ADD CONSTRAINT "ALBUMLER_PK" PRIMARY KEY ("ALB_ID") ENABLE;
  ALTER TABLE "ALBUMLER" MODIFY ("ALB_BASLIK" NOT NULL ENABLE);
  ALTER TABLE "ALBUMLER" MODIFY ("ALB_YAYIN_TAR" NOT NULL ENABLE);
  ALTER TABLE "ALBUMLER" MODIFY ("ALB_TUR" NOT NULL ENABLE);
  ALTER TABLE "ALBUMLER" MODIFY ("SARKICI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CALMA_LISTELERI
--------------------------------------------------------

  ALTER TABLE "CALMA_LISTELERI" MODIFY ("CAL_LIST" NOT NULL ENABLE);
  ALTER TABLE "CALMA_LISTELERI" MODIFY ("CAL_LIST_AD" NOT NULL ENABLE);
  ALTER TABLE "CALMA_LISTELERI" MODIFY ("KULLANICI_ID" NOT NULL ENABLE);
  ALTER TABLE "CALMA_LISTELERI" ADD CONSTRAINT "CALMA_LISTELERI_PK" PRIMARY KEY ("CAL_LIST") ENABLE;
--------------------------------------------------------
--  Constraints for Table CALMA_LIST_SARKILARI
--------------------------------------------------------

  ALTER TABLE "CALMA_LIST_SARKILARI" ADD CONSTRAINT "CALMA_LIST_SARKILARI_PK" PRIMARY KEY ("CAL_LIST_SARKI_ID") ENABLE;
  ALTER TABLE "CALMA_LIST_SARKILARI" MODIFY ("SARKI_ID" NOT NULL ENABLE);
  ALTER TABLE "CALMA_LIST_SARKILARI" MODIFY ("CAL_LIST_ID" NOT NULL ENABLE);
  ALTER TABLE "CALMA_LIST_SARKILARI" MODIFY ("CAL_LIST_SARKI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GECMIS
--------------------------------------------------------

  ALTER TABLE "GECMIS" ADD CONSTRAINT "GECMIS_PK" PRIMARY KEY ("GECMIS_ID") ENABLE;
  ALTER TABLE "GECMIS" MODIFY ("GECMIS_SURE" NOT NULL ENABLE);
  ALTER TABLE "GECMIS" MODIFY ("PODCAST_ID" NOT NULL ENABLE);
  ALTER TABLE "GECMIS" MODIFY ("KULLANICI_ID" NOT NULL ENABLE);
  ALTER TABLE "GECMIS" MODIFY ("GECMIS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KULLANICILAR
--------------------------------------------------------

  ALTER TABLE "KULLANICILAR" MODIFY ("KUL_ID" NOT NULL ENABLE);
  ALTER TABLE "KULLANICILAR" ADD CONSTRAINT "KULLANICILAR_PK" PRIMARY KEY ("KUL_ID") ENABLE;
  ALTER TABLE "KULLANICILAR" ADD CONSTRAINT "KULLANICILAR_UK1" UNIQUE ("KUL_MAIL", "KUL_KULLANICIADI") ENABLE;
--------------------------------------------------------
--  Constraints for Table PODCAST
--------------------------------------------------------

  ALTER TABLE "PODCAST" MODIFY ("POD_ID" NOT NULL ENABLE);
  ALTER TABLE "PODCAST" ADD CONSTRAINT "PODCAST_PK" PRIMARY KEY ("POD_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PODCAST_BOLUMLER
--------------------------------------------------------

  ALTER TABLE "PODCAST_BOLUMLER" ADD CONSTRAINT "PODCAST_BOLUMLER_PK" PRIMARY KEY ("BOLUM_ID") ENABLE;
  ALTER TABLE "PODCAST_BOLUMLER" MODIFY ("BOLUM_ADI" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_BOLUMLER" MODIFY ("BOLUM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PODCAST_GECMIS
--------------------------------------------------------

  ALTER TABLE "PODCAST_GECMIS" ADD CONSTRAINT "PODCAST_GECMIS_PK" PRIMARY KEY ("GECMIS_ID") ENABLE;
  ALTER TABLE "PODCAST_GECMIS" MODIFY ("PODCAST_ID" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_GECMIS" MODIFY ("KULLANICI_ID" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_GECMIS" MODIFY ("GECMIS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PODCAST_KAYDETME
--------------------------------------------------------

  ALTER TABLE "PODCAST_KAYDETME" MODIFY ("KAYDETME_ID" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_KAYDETME" MODIFY ("KULLANICI_ID" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_KAYDETME" MODIFY ("PODCAST_ID" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_KAYDETME" MODIFY ("KAYDETME_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "PODCAST_KAYDETME" ADD CONSTRAINT "PODCAST_KAYDETME_PK" PRIMARY KEY ("KAYDETME_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SARKICILAR
--------------------------------------------------------

  ALTER TABLE "SARKICILAR" MODIFY ("SARKICI_ID" NOT NULL ENABLE);
  ALTER TABLE "SARKICILAR" MODIFY ("SARKICI_ISIM" NOT NULL ENABLE);
  ALTER TABLE "SARKICILAR" MODIFY ("SARKICI_SOYISIM" NOT NULL ENABLE);
  ALTER TABLE "SARKICILAR" MODIFY ("SARKICI_BIO" NOT NULL ENABLE);
  ALTER TABLE "SARKICILAR" MODIFY ("SARKICI_TUR" NOT NULL ENABLE);
  ALTER TABLE "SARKICILAR" ADD CONSTRAINT "SARKICILAR_PK" PRIMARY KEY ("SARKICI_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SARKILAR
--------------------------------------------------------

  ALTER TABLE "SARKILAR" MODIFY ("SARKI_ID" NOT NULL ENABLE);
  ALTER TABLE "SARKILAR" MODIFY ("SARKI_BASLIK" NOT NULL ENABLE);
  ALTER TABLE "SARKILAR" MODIFY ("SARKI_YAYINLANMA_TAR" NOT NULL ENABLE);
  ALTER TABLE "SARKILAR" MODIFY ("SARKI_TUR" NOT NULL ENABLE);
  ALTER TABLE "SARKILAR" MODIFY ("SARKICI_ID" NOT NULL ENABLE);
  ALTER TABLE "SARKILAR" ADD CONSTRAINT "SARKILAR_PK" PRIMARY KEY ("SARKI_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SEZON
--------------------------------------------------------

  ALTER TABLE "SEZON" MODIFY ("SEZ_ID" NOT NULL ENABLE);
  ALTER TABLE "SEZON" MODIFY ("SEZON_ADI" NOT NULL ENABLE);
  ALTER TABLE "SEZON" ADD CONSTRAINT "SEZON_PK" PRIMARY KEY ("SEZ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ADMINLER
--------------------------------------------------------

  ALTER TABLE "ADMINLER" ADD CONSTRAINT "ADMINLER_FK1" FOREIGN KEY ("KULLANICI_ID")
	  REFERENCES "KULLANICILAR" ("KUL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALBUMLER
--------------------------------------------------------

  ALTER TABLE "ALBUMLER" ADD CONSTRAINT "ALBUMLER_FK1" FOREIGN KEY ("SARKICI_ID")
	  REFERENCES "SARKICILAR" ("SARKICI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CALMA_LISTELERI
--------------------------------------------------------

  ALTER TABLE "CALMA_LISTELERI" ADD CONSTRAINT "CALMA_LISTELERI_FK1" FOREIGN KEY ("KULLANICI_ID")
	  REFERENCES "KULLANICILAR" ("KUL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CALMA_LIST_SARKILARI
--------------------------------------------------------

  ALTER TABLE "CALMA_LIST_SARKILARI" ADD CONSTRAINT "CALMA_LIST_SARKILARI_FK1" FOREIGN KEY ("CAL_LIST_ID")
	  REFERENCES "CALMA_LISTELERI" ("CAL_LIST") ENABLE;
  ALTER TABLE "CALMA_LIST_SARKILARI" ADD CONSTRAINT "CALMA_LIST_SARKILARI_FK2" FOREIGN KEY ("SARKI_ID")
	  REFERENCES "SARKILAR" ("SARKI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GECMIS
--------------------------------------------------------

  ALTER TABLE "GECMIS" ADD CONSTRAINT "GECMIS_FK1" FOREIGN KEY ("KULLANICI_ID")
	  REFERENCES "KULLANICILAR" ("KUL_ID") ENABLE;
  ALTER TABLE "GECMIS" ADD CONSTRAINT "GECMIS_FK2" FOREIGN KEY ("PODCAST_ID")
	  REFERENCES "PODCAST" ("POD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PODCAST
--------------------------------------------------------

  ALTER TABLE "PODCAST" ADD CONSTRAINT "PODCAST_FK1" FOREIGN KEY ("ADMIN_ID")
	  REFERENCES "ADMINLER" ("AD_ID") ENABLE;
  ALTER TABLE "PODCAST" ADD CONSTRAINT "PODCAST_FK2" FOREIGN KEY ("SEZON_ID")
	  REFERENCES "SEZON" ("SEZ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PODCAST_GECMIS
--------------------------------------------------------

  ALTER TABLE "PODCAST_GECMIS" ADD CONSTRAINT "PODCAST_GECMIS_FK1" FOREIGN KEY ("KULLANICI_ID")
	  REFERENCES "KULLANICILAR" ("KUL_ID") ENABLE;
  ALTER TABLE "PODCAST_GECMIS" ADD CONSTRAINT "PODCAST_GECMIS_FK2" FOREIGN KEY ("PODCAST_ID")
	  REFERENCES "PODCAST" ("POD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PODCAST_KAYDETME
--------------------------------------------------------

  ALTER TABLE "PODCAST_KAYDETME" ADD CONSTRAINT "PODCAST_KAYDETME_FK1" FOREIGN KEY ("KULLANICI_ID")
	  REFERENCES "KULLANICILAR" ("KUL_ID") ENABLE;
  ALTER TABLE "PODCAST_KAYDETME" ADD CONSTRAINT "PODCAST_KAYDETME_FK2" FOREIGN KEY ("PODCAST_ID")
	  REFERENCES "PODCAST" ("POD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SARKILAR
--------------------------------------------------------

  ALTER TABLE "SARKILAR" ADD CONSTRAINT "SARKILAR_FK1" FOREIGN KEY ("ALBUM_ID")
	  REFERENCES "ALBUMLER" ("ALB_ID") ENABLE;
  ALTER TABLE "SARKILAR" ADD CONSTRAINT "SARKILAR_FK2" FOREIGN KEY ("SARKICI_ID")
	  REFERENCES "SARKICILAR" ("SARKICI_ID") ENABLE;
