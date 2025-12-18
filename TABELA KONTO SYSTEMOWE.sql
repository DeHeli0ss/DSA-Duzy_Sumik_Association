------------------------------------------------------
--  Tworzenie tabeli Konto Systemowe gdzie można    --
--  logować się za pomocą nr_teleonu lub emaila     --
------------------------------------------------------
CREATE TABLE FP_KONTO_SYSTEMOWE(
        id_członka NUMERIC(7) PRIMARY KEY,
        nr_telefonu NUMERIC(9) NULL UNIQUE,
        email VARCHAR2(80) NULL UNIQUE,
        hasło VARCHAR2(20) NOT NULL     
);
------------------------------------------------------------------------
--  Sprawdzenie czy do logowania spełniony jest warunek minimum czyli --
--  czyli podanie nr_teleonu lub emaila                               --
------------------------------------------------------------------------
ALTER TABLE FP_KONTO_SYSTEMOWE
ADD CONSTRAINT check_logowanie CHECK
(email is NOT NULL or nr_telefonu is NOT NULL);

ALTER TABLE FP_KONTO_SYSTEMOWE
RENAME id_członka TO ID_czlonka;
ALTER TABLE FP_KONTO_SYSTEMOWE
RENAME COLUMN hasło TO haslo;

