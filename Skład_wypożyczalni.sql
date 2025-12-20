CREATE TABLE Sklad_wypozyczalni(
    ID_sprzetu NUMBER(12) PRIMARY KEY,
    Nazwa VARCHAR2(20) NOT NULL,
    Typ VARCHAR2(20) NOT NULL,
    Stan_techniczny VARCHAR2(20) NOT NULL,
    Kwota_wypozyczenia_na_dzień NUMBER(4,2) NOT NULL,
    Czy_dostępna NUMBER(1) NOT NULL CHECK (Czy_dostępna IN (0,1))
);