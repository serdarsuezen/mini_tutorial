CREATE SCHEMA IF NOT EXISTS SRC_RETAIL;

CREATE OR REPLACE TABLE SRC_RETAIL.CASH_POINT (
		CASH_POINT_NR DECIMAL(8,0),
		STORE_CODE DECIMAL(6,0),
		EXTRACT_DATE TIMESTAMP
);

CREATE OR REPLACE TABLE SRC_RETAIL.PRODUCT (
		PRODUCT_NR VARCHAR(30) ,
		PRODUCT_NAME VARCHAR(200) ,
		NET_PRICE DECIMAL(10,2),
		PROD_CLASS_CODE VARCHAR(5) ,
		SOURCING_PROD_CAT_NR DECIMAL(10,0),
		SALE_PROD_CAT_NR DECIMAL(10,0),
		EXTRACT_DATE TIMESTAMP
);

CREATE OR REPLACE TABLE SRC_RETAIL.PROD_CLASS (
		PROD_CLASS_CODE VARCHAR(5),
		PROD_CLASS_NAME VARCHAR(100),
		PROD_CLASS_SHORT_NAME VARCHAR(30),
		EXTRACT_DATE TIMESTAMP
);

CREATE OR REPLACE TABLE SRC_RETAIL.PROD_CATEGORY (
		PROD_CAT_NR DECIMAL(10,0),
		PROD_CAT_NAME VARCHAR(100) ,
		PROD_CAT_SHORT_NAME VARCHAR(30) ,
		MNGR_EMP_NR DECIMAL(10,0),
		SOURCING_PROD_GROUP_NR DECIMAL(8,0),
		SALE_PROD_GROUP_NR DECIMAL(8,0),
		EXTRACT_DATE TIMESTAMP
);

CREATE OR REPLACE TABLE SRC_RETAIL.PROD_GROUP (
		PROD_GROUP_NR DECIMAL(8,0),
		PROD_GROUP_NAME VARCHAR(100) ,
		PROD_GROUP_SHORT_NAME VARCHAR(30) ,
		VAT_PCT DECIMAL(5,2),
		MNGR_EMP_NR DECIMAL(10,0),
		EXTRACT_DATE TIMESTAMP
);

CREATE OR REPLACE TABLE SRC_RETAIL.SALE (
		SALE_DATE DATE,
		CUSTOMER_NR VARCHAR(10),
		PRODUCT_NR VARCHAR(30),
		CASH_POINT_NR DECIMAL(8,0),
		QTY DECIMAL(10,2),
		AMOUNT DECIMAL(10,2),
		CASH_OR_PLASTIC CHAR(1) ,
		CASHIER_EMP_NR DECIMAL(10,0),
		DISPLAY_PROD_CAT_NR DECIMAL(10,0),
		EXTRACT_DATE TIMESTAMP
);

CREATE OR REPLACE TABLE SRC_RETAIL.STORE (
		STORE_CODE DECIMAL(6,0),
		STORE_NAME VARCHAR(100) ,
		STORE_DISCOUNT DECIMAL(5,2),
		STORE_TYPE_CODE CHAR(1) ,
		STORE_TYPE_NAME VARCHAR(100) ,
		MNGR_EMP_NR DECIMAL(10,0),
		SALES_REGION_CODE_1 VARCHAR(10) ,
		SALES_REGION_CODE_2 VARCHAR(10) ,
		EXTRACT_DATE TIMESTAMP
);


ALTER TABLE SRC_RETAIL.STORE ADD CONSTRAINT PK_STORE PRIMARY KEY ("STORE_CODE") DISABLE;
ALTER TABLE SRC_RETAIL.SALE ADD CONSTRAINT PK_SALE PRIMARY KEY ("SALE_DATE","CUSTOMER_NR","PRODUCT_NR","CASH_POINT_NR") DISABLE;
ALTER TABLE SRC_RETAIL.PROD_GROUP ADD CONSTRAINT PK_PRODUCT_GROUP PRIMARY KEY ("PROD_GROUP_NR") DISABLE;
ALTER TABLE SRC_RETAIL.PROD_CATEGORY ADD CONSTRAINT PK_PRODUCT_CATEGORY PRIMARY KEY ("PROD_CAT_NR") DISABLE;
ALTER TABLE SRC_RETAIL.CASH_POINT ADD CONSTRAINT PK_CASH_POINT PRIMARY KEY ("CASH_POINT_NR") DISABLE;
ALTER TABLE SRC_RETAIL.PRODUCT ADD CONSTRAINT PK_PRODUCT PRIMARY KEY ("PRODUCT_NR") DISABLE;
ALTER TABLE SRC_RETAIL.PROD_CLASS ADD CONSTRAINT PK_PRODUCT_CLASS PRIMARY KEY ("PROD_CLASS_CODE") DISABLE;

ALTER TABLE SRC_RETAIL.SALE ADD CONSTRAINT CASH_POINT FOREIGN KEY (CASH_POINT_NR) REFERENCES SRC_RETAIL.CASH_POINT (CASH_POINT_NR) DISABLE;
ALTER TABLE SRC_RETAIL.SALE ADD CONSTRAINT PRODUCT FOREIGN KEY (PRODUCT_NR) REFERENCES SRC_RETAIL.PRODUCT (PRODUCT_NR) DISABLE;
ALTER TABLE SRC_RETAIL.PROD_CATEGORY ADD CONSTRAINT PRODUCT_GROUP FOREIGN KEY (SALE_PROD_GROUP_NR) REFERENCES SRC_RETAIL.PROD_GROUP (PROD_GROUP_NR) DISABLE;
ALTER TABLE SRC_RETAIL.CASH_POINT ADD CONSTRAINT STORE FOREIGN KEY (STORE_CODE) REFERENCES SRC_RETAIL.STORE (STORE_CODE) DISABLE;
ALTER TABLE SRC_RETAIL.PRODUCT ADD CONSTRAINT PRODUCT_CATEGORY FOREIGN KEY (SALE_PROD_CAT_NR) REFERENCES SRC_RETAIL.PROD_CATEGORY (PROD_CAT_NR) DISABLE;
ALTER TABLE SRC_RETAIL.PRODUCT ADD CONSTRAINT PRODUCT_CLASS FOREIGN KEY (PROD_CLASS_CODE) REFERENCES SRC_RETAIL.PROD_CLASS (PROD_CLASS_CODE) DISABLE;


/*
SELECT 'ALTER TABLE "' || CONSTRAINT_schema || '"."' || constraint_table || '" DROP CONSTRAINT "' || constraint_name || '";' drop_fk FROM exa_all_constraints WHERE constraint_schema = 'SRC_RETAIL' AND CONSTRAINT_type = 'FOREIGN KEY';

ALTER TABLE "SRC_RETAIL"."CASH_POINT" DROP CONSTRAINT "STORE";
ALTER TABLE "SRC_RETAIL"."PRODUCT" DROP CONSTRAINT "PRODUCT_CATEGORY";
ALTER TABLE "SRC_RETAIL"."PRODUCT" DROP CONSTRAINT "PRODUCT_CLASS";
ALTER TABLE "SRC_RETAIL"."SALE" DROP CONSTRAINT "CASH_POINT";
ALTER TABLE "SRC_RETAIL"."SALE" DROP CONSTRAINT "PRODUCT";
ALTER TABLE "SRC_RETAIL"."PROD_CATEGORY" DROP CONSTRAINT "PRODUCT_GROUP";
*/