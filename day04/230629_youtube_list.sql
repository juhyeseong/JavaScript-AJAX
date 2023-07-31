--------------------------------------------------------
--  파일이 생성됨 - 목요일-6월-29-2023   
--------------------------------------------------------
DROP SEQUENCE "C##ITBANK"."YOUTUBE_LIST_SEQ";
DROP TABLE "C##ITBANK"."YOUTUBE_LIST" cascade constraints;
DROP TABLE "C##ITBANK"."YOUTUBE_LIST" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence YOUTUBE_LIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##ITBANK"."YOUTUBE_LIST_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 18 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table YOUTUBE_LIST
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."YOUTUBE_LIST" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."YOUTUBE_LIST_SEQ"."NEXTVAL", 
	"TITLE" VARCHAR2(500 BYTE), 
	"CHANNEL" VARCHAR2(100 BYTE), 
	"THUMBNAIL" VARCHAR2(500 BYTE), 
	"IFRAME" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table YOUTUBE_LIST
--------------------------------------------------------

  CREATE TABLE "C##ITBANK"."YOUTUBE_LIST" 
   (	"IDX" NUMBER DEFAULT "C##ITBANK"."YOUTUBE_LIST_SEQ"."NEXTVAL", 
	"TITLE" VARCHAR2(500 BYTE), 
	"CHANNEL" VARCHAR2(100 BYTE), 
	"THUMBNAIL" VARCHAR2(500 BYTE), 
	"IFRAME" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##ITBANK.YOUTUBE_LIST
SET DEFINE OFF;
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (1,'나폴리탄 괴담이란?','침착맨','https://i.ytimg.com/vi/8ApNfUJwobs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBHxL440ij_VqKcDsM-DVjdvYO_7w','<iframe width="704" height="396" src="https://www.youtube.com/embed/8ApNfUJwobs" title="나폴리탄 괴담이란?" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (2,'[자막뉴스] 코로나 특수 끝났다... ','JTBC News','https://i.ytimg.com/vi/GH9--zGwqbo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAwKh0_I0s_5AyjtBez4dGR82Y-mw','<iframe width="704" height="396" src="https://www.youtube.com/embed/GH9--zGwqbo" title="[자막뉴스] 코로나 특수 끝났다…도 넘은 가격에 고객들 &#39;손절&#39; 확산 / JTBC News" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (16,'그리고 결혼 5년 후','싱글벙글','https://i.ytimg.com/vi/WguqoJrCh8A/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvnMUkj6a_buYgChE6j0hy-1gMlA','<iframe width="651" height="366" src="https://www.youtube.com/embed/WguqoJrCh8A" title="그리고 결혼 5년 후" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (17,'남편이 로또 1등에 당첨됐다 (SUB)','싱글벙글','https://i.ytimg.com/vi/KkAEGlUN-yo/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC-sw4OaOKG-YB6tGaeaFrcmPTPmw','<iframe width="651" height="366" src="https://www.youtube.com/embed/KkAEGlUN-yo" title="남편이 로또 1등에 당첨됐다 (SUB)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (3,'[#라디오스타]＂2는 내 운명＂ 외치다 진짜 ?내 운명?만난 ‘2의 인간’ 홍진호?진호씨 결혼 축하해요ㅋㅋ진호씨 결혼 축하해요ㅋㅋ|#홍진호 #엠뚜루마뚜루 MBC230524방송','엠뚜루마뚜루 : MBC 공식 종합 채널','https://i.ytimg.com/vi/lJz7jB-jO44/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCnVFiBl8aor11EzBI6UeX47QQ5zw','<iframe width="651" height="366" src="https://www.youtube.com/embed/lJz7jB-jO44" title="[#라디오스타]＂2는 내 운명＂ 외치다 진짜 ?내 운명?만난 ‘2의 인간’ 홍진호?진호씨 결혼 축하해요ㅋㅋ진호씨 결혼 축하해요ㅋㅋ|#홍진호 #엠뚜루마뚜루 MBC230524방송" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (4,'[#무한도전] 예능 오프닝 맛집이 여기 있어요??? | 무한도전?오분순삭 MBC120721방송','오분순삭','https://i.ytimg.com/vi/mgHs6DKDJe4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB-ARVgdvQwekQw_JEPIxeg4EiN3w','<iframe width="651" height="366" src="https://www.youtube.com/embed/mgHs6DKDJe4" title="[#무한도전] 예능 오프닝 맛집이 여기 있어요??? | 무한도전?오분순삭 MBC120721방송" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (5,'태연(TAEYEON)의 킬링보이스를 라이브로! - I,그대라는 시,만약에,11:11,Blue,Time Lapse,Weekend,불티,사계,Gravity,INVU,너를 그리는 시간','딩고 뮤직 / dingo music','https://i.ytimg.com/vi/5ch94AaPZRQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDKXegtqEJNBkDGRRZwCB1zxajRqg','<iframe width="651" height="366" src="https://www.youtube.com/embed/5ch94AaPZRQ" title="태연(TAEYEON)의 킬링보이스를 라이브로! - I,그대라는 시,만약에,11:11,Blue,Time Lapse,Weekend,불티,사계,Gravity,INVU,너를 그리는 시간" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (6,'침착맨에게 배워왔습니다 시리즈 1탄 : 라이브는 길게 (ft. 신원호 김대주)','채널 십오야','https://i.ytimg.com/vi/u63sNj7YeA8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB33l2dL7LNK-kCTGBhzoPrciQ-zA','<iframe width="651" height="366" src="https://www.youtube.com/embed/u63sNj7YeA8" title="침착맨에게 배워왔습니다 시리즈 1탄 : 라이브는 길게 (ft. 신원호 김대주)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (7,'경영권전쟁:디 오리지널','경영자들','https://i.ytimg.com/vi/obFRJ2RA-JA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC0aPhw48koMdRgAiSwdVOpnXXjSA','<iframe width="651" height="366" src="https://www.youtube.com/embed/obFRJ2RA-JA" title="경영권전쟁:디 오리지널" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (8,'영화 제작 기간만 6년...성공할 수 밖에 없는 가오갤3의 미친 제작 비하인드','B Man 삐맨','https://i.ytimg.com/vi/j_nSUgd8c7w/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBGOklDIBnuIv-PjSOy3fFJRjTEeA','<iframe width="651" height="366" src="https://www.youtube.com/embed/j_nSUgd8c7w" title="영화 제작 기간만 6년...성공할 수 밖에 없는 가오갤3의 미친 제작 비하인드" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (9,'[#동네스타K3] “우리 뱀 언제 죽어?” ? Spicy한 라이브로 논란 찢고 간 에스파 ㅋㅋㅋ | EP.5','디글 :Diggle','https://i.ytimg.com/vi/Spo6kHEYUN8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCxG2daknXgE8cr7ekVWE9bvvaFmA','<iframe width="651" height="366" src="https://www.youtube.com/embed/Spo6kHEYUN8" title="[#동네스타K3] “우리 뱀 언제 죽어?” ? Spicy한 라이브로 논란 찢고 간 에스파 ㅋㅋㅋ | EP.5" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (10,'&quot;뛰어내리려 하길래&quot;…빨간바지 승객이 범인 제압 도왔다/“승무원 침착 대응 큰 사고 막아”/[이슈] 2023년 5월 28일(일)KBS','KBS News','https://i.ytimg.com/vi/HX__xunp7CA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAfmXixyD6UvmOxrV7hzwdrAPmVsg','<iframe width="651" height="366" src="https://www.youtube.com/embed/HX__xunp7CA" title="&quot;뛰어내리려 하길래&quot;…빨간바지 승객이 범인 제압 도왔다/“승무원 침착 대응 큰 사고 막아”/[이슈] 2023년 5월 28일(일)KBS" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (11,'탈모약 설명회','침착맨','https://i.ytimg.com/vi/fZvdBUhHlAY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCOvkNK5AXJUn6llvMLacSMqp1Exw','<iframe width="651" height="366" src="https://www.youtube.com/embed/fZvdBUhHlAY" title="탈모약 설명회" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (12,'[아무모음] 언제부터 이렇게 숨은 거야. 내 허락도 없이. ＜재벌집 막내아들＞ 조회수 TOP 5 속 숨은 형준이를 찾아라?｜재벌집 막내아들｜JTBC 221127 방송 외','Drama Voyage','https://i.ytimg.com/vi/cUdG343T6BI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCwgxN8vFWmSn8ww57UnUNupb54PQ','<iframe width="651" height="366" src="https://www.youtube.com/embed/cUdG343T6BI" title="[아무모음] 언제부터 이렇게 숨은 거야. 내 허락도 없이. ＜재벌집 막내아들＞ 조회수 TOP 5 속 숨은 형준이를 찾아라?｜재벌집 막내아들｜JTBC 221127 방송 외" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (13,'20230515 배성재의 텐 with : 에스파 카리나, 닝닝 (프로듀스 1077) FULL.ver','난아메리카노','https://i.ytimg.com/vi/Mx7nSCSlUdY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCjJomvvdUd8ebmDx_qUD5OlNYnzw','<iframe width="651" height="366" src="https://www.youtube.com/embed/Mx7nSCSlUdY" title="20230515 배성재의 텐 with : 에스파 카리나, 닝닝 (프로듀스 1077) FULL.ver" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (14,'[SUB] 정신 차렸더니 안유진이 술 마실 나이가 된 건에 대하여..?  [차린건 쥐뿔도 없지만] EP.15 #이영지 #안유진 (ENG/JPN/SPA/IND)','차린건 쥐뿔도 없지만','https://i.ytimg.com/vi/i3jpejz-PPc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBd1U7x9hMT0K1XkkBGWZ0MnzrnPw','<iframe width="651" height="366" src="https://www.youtube.com/embed/i3jpejz-PPc" title="[SUB] 정신 차렸더니 안유진이 술 마실 나이가 된 건에 대하여..?  [차린건 쥐뿔도 없지만] EP.15 #이영지 #안유진 (ENG/JPN/SPA/IND)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (15,'[SUB] 술 냄새만 남기고 갔단다? 뽀에버 YOUNG지수?  [차린건 쥐뿔도 없지만] EP.14 #이영지 #지수 (ENG/JPN/SPA/IND)','차린건 쥐뿔도 없지만','https://i.ytimg.com/vi/ZMYR5s9DoTs/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCDo08pI2PUkKB4D335_3VJzaVnIQ','<iframe width="651" height="366" src="https://www.youtube.com/embed/ZMYR5s9DoTs" title="[SUB] 술 냄새만 남기고 갔단다? 뽀에버 YOUNG지수?  [차린건 쥐뿔도 없지만] EP.14 #이영지 #지수 (ENG/JPN/SPA/IND)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
commit;
--------------------------------------------------------
--  DDL for Index SYS_C008482
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ITBANK"."SYS_C008482" ON "C##ITBANK"."YOUTUBE_LIST" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table YOUTUBE_LIST
--------------------------------------------------------

  ALTER TABLE "C##ITBANK"."YOUTUBE_LIST" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."YOUTUBE_LIST" MODIFY ("CHANNEL" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."YOUTUBE_LIST" MODIFY ("THUMBNAIL" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."YOUTUBE_LIST" MODIFY ("IFRAME" NOT NULL ENABLE);
  ALTER TABLE "C##ITBANK"."YOUTUBE_LIST" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
