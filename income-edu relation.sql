-CREATE TABLE STATE_INCOMES(STATE VARCHAR(20),D1 INT,R1 VARCHAR(10),D2 INT,R2 VARCHAR(10),D3 INT,R3 VARCHAR(10),D4 INT,R4 VARCHAR(10),D5 INT,R5 VARCHAR(10),D6 INT,R6 VARCHAR(10),D7 INT,R7 VARCHAR(10),D8 INT,R8 VARCHAR(10),D9 INT,R9 VARCHAR(10),D10 INT,R10 VARCHAR(10),D11 INT,R11 VARCHAR(10),D12 INT,R12 VARCHAR(10),D13 INT,R13 VARCHAR(10),D14 INT,R14 VARCHAR(10),D15 INT,R15 VARCHAR(10),D16 INT,R16 VARCHAR(10),D17 INT,R17 VARCHAR(10),D18 INT,R18 VARCHAR(10),D19 INT,R19 VARCHAR(10),D20 INT,R20 VARCHAR(10),D21 INT,R21 VARCHAR(10),D22 INT,R22 VARCHAR(10),D23 INT,R23 VARCHAR(10));
-SELECT * FROM STATE_INCOMES;
-LOAD DATA LOCAL INFILE 'C:/Users/kavya dukkipati/Documents/states.csv' 
INTO TABLE STATE_INCOMES 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-CREATE TABLE UNIV(A1 VARCHAR(10),UNIVERSITY VARCHAR(25),A2 VARCHAR(10),A3 VARCHAR(10),STATE VARCHAR(10),A4 VARCHAR(10),A5 VARCHAR(10),A6 VARCHAR(10),A7 VARCHAR(10),A8 VARCHAR(10),A9 VARCHAR(10),A10 VARCHAR(10),A11 VARCHAR(10),A12 VARCHAR(10),A13 VARCHAR(10),A14 VARCHAR(10),A15 VARCHAR(10),A16 VARCHAR(10),A17 VARCHAR(10),A18 VARCHAR(10),A19 VARCHAR(10),A20 VARCHAR(10),A21 VARCHAR(10),A22 VARCHAR(10),A23 VARCHAR(10),A24 VARCHAR(10),A25 VARCHAR(10),A26 VARCHAR(10),A27 VARCHAR(10),A28 VARCHAR(10),A29 VARCHAR(10),A30 VARCHAR(10),A31 VARCHAR(10),A32 VARCHAR(10),A33 VARCHAR(10),A34 VARCHAR(10),A35 VARCHAR(10),A36 VARCHAR(10),A37 VARCHAR(10),A38 VARCHAR(10),A39 VARCHAR(10),A40 VARCHAR(10),A41 VARCHAR(10),A42 VARCHAR(10),A43 VARCHAR(10),A44 VARCHAR(10),A45 VARCHAR(10),A46 VARCHAR(10),A47 VARCHAR(10),A48 VARCHAR(10),A49 VARCHAR(10),A50 VARCHAR(10),A51 VARCHAR(10),A52 VARCHAR(10),A53 VARCHAR(10),A54 VARCHAR(10),A55 VARCHAR(10),A56 VARCHAR(10),A57 VARCHAR(10),A58 VARCHAR(10));
-SELECT * FROM UNIV;
-CREATE VIEW V AS SELECT S.STATE,S.D1,COUNT(U.UNIVERSITY) FROM STATE_INCOMES S,UNIV U WHERE S.STATE=U.STATE GROUP BY (S.STATE);
SELECT * FROM V;