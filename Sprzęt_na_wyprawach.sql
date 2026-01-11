CREATE TABLE SPRZET_UZYTY_NA_WYPRAWACH(
    ID_wyprawy NUMBER(12) NOT NULL UNIQUE,
    ID_sprzetu NUMBER(12) NOT NULL,
    Id_wlasciciela NUMBER(7) NOT NULL,
    CONSTRAINT fk_sprzet_na_wyprawach_wyprawa FOREIGN KEY (ID_wyprawy) REFERENCES WYPRAWA_WEDKARSKA(ID_wyprawy),
    CONSTRAINT fk_sprzet_na_wyprawach_sprzet FOREIGN KEY (ID_sprzetu) REFERENCES SPRZET(ID_sprzetu),
    CONSTRAINT fk_sprzet_na_wyprawach_wlasciciel FOREIGN KEY (Id_wlasciciela) REFERENCES czlonek_klubu(ID_czlonka)

);
