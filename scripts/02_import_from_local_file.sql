
IMPORT INTO SRC_RETAIL.CASH_POINT FROM LOCAL CSV 
FILE '<local path>/cash_point.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PRODUCT FROM LOCAL CSV 
FILE '<local path>/product.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PROD_CLASS FROM LOCAL CSV 
FILE '<local path>/prod_class.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PROD_CATEGORY FROM LOCAL CSV 
FILE '<local path>/prod_category.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PROD_GROUP FROM LOCAL CSV 
FILE '<local path>/prod_group.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.SALE FROM LOCAL CSV 
FILE '<local path>/sale.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.STORE FROM LOCAL CSV 
FILE '<local path>/store.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;


