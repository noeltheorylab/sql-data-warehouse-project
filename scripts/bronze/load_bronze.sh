#!/bin/bash

# Bronze Layer Load Script
# Truncates and loads all Bronze tables

PSQL="/Library/PostgreSQL/18/bin/psql"
DB="data_warehouse"
USER="postgres"
DATA_PATH="/Users/fifthmovement/Desktop/Desktop Files/self/edu/data_projects/sql-data-warehouse-project/datasets"

echo "========================================"
echo "Starting Bronze Layer Load"
echo "========================================"

# Function to load a table
load_table() {
    local schema=$1
    local table=$2
    local csv_path=$3
    
    echo ""
    echo "Loading $schema.$table..."
    start_time=$(date +%s)
    
    # Truncate
    $PSQL -U $USER -d $DB -c "TRUNCATE TABLE $schema.$table;" 2>&1
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to truncate $schema.$table"
        return 1
    fi
    
    # Load
    $PSQL -U $USER -d $DB -c "\copy $schema.$table FROM '$csv_path' WITH (FORMAT CSV, HEADER true);" 2>&1
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to load $schema.$table"
        return 1
    fi
    
    end_time=$(date +%s)
    duration=$((end_time - start_time))
    echo "SUCCESS: $schema.$table loaded in $duration seconds"
}

# Load CRM tables
load_table "bronze" "crm_cust_info" "$DATA_PATH/source_crm/cust_info.csv"
load_table "bronze" "crm_prd_info" "$DATA_PATH/source_crm/prd_info.csv"
load_table "bronze" "crm_sales_details" "$DATA_PATH/source_crm/sales_details.csv"

# Load ERP tables
load_table "bronze" "erp_cust_az12" "$DATA_PATH/source_erp/CUST_AZ12.csv"
load_table "bronze" "erp_loc_a101" "$DATA_PATH/source_erp/LOC_A101.csv"
load_table "bronze" "erp_px_cat_g1v2" "$DATA_PATH/source_erp/PX_CAT_G1V2.csv"

echo ""
echo "========================================"
echo "Bronze Layer Load Complete"
echo "========================================"