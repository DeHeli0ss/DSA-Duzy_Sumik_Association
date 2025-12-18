CREATE TABLE fp_karta_wedkarska(
    Nr_karty NUMERIC(12) NOT NULL UNIQUE,
    ID_wlasciciela NUMERIC(7) NOT NULL UNIQUE,
    Typ VARCHAR2(15) NOT NULL,
    DATA_WAZNOSCI DATE NOT NULL,
    CONSTRAINT fk_czlonek_karta_ID_wlasciciela 
    FOREIGN KEY(ID_wlasciciela)
    REFERENCES fp_członek_klubu(ID_czlonka)
);