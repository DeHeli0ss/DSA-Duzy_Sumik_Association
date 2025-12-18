CREATE TABLE FP_CZŁONEK_KLUBU(
            ID_czlonka NUMERIC(7) PRIMARY KEY,
            imie VARCHAR2(30) NOT NULL,
            nazwisko VARCHAR(30) NOT NULL,
            wiek NUMERIC(2),
            miejscowosc VARCHAR2(30),
            nr_telefonu NUMERIC(9) UNIQUE,
            email VARCHAR2(80) UNIQUE,
            czy_Administrator NUMBER(1) DEFAULT 0 NOT NULL 
                CHECK(czy_Administrator in(0,1)),
            --Członek nie jest admistratorem chyba że dostanie uprawnienia
            --sprawdzenie jest tu by sprawdzić czy wartość jest 1-true 
            --lub 0-false gdyż nie to pytanie nie może 
            --przyjmować innych wartości
            CONSTRAINT check_kontakt
            CHECK(email is NOT NULL OR nr_telefonu is NOT NULL),
            --Sprawdzenie czy któryś z nich jest podany
            --(Logowanie dokonywane jest za pomocą emaila lub 
            --telefonu obie wartości nie moga być NULL!!!)
            CONSTRAINT fk_konto_czlonek_ID_czlonka FOREIGN KEY (ID_czlonka)
            REFERENCES FP_KONTO_SYSTEMOWE(ID_czlonka),
            CONSTRAINT fk_konto_czlonek_nr_telefonu FOREIGN KEY(nr_telefonu)
            REFERENCES FP_KONTO_SYSTEMOWE(nr_telefonu),
            CONSTRAINT fk_konto_czlonek_email FOREIGN KEY (email)
            REFERENCES FP_KONTO_SYSTEMOWE(email)
);