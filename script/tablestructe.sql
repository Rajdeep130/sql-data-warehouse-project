IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_material_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE
)

select * from bronze.crm_cust_info

IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num   NVARCHAR(50),         -- Order Number (Assuming it's unique)
    sls_prd_key   NVARCHAR(50),            -- Product Key
    sls_cust_id   INT,            -- Customer ID
    sls_order_dt  INT ,           -- Order Date
    sls_ship_dt   INT,               -- Shipping Date (can be NULL if not shipped yet)
    sls_due_dt    INT ,           -- Due Date for Payment/Delivery
    sls_sales     INT ,  -- Total Sales Amount (Currency)
    sls_quantity  INT,            -- Quantity Sold
    sls_price     INT   -- Price Per Unit (Currency)
);

select * from bronze.crm_sales_details;
IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id       INT IDENTITY(1,1) PRIMARY KEY,  -- Unique Product ID (Auto-increment)
    prd_key      INT NOT NULL UNIQUE,            -- Product Key (Can be a business key)
    prd_nm       VARCHAR(255) NOT NULL,          -- Product Name
    prd_cost     DECIMAL(18,2) NOT NULL,         -- Product Cost
    prd_line     VARCHAR(100) NOT NULL,          -- Product Line/Category
    prd_start_dt DATE NOT NULL,                  -- Product Start Date
    prd_end_dt   DATE NULL                       -- Product End Date (Nullable if active)
);


select * from bronze.crm_prd_info;

IF OBJECT_ID('bronze.erp_px_cat_glv2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_glv2o;
CREATE TABLE bronze.erp_px_cat_glv2 (
    ID           NVARCHAR(50), 
    CAT          VARCHAR(100),         -- Main Category
    SUBCAT       VARCHAR(100),         -- Subcategory
    MAINTENANCE  DECIMAL(18,2)          -- Maintenance Cost (Currency)
);

IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    CID   INT ,     -- Customer ID 
    CNTRY VARCHAR(100)  -- Country Name
);

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    CID    NVARCHAR(50),  -- Unique Customer ID (Auto-increment)
    BDATE  DATE ,                   -- Birthdate of Customer
    GEN    VARCHAR(50) -- Gender (M = Male, F = Female, O = Other)
);


