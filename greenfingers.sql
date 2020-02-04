REM   Script: greenfingers
REM   green fingers

ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

DROP TABLE JOBDETAILS;

CREATE TABLE JOBDETAILS( 
   jobId        NUMBER(2,0) NOT NULL PRIMARY KEY  
  ,jobdate      DATE  NOT NULL 
  ,jobtime      DATE  NOT NULL 
  ,customername VARCHAR2(40) NOT NULL 
  ,address      VARCHAR2(50) NOT NULL 
  ,postcode     VARCHAR2(8) NOT NULL 
  ,telephone    VARCHAR2(11)
  ,task         VARCHAR2(9) NOT NULL 
  ,staffID      VARCHAR2(5) NOT NULL 
);

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (1,'9-Apr-2020','30-Dec-1899 17:02','Rey Tyhurst','31 Arran Crescent','FK77 7IS','01506014395','lawn cut','DS055');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (2,'15-Mar-2020','30-Dec-1899 14:40','Ricky Martino','65 Orin Street','FK01 6DM','01506039329','weeding','DS055');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (3,'28-Mar-2020','30-Dec-1899 10:24','Siobhan Purchon','7 Bank Street','FK40 6LM','01506144251','hedge cut','DS026');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (4,'4-Apr-2020','30-Dec-1899 10:17','Noe Carney','81 Old Gate Drive','FK50 8KJ','01506137470','lawn cut','DS019');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (5,'6-Apr-2020','30-Dec-1899 15:32','Murry Wheaton','83 Nevis Circle','FK28 2SP','01506702542','lawn cut','DS066');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (6,'09-Mar-2020','30-Dec-1899 12:42','Deanna Haldon','73 Glebe Street','FK38 7UK','01506186734','lawn cut','DS066');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (7,'21-Feb-2020','30-Dec-1899 17:54','Jasmin Poynser','48 Bell''s Wynd','FK14 7BO','01506446691','weeding','DS027');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (8,'10-Feb-2020','30-Dec-1899 17:27','Zahara Pagett','64 Ludington Court','FK15 3EX','01506206281','hedge cut','DS066');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (9,'04-Apr-2020','30-Dec-1899 12:32','Greta Flockhart','8 Sutherland Circle','FK32 1NC','01506549633','lawn cut','DS061');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (10,'24-Mar-2020','30-Dec-1899 17:34','Zach Powderham','56 Burnfoot Lane','FK14 8PW','01506966006','weeding','DS001');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (11,'12-Feb-2020','30-Dec-1899 15:31','Rochester Lingner','98 Wellside Place','FK65 0FY','01506951346','hedge cut','DS028');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (12,'12-Mar-2020','30-Dec-1899 16:18','Linoel Rennenbach','23 Steensland Plaza','FK75 2RH','01506764255','lawn cut','DS010');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (13,'23-Mar-2020','30-Dec-1899 15:08','Llewellyn Fosten','42 Garthill Gardens','FK77 8WF','01506396492','weeding','DS028');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (14,'22-Apr-2020','30-Dec-1899 14:04','Edsel Boriston','1 Burnbrae Road','FK57 7JH','01506925775','hedge cut','DS028');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (15,'24-Apr-2020','30-Dec-1899 17:17','Ronny McGinnis','41 Kilns Place','FK36 4GW','01506252712','weeding','DS061');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (16,'03-Apr-2020','30-Dec-1899 10:55','Alison Champerlen','1 Carpenter Circle','FK94 2QE','01506610189','lawn cut','DS016');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (17,'12-Mar-2020','30-Dec-1899 15:08','Marielle Wreith','4 Merry Drive','FK48 5EV','01506313723','hedge cut','DS003');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (18,'24-Feb-2020','30-Dec-1899 10:50','Pauli Sutherland','29 Woodeside Court','FK68 0ZY','01506054438','lawn cut','DS001');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (19,'19-Mar-2020','30-Dec-1899 13:12','Lonni Foulkes','82 Rennie Street','FK72 3JY','01506988008','weeding','DS004');

INSERT INTO JOBDETAILS(jobId,jobdate,jobtime,customername,address,postcode,telephone,task,staffID) VALUES (20,'4-Apr-2020','30-Dec-1899 10:09','Culley Christer','10 Kings Circle','FK52 4DP','01506261391','lawn cut','DS016');

DROP TABLE GF_STAFF;

CREATE TABLE GF_STAFF( 
   staffID    VARCHAR(5) NOT NULL 
  ,forename   VARCHAR(20) NOT NULL 
  ,surname    VARCHAR(20) NOT NULL 
  ,address    VARCHAR(50) NOT NULL 
  ,topSkill   VARCHAR(5) NOT NULL 
  ,custRating NUMBER
);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS001','Alison','Duncan','44 Main Street, Falkirk, FK47 5RT','lawn',10);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS003','Jessica','Lawrie','18 Stevenson view, Denny, FK76 6TU','hedge',9);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS004','Peter','Falconer','21/4 Kier Place, Alva, ST12 7TR','lawn',8);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS007','Ryan','MacGowan','122 Moray Place, Falkirk, FK93 5RD','hedge',7);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS010','Martyn','Crawford','5/2 McLeod Street, Denny, FK77 3KT','hedge',6);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS014','Brenda','Learmonth','42 High Street, Alloa, FK 82 6GF','hedge',6);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS016','Keegan','Cuthbert','9 Thames Rise, Falkirk, FK99 2SD','lawn',5);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS019','Ruksana','Ali','62 Riverside drive, Alva, FK71 2FS','lawn',4);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS021','Derek','Strimmer','12 Leaf Avenue, Bowness, FK86 6FG','weeds',6);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS026','Artur','Luts','18 Moat Street, Denny, FK92 6GH','hedge',4);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS027','Signy','Saar','2 Glasgow Road, Falkirk, FK70 8HR','lawn',3);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS028','Claudia','Silva','102 Bannockburn drive, Alva, FK91 4RE','weeds',2);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS055','Brigitta','Corduneanu','92 Evergreen drive, Alva, FK 90 7FG','lawn',2);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS061','Susan','Brown','62 Riverside drive, Alva, FK71 2FS','hedge',1);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS063','Chris','Kelly','2 Glasgow Road, Falkirk, FK70 8HR','weeds',1);

INSERT INTO GF_STAFF(staffID,forename,surname,address,topSkill,custRating) VALUES ('DS066','Imad','Khan','42 High Street, Alloa, FK 82 6GF','lawn',1);

