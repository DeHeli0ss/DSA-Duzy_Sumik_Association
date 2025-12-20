CREATE TABLE Wypozyczony_sprzet(
    ID_wypozczenia NUMBER(12) PRIMARY KEY,
    ID_sprzetu NUMBER(12) NOT NULL UNIQUE,
    ID_osoby_wypozyczajacej NUMBER(12) NOT NULL,
    Poczatek_wypozyczenia DATE NOT NULL,
    Długosc_wypozyczenia NUMBER(3) NOT NULL,
    Kwota_wypozyczenia NUMBER(6,2) NOT NULL,
    CONSTRAINT fk_wypozczyczony_sklad_sprzet FOREIGN KEY (ID_sprzetu) REFERENCES Sklad_wypozyczalni(ID_sprzetu),
    CONSTRAINT fk__wypozczyczony_czlonek_osoba_wypozyczajaca FOREIGN KEY (ID_osoby_wypozyczajacej) REFERENCES CZLONEK_KLUBU(ID_czlonka)

);