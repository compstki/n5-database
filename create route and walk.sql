DROP TABLE route;
CREATE TABLE route(
   routeID       NUMBER(1,0) NOT NULL
  ,startPoint    VARCHAR2(20) NOT NULL
  ,finishPoint   VARCHAR2(20) NOT NULL
  ,estimatedMins NUMBER(3,0) NOT NULL
  ,Kms           NUMBER(2,0) NOT NULL
  ,routeType     VARCHAR2(8) NOT NULL
  ,rating        NUMBER(1,0) NOT NULL
);
INSERT INTO route(routeID,startPoint,finishPoint,estimatedMins,Kms,routeType,rating) VALUES (1,'Shiel Bridge','Glen More',480,23,'Mountain',5);
INSERT INTO route(routeID,startPoint,finishPoint,estimatedMins,Kms,routeType,rating) VALUES (2,'Aberdour','Anstruther',600,44,'Coastal',4);
INSERT INTO route(routeID,startPoint,finishPoint,estimatedMins,Kms,routeType,rating) VALUES (3,'Rackwick','Rackwick',180,12,'Coastal',2);
INSERT INTO route(routeID,startPoint,finishPoint,estimatedMins,Kms,routeType,rating) VALUES (4,'Kelty','Loch Glow',90,5,'Forest',1);
INSERT INTO route(routeID,startPoint,finishPoint,estimatedMins,Kms,routeType,rating) VALUES (5,'Fort William','Steall Falls',210,8,'Hill',4);
INSERT INTO route(routeID,startPoint,finishPoint,estimatedMins,Kms,routeType,rating) VALUES (6,'Pitlochry','Blair Atholl',175,11,'Forest',2);


ALTER SESSION SET NLS_DATE_FORMAT='DD-MON-YYYY HH24:MI:SS';

DROP TABLE walk;
CREATE TABLE walk(
   walkNumber    NUMBER(4,0) NOT NULL
  ,walkDay       DATE  NOT NULL
  ,departure     DATE NOT NULL
  ,numberWalkers NUMBER(2,0) NOT NULL
  ,rained        VARCHAR2(3) NOT NULL
  ,minutesTaken  NUMBER(3,0) NOT NULL
  ,routeID       NUMBER(1,0) NOT NULL
);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (1893,'21-Mar-2017','30-Dec-1899 09:00:00',9,'Yes',213,3);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (2002,'30-Apr-2017','30-Dec-1899 07:30:00',15,'No',167,3);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (19,'27-Nov-2014','30-Dec-1899 11:10:00',30,'No',606,2);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (218,'01-Feb-2016','30-Dec-1899 13:30:00',3,'No',102,4);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (723,'16-Oct-2015','30-Dec-1899 02:00:00',12,'Yes',713,2);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (86,'01-Jan-2015','30-Dec-1899 08:45:00',24,'Yes',180,6);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (1992,'05-Apr-2017','30-Dec-1899 13:00:00',2,'No',512,1);
INSERT INTO walk(walkNumber,walkDay,departure,numberWalkers,rained,minutesTaken,routeID) VALUES (499,'19-Nov-2015','30-Dec-1899 14:00:00',9,'No',190,5);
