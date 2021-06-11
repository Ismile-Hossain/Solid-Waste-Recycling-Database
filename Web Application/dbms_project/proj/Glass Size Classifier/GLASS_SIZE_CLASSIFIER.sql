CREATE TABLE GLASS_SIZE_CLASSIFIER
(
	SERIAL_NO	NUMBER(10,0),
	process_date Date,
	process_id varchar2(15),
	GLASS_SIZE varchar2(15),
	SIZE_AMOUNT NUMBER(10,5),
	
	
	CONSTRAINT GSC_serNo_proc_date_id_pk
		PRIMARY KEY (process_date,process_id,SERIAL_NO),
	CONSTRAINT GSC_pro_dat__id_fk
		FOREIGN KEY (process_date,process_id)
		REFERENCES Recycling_Process (process_date,process_id)
);

INSERT INTO GLASS_SIZE_CLASSIFIER VALUES (1,TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','12-20',300);
INSERT INTO GLASS_SIZE_CLASSIFIER VALUES (2,TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','20-40',300);
INSERT INTO GLASS_SIZE_CLASSIFIER VALUES (3,TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','40-70',300);
INSERT INTO GLASS_SIZE_CLASSIFIER VALUES (4,TO_DATE('3-JAN-2019','DD-MON-YYYY'),'PROC_00000003','70 & SAMLLER',300);