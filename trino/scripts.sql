DROP TABLE arval.test.series
DROP SCHEMA IF EXISTS arval.test

CREATE SCHEMA arval.test WITH (LOCATION = 's3a://dhilocal/warehouse/test.db')

CREATE TABLE arval.test.series (
    Series_reference VARCHAR,
    Period VARCHAR,
    Data_value VARCHAR,
    Suppressed VARCHAR,
    STATUS VARCHAR,
    UNITS VARCHAR,
    Magnitude VARCHAR,
    Subject VARCHAR,
    Series_title_1 VARCHAR,
    Series_title_2 VARCHAR,
    Series_title_3 VARCHAR,
    Series_title_4 VARCHAR,
    Series_title_5 VARCHAR
)
WITH (
    format = 'CSV',
    external_location = 's3a://dhilocal/store/series/',
    skip_header_line_count = 1
);

select * from arval.test.series