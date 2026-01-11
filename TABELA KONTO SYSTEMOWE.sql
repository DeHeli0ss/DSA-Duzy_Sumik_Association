------------------------------------------------------
--  Tworzenie tabeli Konto Systemowe gdzie można    --
--  logować się za pomocą nr_teleonu lub emaila     --
------------------------------------------------------
CREATE TABLE KONTO_SYSTEMOWE(
        id_czlonka NUMBER(7) PRIMARY KEY,
        nr_telefonu NUMBER(9) NULL UNIQUE,
        email VARCHAR2(80) NULL UNIQUE,
        haslo VARCHAR2(20) NOT NULL,
------------------------------------------------------------------------
--  Sprawdzenie czy do logowania spełniony jest warunek minimum czyli --
--  czyli podanie nr_teleonu lub emaila                               --
------------------------------------------------------------------------    
        CONSTRAINT check_logowanie CHECK
        (email is NOT NULL or nr_telefonu is NOT NULL)
        
);


