CREATE TABLE Zwrocony_sprzet(
    ID_wypozczenia NUMBER(12) NOT NULL UNIQUE,
    Data_zwrotu DATE NOT NULL,
    Stan_zwrotu VARCHAR2(20) NOT NULL,
    Kwota_wypozyczenia NUMBER(6,2) NOT NULL,
    CONSTRAINT fk_Zwrocony_wypozyczony FOREIGN KEY (ID_wypozczenia) REFERENCES Wypozyczony_sprzet(ID_wypozczenia)

);