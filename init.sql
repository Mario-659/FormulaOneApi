-- Initialization script for database v0.0 from 2022-10-29
-- Data fetched from Official F1 API

INSERT INTO car ("name") VALUES ('W13');
INSERT INTO car ("name") VALUES ('C42');
INSERT INTO car ("name") VALUES ('AMR22');
INSERT INTO car ("name") VALUES ('MCL36');
INSERT INTO car ("name") VALUES ('FW44');
INSERT INTO car ("name") VALUES ('AT03');
INSERT INTO car ("name") VALUES ('F1-75');
INSERT INTO car ("name") VALUES ('A522');
INSERT INTO car ("name") VALUES ('VF-22');
INSERT INTO car ("name") VALUES ('RB18');


INSERT INTO supplier ("name", "headquarters") VALUES ('OZ Racing', 'San Martino di Lupari, Italy');
INSERT INTO supplier ("name", "headquarters") VALUES ('Pirelli', 'Milan, Italy');
INSERT INTO supplier ("name", "headquarters") VALUES ('Mercedes', 'Brackley, United Kingdom');
INSERT INTO supplier ("name", "headquarters") VALUES ('Plextek', 'London, United Kingdom');
INSERT INTO supplier ("name", "headquarters") VALUES ('BBS', 'Schiltach, Germany');
INSERT INTO supplier ("name", "headquarters") VALUES ('Brembo', 'Bergamo, Italy');
INSERT INTO supplier ("name", "headquarters") VALUES ('NGK', 'Nagoya, Japan');
INSERT INTO supplier ("name", "headquarters") VALUES ('Sachs', 'Schweinfurt, Germany');
INSERT INTO supplier ("name", "headquarters") VALUES ('Xtrac', 'Thatcham, United Kingdom');
INSERT INTO supplier ("name", "headquarters") VALUES ('Takata', 'Tokyo, Japan');
INSERT INTO supplier ("name", "headquarters") VALUES ('Riedel Communications', 'Wuppertal, Germany');
INSERT INTO supplier ("name", "headquarters") VALUES ('GS Yuasa', 'Kyoto, Japan');

INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Mercedes-AMG Petronas F1 Team',
        'Brackley, United Kingdom',
        'Toto Wolff',
        'Mike Elliott',
        'W13');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Alfa Romeo F1 Team ORLEN',
        'Hinwil, Switzerland',
        'Frédéric Vasseur',
        'Jan Monchaux',
        'C42');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Aston Martin Aramco Cognizant F1 Team',
        'Silverstone, United Kingdom',
        'Mike Krack',
        'Andrew Green',
        'AMR22');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Williams Racing',
        'Grove, United Kingdom',
        'Jost Capito',
        'François-Xavier Demaison',
        'FW44');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('McLaren F1 Team',
        'Woking, United Kingdom',
        'Andreas Seidl',
        'James Key',
        'MCL36');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Scuderia AlphaTauri',
        'Faenza, Italy',
        'Franz Tost',
        'Jody Egginton',
        'AT03');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Scuderia Ferrari',
        'Maranello, Italy',
        'Mattia Binotto',
        'Enrico Cardile',
        'F1-75');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('BWT Alpine F1 Team',
        'Enstone, United Kingdom',
        'Otmar Szafnauer',
        'Pat Fry',
        'A522');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Haas F1 Team',
        'Kannapolis, United States',
        'Guenther Steiner',
        'Simone Resta',
        'VF-22');
INSERT INTO team (name, city, leader, technical_leader, car_name)
VALUES ('Oracle Red Bull Racing',
        'Milton Keynes, United Kingdom',
        'Christian Horner',
        'Pierre Waché',
        'RB18');

INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Albert Park Grand Prix Circuit', 'Australia', 'Australia');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit of the Americas', 'North America', 'USA');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Bahrain International Circuit', 'Asia', 'Bahrain');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Baku City Circuit', 'Asia', 'Azerbaijan');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit de Barcelona-Catalunya', 'Europe', 'Spain');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Hungaroring', 'Europe', 'Hungary');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Autodromo Enzo e Dino Ferrari', 'Europe', 'Italy');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Autódromo José Carlos Pace', 'South America', 'Brazil');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Jeddah Corniche Circuit', 'Asia', 'Saudi Arabia');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Marina Bay Street Circuit', 'Europe', 'Singapore');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Miami International Autodrome', 'North America', 'USA');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit de Monaco', 'Europe', 'Monaco');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Autodromo Nazionale di Monza', 'Europe', 'Italy');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Red Bull Ring', 'Europe', 'Austria');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit Paul Ricard', 'Europe', 'France');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Autódromo Hermanos Rodríguez', 'South America', 'Mexico');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Silverstone Circuit', 'Europe', 'UK');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit de Spa-Francorchamps', 'Europe', 'Belgium');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Suzuka Circuit', 'Asia', 'Japan');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit Gilles Villeneuve', 'North America', 'Canada');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Yas Marina Circuit', 'Asia', 'UAE');
INSERT INTO track ("track_name", "continent", "localisation") VALUES ('Circuit Park Zandvoort', 'Europe', 'Netherlands');

INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Bahrain Grand Prix', 'Bahrain International Circuit', '2022-03-20');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Saudi Arabian Grand Prix', 'Jeddah Corniche Circuit', '2022-03-27');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Australian Grand Prix', 'Albert Park Grand Prix Circuit', '2022-04-10');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Emilia Romagna Grand Prix', 'Autodromo Enzo e Dino Ferrari', '2022-04-24');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Miami Grand Prix', 'Miami International Autodrome', '2022-05-08');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Spanish Grand Prix', 'Circuit de Barcelona-Catalunya', '2022-05-22');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Monaco Grand Prix', 'Circuit de Monaco', '2022-05-29');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Azerbaijan Grand Prix', 'Baku City Circuit', '2022-06-12');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Canadian Grand Prix', 'Circuit Gilles Villeneuve', '2022-06-19');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('British Grand Prix', 'Silverstone Circuit', '2022-07-03');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Austrian Grand Prix', 'Red Bull Ring', '2022-07-10');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('French Grand Prix', 'Circuit Paul Ricard', '2022-07-24');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Hungarian Grand Prix', 'Hungaroring', '2022-07-31');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Belgian Grand Prix', 'Circuit de Spa-Francorchamps', '2022-08-28');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Dutch Grand Prix', 'Circuit Park Zandvoort', '2022-09-04');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Italian Grand Prix', 'Autodromo Nazionale di Monza', '2022-09-11');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Singapore Grand Prix', 'Marina Bay Street Circuit', '2022-10-02');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Japanese Grand Prix', 'Suzuka Circuit', '2022-10-09');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('United States Grand Prix', 'Circuit of the Americas', '2022-10-23');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Mexico City Grand Prix', 'Autódromo Hermanos Rodríguez', '2022-10-30');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Brazilian Grand Prix', 'Autódromo José Carlos Pace', '2022-11-13');
INSERT INTO grand_prix ("grand_prix", "track_track_name", "date") VALUES ('Abu Dhabi Grand Prix', 'Yas Marina Circuit', '2022-11-20');

INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('23', '1996-03-23', 'Alexander', 'Albon', 'Thai', 'Williams Racing');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('14', '1981-07-29', 'Fernando', 'Alonso', 'Spanish', 'BWT Alpine F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('77', '1989-08-28', 'Valtteri', 'Bottas', 'Finnish', 'Alfa Romeo F1 Team ORLEN');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('45', '1995-02-06', 'Nyck', 'De Vries', 'Dutch', 'Williams Racing');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('27', '1987-08-19', 'Nico', 'Hülkenberg', 'German', 'Aston Martin Aramco Cognizant F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('10', '1996-02-07', 'Pierre', 'Gasly', 'French', 'Scuderia AlphaTauri');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('44', '1985-01-07', 'Lewis', 'Hamilton', 'British', 'Mercedes-AMG Petronas F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('6', '1995-06-29', 'Nicholas', 'Latifi', 'Canadian', 'Williams Racing');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('16', '1997-10-16', 'Charles', 'Leclerc', 'Monegasque', 'Scuderia Ferrari');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('20', '1992-10-05', 'Kevin', 'Magnussen', 'Danish', 'Haas F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('4', '1999-11-13', 'Lando', 'Norris', 'British', 'McLaren F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('31', '1996-09-17', 'Esteban', 'Ocon', 'French', 'BWT Alpine F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('11', '1990-01-26', 'Sergio', 'Pérez', 'Mexican', 'Oracle Red Bull Racing');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('3', '1989-07-01', 'Daniel', 'Ricciardo', 'Australian', 'McLaren F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('63', '1998-02-15', 'George', 'Russell', 'British', 'Mercedes-AMG Petronas F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('55', '1994-09-01', 'Carlos', 'Sainz', 'Spanish', 'Scuderia Ferrari');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('47', '1999-03-22', 'Mick', 'Schumacher', 'German', 'Haas F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('18', '1998-10-29', 'Lance', 'Stroll', 'Canadian', 'Aston Martin Aramco Cognizant F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('22', '2000-05-11', 'Yuki', 'Tsunoda', 'Japanese', 'Scuderia AlphaTauri');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('33', '1997-09-30', 'Max', 'Verstappen', 'Dutch', 'Oracle Red Bull Racing');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('5', '1987-07-03', 'Sebastian', 'Vettel', 'German', 'Aston Martin Aramco Cognizant F1 Team');
INSERT INTO driver ("number", "date_of_birth", "first_name", "last_name", "nationality", "team_name") VALUES ('24', '1999-05-30', 'Guanyu', 'Zhou', 'Chinese', 'Alfa Romeo F1 Team ORLEN');

INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (1,26,1,16,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (2,18,2,55,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (3,15,3,44,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (4,12,4,63,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (5,10,5,20,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (6,8,6,77,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (7,6,7,31,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (8,4,8,22,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (9,2,9,14,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (10,1,10,24,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (11,0,11,47,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (12,0,12,18,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (13,0,13,23,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (14,0,14,3,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (15,0,15,4,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (16,0,16,6,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (17,0,17,27,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (18,0,18,11,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (19,0,19,33,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (20,0,20,10,'Bahrain Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (21,25,1,33,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (22,19,2,16,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (23,15,3,55,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (24,12,4,11,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (25,10,5,63,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (26,8,6,31,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (27,6,7,4,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (28,4,8,10,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (29,2,9,20,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (30,1,10,44,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (31,0,11,24,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (32,0,12,27,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (33,0,13,18,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (34,0,14,23,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (35,0,15,77,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (36,0,16,14,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (37,0,17,3,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (38,0,18,6,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (39,0,19,22,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (40,0,20,47,'Saudi Arabian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (41,26,1,16,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (42,18,2,11,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (43,15,3,63,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (44,12,4,44,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (45,10,5,4,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (46,8,6,3,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (47,6,7,31,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (48,4,8,77,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (49,2,9,10,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (50,1,10,23,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (51,0,11,24,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (52,0,12,18,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (53,0,13,47,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (54,0,14,20,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (55,0,15,22,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (56,0,16,6,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (57,0,17,14,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (58,0,18,33,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (59,0,19,5,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (60,0,20,55,'Australian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (61,26,1,33,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (62,18,2,11,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (63,15,3,4,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (64,12,4,63,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (65,10,5,77,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (66,8,6,16,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (67,6,7,22,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (68,4,8,5,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (69,2,9,20,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (70,1,10,18,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (71,0,11,23,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (72,0,12,10,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (73,0,13,44,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (74,0,14,31,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (75,0,15,24,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (76,0,16,6,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (77,0,17,47,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (78,0,18,3,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (79,0,19,14,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (80,0,20,55,'Emilia Romagna Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (81,26,1,33,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (82,18,2,16,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (83,15,3,55,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (84,12,4,11,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (85,10,5,63,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (86,8,6,44,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (87,6,7,77,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (88,4,8,31,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (89,2,9,23,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (90,1,10,18,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (91,0,11,14,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (92,0,12,22,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (93,0,13,3,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (94,0,14,6,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (95,0,15,47,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (96,0,16,20,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (97,0,17,5,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (98,0,18,10,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (99,0,19,4,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (100,0,20,24,'Miami Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (101,25,1,33,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (102,19,2,11,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (103,15,3,63,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (104,12,4,55,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (105,10,5,44,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (106,8,6,77,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (107,6,7,31,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (108,4,8,4,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (109,2,9,14,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (110,1,10,22,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (111,0,11,5,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (112,0,12,3,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (113,0,13,10,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (114,0,14,47,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (115,0,15,18,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (116,0,16,6,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (117,0,17,20,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (118,0,18,23,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (119,0,19,24,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (120,0,20,16,'Spanish Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (121,25,1,11,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (122,18,2,55,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (123,15,3,33,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (124,12,4,16,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (125,10,5,63,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (126,9,6,4,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (127,6,7,14,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (128,4,8,44,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (129,2,9,77,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (130,1,10,5,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (131,0,11,10,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (132,0,12,31,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (133,0,13,3,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (134,0,14,18,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (135,0,15,6,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (136,0,16,24,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (137,0,17,22,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (138,0,18,23,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (139,0,19,47,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (140,0,20,20,'Monaco Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (141,25,1,33,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (142,19,2,11,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (143,15,3,63,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (144,12,4,44,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (145,10,5,10,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (146,8,6,5,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (147,6,7,14,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (148,4,8,3,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (149,2,9,4,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (150,1,10,31,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (151,0,11,77,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (152,0,12,23,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (153,0,13,22,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (154,0,14,47,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (155,0,15,6,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (156,0,16,18,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (157,0,17,20,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (158,0,18,24,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (159,0,19,16,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (160,0,20,55,'Azerbaijan Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (161,25,1,33,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (162,19,2,55,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (163,15,3,44,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (164,12,4,63,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (165,10,5,16,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (166,8,6,31,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (167,6,7,77,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (168,4,8,24,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (169,2,9,14,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (170,1,10,18,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (171,0,11,3,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (172,0,12,5,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (173,0,13,23,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (174,0,14,10,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (175,0,15,4,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (176,0,16,6,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (177,0,17,20,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (178,0,18,22,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (179,0,19,47,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (180,0,20,11,'Canadian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (181,25,1,55,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (182,18,2,11,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (183,16,3,44,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (184,12,4,16,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (185,10,5,14,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (186,8,6,4,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (187,6,7,33,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (188,4,8,47,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (189,2,9,5,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (190,1,10,20,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (191,0,11,18,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (192,0,12,6,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (193,0,13,3,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (194,0,14,22,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (195,0,15,31,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (196,0,16,10,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (197,0,17,77,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (198,0,18,63,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (199,0,19,24,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (200,0,20,23,'British Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (201,25,1,16,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (202,19,2,33,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (203,15,3,44,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (204,12,4,63,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (205,10,5,31,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (206,8,6,47,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (207,6,7,4,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (208,4,8,20,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (209,2,9,3,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (210,1,10,14,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (211,0,11,77,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (212,0,12,23,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (213,0,13,18,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (214,0,14,24,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (215,0,15,10,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (216,0,16,22,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (217,0,17,5,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (218,0,18,55,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (219,0,19,6,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (220,0,20,11,'Austrian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (221,25,1,33,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (222,18,2,44,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (223,15,3,63,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (224,12,4,11,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (225,11,5,55,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (226,8,6,14,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (227,6,7,4,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (228,4,8,31,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (229,2,9,3,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (230,1,10,18,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (231,0,11,5,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (232,0,12,10,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (233,0,13,23,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (234,0,14,77,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (235,0,15,47,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (236,0,16,24,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (237,0,17,6,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (238,0,18,20,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (239,0,19,16,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (240,0,20,22,'French Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (241,25,1,33,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (242,19,2,44,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (243,15,3,63,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (244,12,4,55,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (245,10,5,11,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (246,8,6,16,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (247,6,7,4,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (248,4,8,14,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (249,2,9,31,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (250,1,10,5,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (251,0,11,18,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (252,0,12,10,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (253,0,13,24,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (254,0,14,47,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (255,0,15,3,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (256,0,16,20,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (257,0,17,23,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (258,0,18,6,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (259,0,19,22,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (260,0,20,77,'Hungarian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (261,26,1,33,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (262,18,2,11,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (263,15,3,55,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (264,12,4,63,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (265,10,5,14,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (266,8,6,16,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (267,6,7,31,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (268,4,8,5,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (269,2,9,10,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (270,1,10,23,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (271,0,11,18,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (272,0,12,4,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (273,0,13,22,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (274,0,14,24,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (275,0,15,3,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (276,0,16,20,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (277,0,17,47,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (278,0,18,6,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (279,0,19,77,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (280,0,20,44,'Belgian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (281,26,1,33,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (282,18,2,63,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (283,15,3,16,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (284,12,4,44,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (285,10,5,11,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (286,8,6,14,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (287,6,7,4,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (288,4,8,55,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (289,2,9,31,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (290,1,10,18,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (291,0,11,10,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (292,0,12,23,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (293,0,13,47,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (294,0,14,5,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (295,0,15,20,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (296,0,16,24,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (297,0,17,3,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (298,0,18,6,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (299,0,19,77,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (300,0,20,22,'Dutch Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (301,25,1,33,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (302,18,2,16,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (303,15,3,63,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (304,12,4,55,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (305,10,5,44,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (306,9,6,11,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (307,6,7,4,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (308,4,8,10,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (309,2,9,45,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (310,1,10,24,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (311,0,11,31,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (312,0,12,47,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (313,0,13,77,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (314,0,14,22,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (315,0,15,6,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (316,0,16,20,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (317,0,17,3,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (318,0,18,18,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (319,0,19,14,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (320,0,20,5,'Italian Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (321,25,1,11,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (322,18,2,16,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (323,15,3,55,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (324,12,4,4,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (325,10,5,3,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (326,8,6,18,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (327,6,7,33,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (328,4,8,5,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (329,2,9,44,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (330,1,10,10,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (331,0,11,77,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (332,0,12,20,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (333,0,13,47,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (334,0,14,63,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (335,0,15,22,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (336,0,16,31,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (337,0,17,23,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (338,0,18,14,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (339,0,19,6,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (340,0,20,24,'Singapore Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (341,25,1,33,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (342,18,2,11,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (343,15,3,16,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (344,12,4,31,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (345,10,5,44,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (346,8,6,5,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (347,6,7,14,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (348,4,8,63,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (349,2,9,6,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (350,1,10,4,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (351,0,11,3,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (352,0,12,18,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (353,0,13,22,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (354,0,14,20,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (355,0,15,77,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (356,0,16,24,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (357,0,17,47,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (358,0,18,10,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (359,0,19,55,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (360,0,20,23,'Japanese Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (361,25,1,33,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (362,18,2,44,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (363,15,3,16,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (364,12,4,11,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (365,11,5,63,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (366,8,6,4,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (367,6,7,5,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (368,4,8,20,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (369,2,9,22,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (370,1,10,31,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (371,0,11,24,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (372,0,12,23,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (373,0,13,10,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (374,0,14,47,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (375,0,15,14,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (376,0,16,3,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (377,0,17,6,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (378,0,18,18,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (379,0,19,77,'United States Grand Prix');
INSERT INTO season_result (id, points, position, driver_number, grand_prix_grand_prix) VALUES (380,0,20,55,'United States Grand Prix');
