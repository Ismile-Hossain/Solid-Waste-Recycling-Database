CREATE TABLE COMPANY_TRANSPORTATION
(
	COMPANY_TRADE_NUM 	VARCHAR2(15),
	VEHICLE_NUMBER   	VARCHAR2(20),
    HIRER_ID        	VARCHAR2(20),
	
	CONSTRAINT COMPTP_trdNum_vehNum_pk
		PRIMARY KEY (COMPANY_TRADE_NUM,VEHICLE_NUMBER,HIRER_ID),	
	CONSTRAINT COMPTP_cmp_trade_Num_fk
		FOREIGN KEY (COMPANY_TRADE_NUM)
		REFERENCES COMPANY (COMPANY_TRADE_NUM),
	CONSTRAINT COMPTP_vehNum_hirId_fk
		FOREIGN KEY (VEHICLE_NUMBER,HIRER_ID)
		REFERENCES TRANSPORTATION (VEHICLE_NUMBER,HIRER_ID)
	   
);


INSERT INTO COMPANY_TRANSPORTATION VALUES ('COMP_00000001','VEH_00000005','HIR_00000005');
INSERT INTO COMPANY_TRANSPORTATION VALUES ('COMP_00000002','VEH_00000004','HIR_00000004');
INSERT INTO COMPANY_TRANSPORTATION VALUES ('COMP_00000003','VEH_00000003','HIR_00000003');
INSERT INTO COMPANY_TRANSPORTATION VALUES ('COMP_00000004','VEH_00000002','HIR_00000002');
INSERT INTO COMPANY_TRANSPORTATION VALUES ('COMP_00000005','VEH_00000001','HIR_00000001');