DROP TABLE IF EXISTS bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
	cst_id INTEGER,
	cst_key VARCHAR(50),
	cst_firstname VARCHAR(50),
	cst_lastname VARCHAR(50),
	cst_marital_status VARCHAR(10),
	cst_gndr VARCHAR(10),
	cst_create_date DATE
	);
SELECT * FROM information_schema.tables WHERE table_schema = 'bronze'