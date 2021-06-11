CREATE TABLE  AGENT_TRANSACTION
(
	AGENT_ID 			 VARCHAR2(15),
	TRANSACTION_ID	 	 VARCHAR2(20),
	TRANSACTION_DATE 	 DATE,
	
	CONSTRAINT ATS_agId_tsId_date_pk
		PRIMARY KEY (AGENT_ID,TRANSACTION_ID,TRANSACTION_DATE),
	CONSTRAINT ATS_agent_id_fk
		FOREIGN KEY (agent_id)
		REFERENCES Area_Agent (agent_id),
	CONSTRAINT ATS_tsId_date_fk
		FOREIGN KEY (TRANSACTION_ID,TRANSACTION_DATE)
		REFERENCES TRANSACTION_SUPPORT (TRANSACTION_ID,TRANSACTION_DATE)
);
INSERT INTO AGENT_TRANSACTION VALUES ('AA_0000001','TRANSC_00000011',TO_DATE('2-JAN-2019','DD-MON-YYYY'));
INSERT INTO AGENT_TRANSACTION VALUES ('AA_0000002','TRANSC_00000012',TO_DATE('3-JAN-2019','DD-MON-YYYY'));
INSERT INTO AGENT_TRANSACTION VALUES ('AA_0000003','TRANSC_00000013',TO_DATE('4-JAN-2019','DD-MON-YYYY'));
INSERT INTO AGENT_TRANSACTION VALUES ('AA_0000004','TRANSC_00000014',TO_DATE('6-JAN-2019','DD-MON-YYYY'));
INSERT INTO AGENT_TRANSACTION VALUES ('AA_0000005','TRANSC_00000015',TO_DATE('7-JAN-2019','DD-MON-YYYY'));