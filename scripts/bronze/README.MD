# Bronze Layer Scripts

## DDL Scripts (Table Creation)
- bronze_01_crm_cust_info.sql
- bronze_02_crm_prd_info.sql
- bronze_03_crm_sales_details.sql
- bronze_04_erp_cust_az12.sql
- bronze_05_erp_loc_a101.sql
- bronze_06_erp_px_cat_g1v2.sql

## Data Loading Process

### Instructor's Approach (SQL Server)
```sql
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
    -- CRM Customer Info
    TRUNCATE TABLE bronze.crm_cust_info;
    BULK INSERT bronze.crm_cust_info FROM '...' WITH (...);

    -- CRM Product Info
    TRUNCATE TABLE bronze.crm_prd_info;
    BULK INSERT bronze.crm_prd_info FROM '...' WITH (...);

    -- (continues for all 6 tables)
END;
```

### PostgreSQL Equivalent (Current Workflow)

**Step 1: Truncate (DBeaver)**
Run `bronze_07_truncate_tables.sql`

**Step 2: Load (DBeaver Import Wizard)**
For each table: Right-click → Import Data → CSV

### Future Automation (Terminal)
```bash
/Library/PostgreSQL/18/bin/psql -U postgres -d data_warehouse -c "\copy bronze.crm_cust_info FROM '/path/to/cust_info.csv' WITH (FORMAT CSV, HEADER true);"
```

### Note
PostgreSQL's COPY command requires server-level file access. SQL Server's BULK INSERT runs in stored procedures directly. For local PostgreSQL, we use client-side loading (DBeaver or psql \copy).