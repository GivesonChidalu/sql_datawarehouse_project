USE master

USE DataWarehouse;

-- The CRM section
-- Cretaing thr customer Table
DROP TABLE IF EXISTS bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info
(
	cst_id INT,
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gndr NVARCHAR(50)
	,cst_create_date DATE
)

-- Creating the product Table

DROP TABLE IF EXISTS bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id INT, 
    prd_key NVARCHAR(50),         
    prd_nm NVARCHAR(200),        
    prd_cost INT,       
    prd_line NVARCHAR(50),                  
    prd_start_dt DATETIME,    
    prd_end_dt   DATETIME                 
);


--creating the sales table
DROP TABLE IF EXISTS bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details 
(
    sls_ord_num NVARCHAR(50),
    sls_prd_key NVARCHAR(50), 
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT,
);

-- for the ERP section

-- 1. ERP Location Table
DROP TABLE IF EXISTS bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    c_id    NVARCHAR(50),
    country NVARCHAR(50)
);

-- 2. ERP Customer Details Table
DROP TABLE IF EXISTS bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    c_id  NVARCHAR(50),
    BDATE DATE,
    GEN   NVARCHAR(10)
);

-- 3. Product Category Table
DROP TABLE IF EXISTS bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id          NVARCHAR(20),
    cat         NVARCHAR(50),
    subcat      NVARCHAR(50),
    maintenance NVARCHAR(10)
);
