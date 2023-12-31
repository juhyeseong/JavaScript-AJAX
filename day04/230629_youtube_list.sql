--------------------------------------------------------
--  督析戚 持失喫 - 鯉推析-6杉-29-2023   
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
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (1,'蟹虹軒添 雨眼戚空?','徴鐸固','https://i.ytimg.com/vi/8ApNfUJwobs/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBHxL440ij_VqKcDsM-DVjdvYO_7w','<iframe width="704" height="396" src="https://www.youtube.com/embed/8ApNfUJwobs" title="蟹虹軒添 雨眼戚空?" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (2,'[切厳敢什] 坪稽蟹 働呪 魁概陥... ','JTBC News','https://i.ytimg.com/vi/GH9--zGwqbo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAwKh0_I0s_5AyjtBez4dGR82Y-mw','<iframe width="704" height="396" src="https://www.youtube.com/embed/GH9--zGwqbo" title="[切厳敢什] 坪稽蟹 働呪 魁概陥・亀 角精 亜維拭 壱梓級 &#39;謝箭&#39; 溌至 / JTBC News" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (16,'益軒壱 衣肇 5鰍 板','縮越此越','https://i.ytimg.com/vi/WguqoJrCh8A/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBvnMUkj6a_buYgChE6j0hy-1gMlA','<iframe width="651" height="366" src="https://www.youtube.com/embed/WguqoJrCh8A" title="益軒壱 衣肇 5鰍 板" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (17,'害畷戚 稽暁 1去拭 雁歎菊陥 (SUB)','縮越此越','https://i.ytimg.com/vi/KkAEGlUN-yo/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC-sw4OaOKG-YB6tGaeaFrcmPTPmw','<iframe width="651" height="366" src="https://www.youtube.com/embed/KkAEGlUN-yo" title="害畷戚 稽暁 1去拭 雁歎菊陥 (SUB)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (3,'[#虞巨神什展]��2澗 鎧 錘誤�� 須帖陥 遭促 ?鎧 錘誤?幻貝 ｀2税 昔娃¨ 畠遭硲?遭硲松 衣肇 逐馬背推せせ遭硲松 衣肇 逐馬背推せせ|#畠遭硲 #織均欠原均欠 MBC230524号勺','織均欠原均欠 : MBC 因縦 曽杯 辰確','https://i.ytimg.com/vi/lJz7jB-jO44/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCnVFiBl8aor11EzBI6UeX47QQ5zw','<iframe width="651" height="366" src="https://www.youtube.com/embed/lJz7jB-jO44" title="[#虞巨神什展]��2澗 鎧 錘誤�� 須帖陥 遭促 ?鎧 錘誤?幻貝 ｀2税 昔娃¨ 畠遭硲?遭硲松 衣肇 逐馬背推せせ遭硲松 衣肇 逐馬背推せせ|#畠遭硲 #織均欠原均欠 MBC230524号勺" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (4,'[#巷廃亀穿] 森管 神覗閑 言増戚 食奄 赤嬢推??? | 巷廃亀穿?神歳授肢 MBC120721号勺','神歳授肢','https://i.ytimg.com/vi/mgHs6DKDJe4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB-ARVgdvQwekQw_JEPIxeg4EiN3w','<iframe width="651" height="366" src="https://www.youtube.com/embed/mgHs6DKDJe4" title="[#巷廃亀穿] 森管 神覗閑 言増戚 食奄 赤嬢推??? | 巷廃亀穿?神歳授肢 MBC120721号勺" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (5,'殿尻(TAEYEON)税 迭元左戚什研 虞戚崎稽! - I,益企虞澗 獣,幻鉦拭,11:11,Blue,Time Lapse,Weekend,災銅,紫域,Gravity,INVU,格研 益軒澗 獣娃','漁壱 溝送 / dingo music','https://i.ytimg.com/vi/5ch94AaPZRQ/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDKXegtqEJNBkDGRRZwCB1zxajRqg','<iframe width="651" height="366" src="https://www.youtube.com/embed/5ch94AaPZRQ" title="殿尻(TAEYEON)税 迭元左戚什研 虞戚崎稽! - I,益企虞澗 獣,幻鉦拭,11:11,Blue,Time Lapse,Weekend,災銅,紫域,Gravity,INVU,格研 益軒澗 獣娃" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (6,'徴鐸固拭惟 壕趨尽柔艦陥 獣軒綜 1添 : 虞戚崎澗 掩惟 (ft. 重据硲 沿企爽)','辰確 淑神醤','https://i.ytimg.com/vi/u63sNj7YeA8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB33l2dL7LNK-kCTGBhzoPrciQ-zA','<iframe width="651" height="366" src="https://www.youtube.com/embed/u63sNj7YeA8" title="徴鐸固拭惟 壕趨尽柔艦陥 獣軒綜 1添 : 虞戚崎澗 掩惟 (ft. 重据硲 沿企爽)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (7,'井慎映穿戦:巨 神軒走確','井慎切級','https://i.ytimg.com/vi/obFRJ2RA-JA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC0aPhw48koMdRgAiSwdVOpnXXjSA','<iframe width="651" height="366" src="https://www.youtube.com/embed/obFRJ2RA-JA" title="井慎映穿戦:巨 神軒走確" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (8,'慎鉢 薦拙 奄娃幻 6鰍...失因拝 呪 鉱拭 蒸澗 亜神斡3税 耕庁 薦拙 搾馬昔球','B Man 止固','https://i.ytimg.com/vi/j_nSUgd8c7w/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBGOklDIBnuIv-PjSOy3fFJRjTEeA','<iframe width="651" height="366" src="https://www.youtube.com/embed/j_nSUgd8c7w" title="慎鉢 薦拙 奄娃幻 6鰍...失因拝 呪 鉱拭 蒸澗 亜神斡3税 耕庁 薦拙 搾馬昔球" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (9,'[#疑革什展K3] ＾酔軒 轟 情薦 宋嬢?￣ ? Spicy廃 虞戚崎稽 轄空 濯壱 娃 拭什督 せせせ | EP.5','巨越 :Diggle','https://i.ytimg.com/vi/Spo6kHEYUN8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCxG2daknXgE8cr7ekVWE9bvvaFmA','<iframe width="651" height="366" src="https://www.youtube.com/embed/Spo6kHEYUN8" title="[#疑革什展K3] ＾酔軒 轟 情薦 宋嬢?￣ ? Spicy廃 虞戚崎稽 轄空 濯壱 娃 拭什督 せせせ | EP.5" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (10,'&quot;禽嬢鎧軒形 馬掩掘&quot;・察娃郊走 渋梓戚 骨昔 薦笑 亀尽陥/＾渋巷据 徴鐸 企誓 笛 紫壱 厳焼￣/[戚輯] 2023鰍 5杉 28析(析)KBS','KBS News','https://i.ytimg.com/vi/HX__xunp7CA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAfmXixyD6UvmOxrV7hzwdrAPmVsg','<iframe width="651" height="366" src="https://www.youtube.com/embed/HX__xunp7CA" title="&quot;禽嬢鎧軒形 馬掩掘&quot;・察娃郊走 渋梓戚 骨昔 薦笑 亀尽陥/＾渋巷据 徴鐸 企誓 笛 紫壱 厳焼￣/[戚輯] 2023鰍 5杉 28析(析)KBS" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (11,'纏乞鉦 竺誤噺','徴鐸固','https://i.ytimg.com/vi/fZvdBUhHlAY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCOvkNK5AXJUn6llvMLacSMqp1Exw','<iframe width="651" height="366" src="https://www.youtube.com/embed/fZvdBUhHlAY" title="纏乞鉦 竺誤噺" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (12,'[焼巷乞製] 情薦採斗 戚係惟 需精 暗醤. 鎧 買喰亀 蒸戚. �疾膵�増 厳鎧焼級�� 繕噺呪 TOP 5 紗 需精 莫層戚研 達焼虞?��仙忽増 厳鎧焼級��JTBC 221127 号勺 須','Drama Voyage','https://i.ytimg.com/vi/cUdG343T6BI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCwgxN8vFWmSn8ww57UnUNupb54PQ','<iframe width="651" height="366" src="https://www.youtube.com/embed/cUdG343T6BI" title="[焼巷乞製] 情薦採斗 戚係惟 需精 暗醤. 鎧 買喰亀 蒸戚. �疾膵�増 厳鎧焼級�� 繕噺呪 TOP 5 紗 需精 莫層戚研 達焼虞?��仙忽増 厳鎧焼級��JTBC 221127 号勺 須" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (13,'20230515 壕失仙税 度 with : 拭什督 朝軒蟹, 閑閑 (覗稽朽什 1077) FULL.ver','貝焼五軒朝葛','https://i.ytimg.com/vi/Mx7nSCSlUdY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCjJomvvdUd8ebmDx_qUD5OlNYnzw','<iframe width="651" height="366" src="https://www.youtube.com/embed/Mx7nSCSlUdY" title="20230515 壕失仙税 度 with : 拭什督 朝軒蟹, 閑閑 (覗稽朽什 1077) FULL.ver" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (14,'[SUB] 舛重 託携希艦 照政遭戚 綬 原叔 蟹戚亜 吉 闇拭 企馬食..?  [託鍵闇 巣市亀 蒸走幻] EP.15 #戚慎走 #照政遭 (ENG/JPN/SPA/IND)','託鍵闇 巣市亀 蒸走幻','https://i.ytimg.com/vi/i3jpejz-PPc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBd1U7x9hMT0K1XkkBGWZ0MnzrnPw','<iframe width="651" height="366" src="https://www.youtube.com/embed/i3jpejz-PPc" title="[SUB] 舛重 託携希艦 照政遭戚 綬 原叔 蟹戚亜 吉 闇拭 企馬食..?  [託鍵闇 巣市亀 蒸走幻] EP.15 #戚慎走 #照政遭 (ENG/JPN/SPA/IND)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
Insert into C##ITBANK.YOUTUBE_LIST (IDX,TITLE,CHANNEL,THUMBNAIL,IFRAME) values (15,'[SUB] 綬 蛙歯幻 害奄壱 穐舘陥? 伺拭獄 YOUNG走呪?  [託鍵闇 巣市亀 蒸走幻] EP.14 #戚慎走 #走呪 (ENG/JPN/SPA/IND)','託鍵闇 巣市亀 蒸走幻','https://i.ytimg.com/vi/ZMYR5s9DoTs/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCDo08pI2PUkKB4D335_3VJzaVnIQ','<iframe width="651" height="366" src="https://www.youtube.com/embed/ZMYR5s9DoTs" title="[SUB] 綬 蛙歯幻 害奄壱 穐舘陥? 伺拭獄 YOUNG走呪?  [託鍵闇 巣市亀 蒸走幻] EP.14 #戚慎走 #走呪 (ENG/JPN/SPA/IND)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
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
