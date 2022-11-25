
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



DELIMITER $$

DROP PROCEDURE IF EXISTS register$$
CREATE DEFINER=`root`@`localhost` PROCEDURE register (IN Name VARCHAR(100), IN Email VARCHAR(100), IN Pass VARCHAR(100), IN Phone VARCHAR(100), IN Address VARCHAR(20))  
BEGIN
INSERT INTO customer(name,email,pass,phone,address) VALUES (Name , Email, Pass, Phone, Address);
END$$
DELIMITER ;


CREATE TABLE  car (
  chassis_number int(11) NOT NULL AUTO_INCREMENT,
  model int(11) NOT NULL,
  color varchar(20) DEFAULT NULL,
  PRIMARY KEY (chassis_number),
  KEY serial (model)
) ENGINE=InnoDB AUTO_INCREMENT=1161 DEFAULT CHARSET=latin1;



INSERT INTO car (chassis_number, model, color) VALUES
(1000, 71, 'blue'),
(1003, 72, 'blue'),
(1004, 72, 'green'),
(1005, 73, 'blue'),
(1006, 73, 'green'),
(1007, 74, 'blue'),
(1008, 74, 'green'),
(1009, 75, 'blue'),
(1110, 75, 'blue'),
(1114, 81, 'yellow'),
(1115, 83, 'red'),
(1116, 83, 'yellow'),
(1117, 84, 'red'),
(1118, 84, 'yellow'),
(1119, 85, 'red'),
(1120, 85, 'red'),
(1121, 91, 'black'),
(1122, 91, 'white'),
(1123, 92, 'black'),
(1124, 92, 'white'),
(1125, 93, 'black'),
(1126, 93, 'white'),
(1127, 94, 'black'),
(1128, 94, 'white'),
(1129, 95, 'black'),
(1130, 95, 'white'),
(1131, 1001, 'orange'),
(1132, 1001, 'silver'),
(1133, 1002, 'orange'),
(1134, 1002, 'orange'),
(1135, 1003, 'orange'),
(1136, 1003, 'silver'),
(1137, 1004, 'orange'),
(1138, 1004, 'silver'),
(1139, 1005, 'orange'),
(1140, 1005, 'silver'),
(1141, 1101, 'silver'),
(1142, 1101, 'silver'),
(1143, 1102, 'silver'),
(1144, 1102, 'silver'),
(1145, 1103, 'silver'),
(1146, 1103, 'silver'),
(1147, 1104, 'silver'),
(1148, 1104, 'silver'),
(1149, 1105, 'silver'),
(1150, 1105, 'silver'),
(1151, 1201, 'white'),
(1152, 1201, 'white'),
(1153, 1202, 'white'),
(1154, 1202, 'white'),
(1155, 1203, 'white'),
(1156, 1203, 'white'),
(1157, 1204, 'white'),
(1158, 1204, 'white'),
(1159, 1205, 'white'),
(1160, 1205, 'white');


CREATE TABLE  customer (
  c_id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  email varchar(250) NOT NULL,
  pass varchar(250) NOT NULL,
  phone varchar(100) NOT NULL,
  address varchar(20) NOT NULL,
  PRIMARY KEY (c_id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO customer (c_id, name, email, pass, phone, address) VALUES
(1, 'Aviral Gupta', '20ucs043@lnmiit.ac.in', 'aviral', '100', 'Meerut'),
(2, 'Iresh Agrawal', '20ucs083@lnmiit.ac.in', 'iresh', '108', 'Agra'),
(3, 'Hritul', '20ucs082@lnmiit.ac.in', 'hritul', '101', 'Agra'),
(4, 'Durvesh Sangle', '20ucs068@lnmiit.ac.in', 'dhurvesh', '109', 'Dhule');



CREATE TABLE IF NOT EXISTS dealership (
  d_id int(11) NOT NULL,
  name varchar(30) NOT NULL,
  PRIMARY KEY (d_id),
  KEY d_id (d_id),
  KEY d_id_2 (d_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO dealership (d_id, name) VALUES
(7001, 'Toyota Dealership'),
(8001, 'Audi Dealership'),
(9001, 'BMW Dealership'),
(10001, 'Chevrolet Dealership'),
(11001, 'Aston Martin Dealership'),
(12001, 'Mistubishi Dealership');


CREATE TABLE  manufacturer (
  m_id int(11) NOT NULL,
  name varchar(25) NOT NULL,
  PRIMARY KEY (m_id),
  KEY m_id (m_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO manufacturer (m_id, name) VALUES
(7001, 'Toyota'),
(8001, 'Audi'),
(9001, 'BMW'),
(10001, 'Chevrolet'),
(11001, 'Aston Martin'),
(12001, 'Mitsubishi');



CREATE TABLE  model (
  model int(11) NOT NULL,
  m_id int(11) NOT NULL,
  name varchar(20) NOT NULL,
  year year(4) NOT NULL,
  basic_spec varchar(200) NOT NULL,
  PRIMARY KEY (model),
  KEY m_id (m_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO model (model, m_id, name, year, basic_spec) VALUES
(71, 7001, 'Land Cruiser Prado', 2015, ''),
(72, 7001, 'Fortuner', 2017, ''),
(73, 7001, 'Camry', 2017, ''),
(74, 7001, 'Innova Crysta', 2016, ''),
(75, 7001, 'Etios Cross', 2015, ''),
(81, 8001, 'R8', 2016, ''),
(82, 8001, 'Q7', 2015, ''),
(83, 8001, 'RS7', 2016, ''),
(84, 8001, 'A8', 2017, ''),
(85, 8001, 'TT', 2015, ''),
(91, 9001, 'M4', 2016, ''),
(92, 9001, 'X6', 2017, ''),
(93, 9001, 'i8', 2015, ''),
(94, 9001, 'M3', 2017, ''),
(95, 9001, 'X3', 2016, ''),
(1001, 10001, 'Trailblazer', 2016, ''),
(1002, 10001, 'Cruze', 2017, ''),
(1003, 10001, 'Sail', 2015, ''),
(1004, 10001, 'Beat', 2017, ''),
(1005, 10001, 'Volt', 2016, ''),
(1101, 11001, 'Db11', 2014, ''),
(1102, 11001, 'Rapide', 2015, ''),
(1103, 11001, 'Vanquish', 2014, ''),
(1104, 11001, 'Vantage', 2015, ''),
(1105, 11001, 'Vulcan', 2015, ''),
(1201, 12001, 'Cedia', 2012, ''),
(1202, 12001, 'Lancer', 2002, ''),
(1203, 12001, 'Montero', 2013, ''),
(1204, 12001, 'Outlander', 2016, ''),
(1205, 12001, 'Pajero', 2014, '');


CREATE TABLE sale2 (
  sale_id int(11) NOT NULL AUTO_INCREMENT,
  customer_id int(11) NOT NULL,
  carmodel varchar(100) NOT NULL,
  ordertime datetime NOT NULL,
  PRIMARY KEY (sale_id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



INSERT INTO sale2 (sale_id, customer_id, carmodel, ordertime) VALUES
(1, 1, '72', '2021-11-27 21:40:31'),
(2, 2, '81', '2021-11-27 21:44:35'),
(3, 1, '81', '2021-11-26 21:45:33'),
(4, 1, '81', '2021-11-26 21:46:54');


DROP TRIGGER IF EXISTS Transaction;
DELIMITER $$
CREATE TRIGGER Transaction BEFORE INSERT ON sale2 FOR EACH ROW BEGIN
	SET NEW.ordertime = NOW();
END
$$
DELIMITER ;


ALTER TABLE car
  ADD CONSTRAINT car_ibfk_1 FOREIGN KEY (model) REFERENCES model (model) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dealership
  ADD CONSTRAINT dealership_ibfk_1 FOREIGN KEY (d_id) REFERENCES manufacturer (m_id) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE model
  ADD CONSTRAINT model_ibfk_1 FOREIGN KEY (m_id) REFERENCES manufacturer (m_id) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


