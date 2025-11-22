CREATE TABLE Członek_klubu(
    Imię VARCHAR2(30) NOT NULL,
    Nazwisko VARCHAR2(30) NOT NULL,
    ID_członka NUMERIC(7) PRIMARY KEY,
    Miejscowość VARCHAR2(30),
    Wiek NUMERIC(2),
    Numer_telefonu NUMERIC(9) UNIQUE,
    email VARCHAR2(80) UNIQUE,
    Status_członkostwa VARCHAR2(12) NOT NULL

);
COMMIT;

CREATE TABLE Karta_wędkarska(
    numer_karty NUMERIC(12) PRIMARY KEY,
    Typ VARCHAR2(15) NOT NULL,
    Data_ważności DATE NOT NULL
);
COMMIT;

CREATE TABLE Sprzęt(
    ID_sprzętu NUMERIC(12) PRIMARY KEY,
    Typ VARCHAR2(20) NOT NULL,
    Nazwa VARCHAR2(20) NOT NULL,
    Stan_techniczny VARCHAR2(20) NOT NULL
);
COMMIT;

CREATE TABLE Łowisko(
    Nazwa_łowiska VARCHAR2(50) NOT NULL UNIQUE,
    Typ VARCHAR2(20) NOT NULL,
    ID_łowiska NUMBER(12) PRIMARY KEY,
    Lokalizacja VARCHAR2(120) NOT NULL UNIQUE
);
COMMIT;

CREATE TABLE Wyprawa_wędkarska (
    ID_wyprawy NUMERIC(12) PRIMARY KEY,
    Data_i_godzina_przyjazdu DATE NOT NULL,
    Data_i_godzina_wyjazdu DATE NOT NULL
    
);
COMMIT;

CREATE TABLE Zdobycz(
    ID_zdobyczy NUMERIC(12) PRIMARY KEY,
    Gatunek VARCHAR2(100) NOT NULL,
    Masa FLOAT(4) NOT NULL,
    Długość FLOAT(4) NOT NULL,
    Data_połowu DATE NOT NULL,
    Opis VARCHAR2(300) UNIQUE
    
);
COMMIT;