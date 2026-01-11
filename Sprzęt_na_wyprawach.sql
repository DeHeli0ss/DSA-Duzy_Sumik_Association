CREATE TABLE SPRZET_UZYTY_NA_WYPRAWACH(
    ID_wyprawy NUMBER(12) PRIMARY KEY,
    ID_sprzetu NUMBER(12) NOT NULL,
    CONSTRAINT PK_SPRZET_WYPRAWA PRIMARY KEY (ID_wyprawy, ID_sprzetu),
    CONSTRAINT fk_sprzet_na_wyprawach_wyprawa FOREIGN KEY (ID_wyprawy) REFERENCES WYPRAWA_WEDKARSKA(ID_wyprawy),
    CONSTRAINT fk_sprzet_na_wyprawach_sprzet FOREIGN KEY (ID_sprzetu) REFERENCES SPRZET(ID_sprzetu)

);



