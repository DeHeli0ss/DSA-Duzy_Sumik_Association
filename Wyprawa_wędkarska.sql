CREATE TABLE Wyprawa_wedkarska(
    ID_wyprawy NUMBER(12) PRIMARY KEY,
    ID_miejsca_wyprawy NUMBER(12) NOT NULL,
    Data_i_godzina_przyjazdu DATE NOT NULL,
    Data_i_godzina_odjazdu DATE NOT NULL,
    CONSTRAINT fk_wyprawa_lowsika_miejsce FOREIGN KEY (ID_miejsca_wyprawy) 
    REFERENCES Lowisko(ID_lowiska)


);
