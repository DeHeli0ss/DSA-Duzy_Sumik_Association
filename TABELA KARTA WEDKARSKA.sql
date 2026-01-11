CREATE TABLE karta_wedkarska(
    Nr_karty NUMBER(12) PRIMARY KEY,
    ID_wlasciciela NUMBER(7) NOT NULL,
    Typ VARCHAR2(15) NOT NULL,
    DATA_WAZNOSCI DATE NOT NULL,
    CONSTRAINT fk_czlonek_karta_ID_wlasciciela 
    FOREIGN KEY(ID_wlasciciela)
    REFERENCES czlonek_klubu(ID_czlonka)
);

