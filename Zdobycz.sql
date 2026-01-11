CREATE TABLE Zdobycz(
    ID_zdobyczy NUMBER(12) PRIMARY KEY,
    ID_wedkarza NUMBER(7) NOT NULL ,
    ID_sprzetu NUMBER(12) NOT NULL,
    ID_wyprawy NUMBER(12) NOT NULL,
    Gatunek VARCHAR2(100) NOT NULL,
    MASA FLOAT(4) NOT NULL,
    Dlugosc FLOAT(4) NOT NULL,
    Data_polowu DATE NOT NULL,
    Opis VARCHAR2(300) UNIQUE,
    CONSTRAINT fk_zdobycz FOREIGN KEY (ID_wedkarza) REFERENCES czlonek_klubu(ID_czlonka),
    CONSTRAINT fk_zdobycz_sprzet FOREIGN KEY (ID_sprzetu) REFERENCES SPRZET(ID_sprzetu),
    CONSTRAINT fk_zdobycz_wyprawa FOREIGN KEY (ID_wyprawy) REFERENCES WYPRAWA_WEDKARSKA(ID_wyprawy)


);
