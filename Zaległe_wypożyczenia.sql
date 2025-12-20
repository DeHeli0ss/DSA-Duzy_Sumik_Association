CREATE TABLE Zalegle_wypozyczenia(
    ID_wypozyczenia NUMBER(12) NOT NULL UNIQUE,
    Data_poczatku_wypozyczenia DATE NOT NULL,
    Dlugosc_wypozyczenia NUMBER(3) NOT NULL,
    Dlugosc_przetrzymania NUMBER(3) NOT NULL,
    Kwota_zadluzenia NUMBER(7,2) NOT NULL,
    CONSTRAINT fk_zalegle_wypozyczenia_ID_wypozyczenia FOREIGN KEY (ID_wypozyczenia) REFERENCES Wypozyczony_sprzet(ID_wypozczenia)
);