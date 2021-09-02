CREATE TABLE `buch` (
  `B_ID` int PRIMARY KEY,
  `Name` varchar(255)
);

CREATE TABLE `Autor` (
  `A_ID` int PRIMARY KEY,
  `Vorname` varchar(255),
  `Nachname` varchar(255)
);

CREATE TABLE `buch_autor` (
  `ba_ID` int PRIMARY KEY,
  `b_ID` int,
  `A_ID` int
);

CREATE TABLE `Verlag` (
  `v_ID` int PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `buch_verlag` (
  `bv_ID` int PRIMARY KEY,
  `B_ID` int,
  `V_ID` int
);

CREATE TABLE `genre` (
  `g_ID` int PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `buch_genre` (
  `BG_ID` int PRIMARY KEY,
  `B_ID` int,
  `g_ID` int
);

ALTER TABLE `buch_autor` ADD FOREIGN KEY (`b_ID`) REFERENCES `buch` (`B_ID`);

ALTER TABLE `buch_autor` ADD FOREIGN KEY (`A_ID`) REFERENCES `Autor` (`A_ID`);

ALTER TABLE `buch_verlag` ADD FOREIGN KEY (`V_ID`) REFERENCES `Verlag` (`v_ID`);

ALTER TABLE `buch` ADD FOREIGN KEY (`B_ID`) REFERENCES `buch_verlag` (`B_ID`);

ALTER TABLE `buch` ADD FOREIGN KEY (`B_ID`) REFERENCES `buch_genre` (`B_ID`);

ALTER TABLE `genre` ADD FOREIGN KEY (`g_ID`) REFERENCES `buch_genre` (`g_ID`);
