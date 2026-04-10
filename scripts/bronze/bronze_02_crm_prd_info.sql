DROP TABLE IF EXISTS bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
	prd_id INTEGER, 
	prd_key VARCHAR (50),
	prd_nm VARCHAR(100),
	prd_cost NUMERIC,
	prd_line VARCHAR(10),
	prd_start_dt DATE,
	prd_end_dt DATE
	);
