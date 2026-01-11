CREATE TABLE CZLONEK_KLUBU(
            ID_czlonka NUMBER(7) PRIMARY KEY,
            imie VARCHAR2(30) NOT NULL,
            nazwisko VARCHAR(30) NOT NULL,
            wiek NUMBER(2),
            miejscowosc VARCHAR2(30),
            nr_telefonu NUMBER(9) UNIQUE,
            email VARCHAR2(80) UNIQUE,
            haslo VARCHAR2(16) NOT NULL,
            czy_Administrator NUMBER(1) DEFAULT 0 NOT NULL 
                CHECK(czy_Administrator in(0,1)),
            --Członek nie jest admistratorem chyba że dostanie uprawnienia
            --sprawdzenie jest tu by sprawdzić czy wartość jest 1-true 
            --lub 0-false gdyż nie to pytanie nie może 
            --przyjmować innych wartości
            CONSTRAINT check_kontakt
            CHECK(email is NOT NULL OR nr_telefonu is NOT NULL)
            --Sprawdzenie czy któryś z nich jest podany
            --(Logowanie dokonywane jest za pomocą emaila lub 
            --telefonu obie wartości nie moga być NULL!!!)
);




