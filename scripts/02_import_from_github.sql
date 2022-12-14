IMPORT INTO SRC_RETAIL.CASH_POINT FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'cash_point.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PRODUCT FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'product.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PROD_CLASS FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'prod_class.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PROD_CATEGORY FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'prod_category.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.PROD_GROUP FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'prod_group.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.SALE FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'sale.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL.STORE FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'store.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;