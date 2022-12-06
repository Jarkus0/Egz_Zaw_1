USE master
GO

DROP DATABASE IF EXISTS baza

CREATE DATABASE baza
USE baza
GO

CREATE TABLE lokale (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nazwa TEXT,
miasto TEXT,
ulica TEXT,
numer TEXT
)

CREATE TABLE dania (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
typ INTEGER,
nazwa TEXT,
cena INTEGER
)

CREATE TABLE rezerwacje (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nr_stolika INTEGER,
data_rez DATE,
liczba_osob INTEGER,
telefon TEXT
)

CREATE TABLE pracownicy (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
imie TEXT,
nazwisko TEXT,
stanowisko INTEGER
)

