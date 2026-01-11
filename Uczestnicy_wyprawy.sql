CREATE TABLE Uczestnicy_wyprawy (
    ID_wyprawy NUMBER(12) NOT NULL,
    ID_uczestnika NUMBER(7) NOT NULL,
    Nr_karty NUMBER(12) NOT NULL,
    CONSTRAINT fk_uczestnicy_wyprawy_ID_wyprawy FOREIGN KEY (ID_wyprawy) REFERENCES Wyprawa_WEDKARSKA(ID_wyprawy),
    CONSTRAINT fk_uczestnicy_czlonek_ID_czlonka FOREIGN KEY (ID_uczestnika) REFERENCES czlonek_klubu(ID_czlonka),
    CONSTRAINT fk_uczestnicy_karty_ID_karty FOREIGN KEY (Nr_karty) REFERENCES KARTA_WEDKARSKA(Nr_karty)

);

