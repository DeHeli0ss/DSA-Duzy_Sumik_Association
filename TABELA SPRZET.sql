CREATE TABLE SPRZET(
    ID_sprzetu NUMERIC(12) NOT NULL UNIQUE,
    ID_wlasciciela NUMERIC(7) NOT NULL UNIQUE,
    Nazwa VARCHAR2(20) NOT NULL,
    Typ VARCHAR2(20) NOT NULL,
    STAN_TECHNICZNY VARCHAR2(20) NOT NULL,
    CONSTRAINT fk_sprzet_czlonek_id_wlasciciela
    FOREIGN KEY(ID_wlasciciela)
    REFERENCES CZLONEK_KLUBU(id_czlonka)

);

