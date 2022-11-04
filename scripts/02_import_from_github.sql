IMPORT INTO SRC_RETAIL_2.CASH_POINT FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'cash_point.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL_2.PRODUCT FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'product.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL_2.PROD_CATEGORY FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'prod_category.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL_2.PROD_GROUP FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'prod_group.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL_2.SALE FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'sale.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;

IMPORT INTO SRC_RETAIL_2.STORE FROM CSV 
AT 'https://github.com/serdarsuezen/mini_tutorial/raw/main/source_data/'
FILE 'store.csv'
COLUMN SEPARATOR = ';'
ROW SEPARATOR = 'LF'
SKIP = 1
;