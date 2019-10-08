alter table "VIDEO" DROP CONSTRAINT video_pk;
alter table "VIDEO" DROP CONSTRAINT video_fk;
alter table "VIDEO" DROP CONSTRAINT video_ran;
DROP TABLE VIDEO;

alter table "VLOGGER" DROP CONSTRAINT vlogger_pk;
alter table "VLOGGER" DROP CONSTRAINT vlogger_ck;
alter table "VLOGGER" DROP CONSTRAINT username_con_len;
DROP TABLE VLOGGER;

CREATE TABLE VLOGGER(
    vLoggerID NUMBER NOT NULL,
    forename VARCHAR2(20) NOT NULL,
    surname VARCHAR2(20) NOT NULL,
    username VARCHAR2(6) NOT NULL,
    expertise VARCHAR2(15) NOT NULL);


ALTER TABLE VLOGGER
ADD CONSTRAINT USERNAME_CON_LEN 
 CHECK (length(USERNAME) = 6);

ALTER TABLE VLOGGER
ADD CONSTRAINT VLOGGER_pk 
 PRIMARY KEY (VLOGGERID);

ALTER TABLE VLOGGER
ADD CONSTRAINT VLOGGER_CK 
 CHECK (EXPERTISE IN('Programming', 'Gaming', 'Baking', 'Crafts', 'Makeup', 'Clothes'));

INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(3, 'Noah', 'Sim', 'Noalng', 'Gaming');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(4, 'Phil', 'Oakley', 'Philng', 'Baking');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(5, 'Mirren', 'Jesse', 'Mirlng', 'Makeup');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(6, 'Christina', 'Morrison', 'Chrlng', 'Making');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(7, 'Logan', 'Vlogmas', 'Loglng', 'Programming');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(8, 'Zoella', 'Jeana', 'Zoelng', 'Clothes');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(9, 'Casey', 'James', 'Caslng', 'Programming');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(10, 'Joey', 'Tens', 'Joelng', 'Makeup');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(11, 'Grace', 'Point', 'Gralng', 'Gaming');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(12, 'Aidan', 'Marbles', 'Aidlng', 'Making');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(13, 'Jenna', 'Matthews', 'Jenlng', 'Clothes');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(14, 'Charlie', 'Choc', 'Chalng', 'Baking');
INSERT INTO VLOGGER (vloggerID, forename, surname, username, expertise) VALUES(15, 'Stephen', 'Brothers', 'Stelng', 'Programming');


CREATE TABLE VIDEO(
    videoID NUMBER NOT NULL,
    vLoggerID NUMBER NOT NULL,
    videoName VARCHAR2(30) NOT NULL,
    duration NUMBER NOT NULL,
    dateCreated DATE NOT NULL,
    content VARCHAR2(40) NOT NULL,
    rating NUMBER NOT NULL);

ALTER TABLE VIDEO
ADD CONSTRAINT VIDEO_pk 
 PRIMARY KEY (VIDEOID);
 
 ALTER TABLE VIDEO
 ADD CONSTRAINT video_fk
 FOREIGN KEY(vLoggerID) REFERENCES VLOGGER(vLOGGERID);
 
 ALTER TABLE VIDEO
 ADD CONSTRAINT VIDEO_ran
 CHECK ( RATING BETWEEN 1 AND 5);
 
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(1, 7, 'C++', 60 , to_date('30-Dec-17', 'DD-Mon-YY'), 'Lesson 1 Learn about C++', 1);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(2, 9, 'Java', 30 , to_date('12-Nov-19', 'DD-Mon-YY'), 'Learn Java in 24 hours', 4);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(3, 10, 'Slime', 45 , to_date('15-May-20', 'DD-Mon-YY'), 'Make Slime', 1);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(4, 10, 'Slime', 12 , to_date('25-Apr-20', 'DD-Mon-YY'), 'Glitter Slime', 5);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(5, 7, 'Lego', 8,  to_date('24-Jan-19', 'DD-Mon-YY'), 'Mission 1', 5);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(6, 3, 'COD', 180 , to_date('27-May-18', 'DD-Mon-YY'), 'History of COD', 2);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(7, 6, 'Eye Shadow', 35 , to_date('14-Feb-19', 'DD-Mon-YY'), 'Eye shadow Tutorial', 3);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(8, 12, 'Christmas', 0 , to_date('01-Dec-19', 'DD-Mon-YY'), 'Snowmen', 4);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(9, 15, 'Microbits', 180 , to_date('02-Sep-19', 'DD-Mon-YY'), 'Programming for kids', 2);
 INSERT INTO VIDEO (videoid, vloggerID, videoName, duration, dateCreated, content, rating) VALUES(10, 8, 'Jeans', 240 , to_date('18-Jun-19', 'DD-Mon-YY'), 'Jeans for all', 3);
