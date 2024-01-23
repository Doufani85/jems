Create DATABASE  IF NOT EXISTS bdd_projet;

DROP TABLE IF EXISTS bdd_projet.artist;
CREATE EXTERNAL TABLE bdd_projet.artist (
  artist_id INT,
  full_name STRING,
  first_name STRING,
  middle_names STRING,
  last_name STRING,
  nationality STRING,
  style STRING,
  birth date,
  death date
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/artist';

DROP TABLE IF EXISTS bdd_projet.canvas_size;
CREATE EXTERNAL TABLE bdd_projet.canvas_size (
  size_id INT,
  width INT,
  height INT,
  label string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/canvas_size';

DROP TABLE IF EXISTS bdd_projet.image_link;
CREATE EXTERNAL TABLE bdd_projet.image_link (
  work_id INT,
  url STRING,
  thumbnail_small_url STRING,
  thumbnail_large_url STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/image_link';

DROP TABLE IF EXISTS bdd_projet.museum;
CREATE EXTERNAL TABLE bdd_projet.museum (
  museum_id INT,
  Name STRING,
  address STRING,
  city STRING,
  state STRING,
  postal INT,
  country STRING,
  phone STRING,
  url STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/museum';

DROP TABLE IF EXISTS bdd_projet.museum_hours;
CREATE EXTERNAL TABLE bdd_projet.museum_hours (
  museum_id INT,
  day STRING, 
  open STRING, 
  close STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/museum_hours';

DROP TABLE IF EXISTS bdd_projet.product_size;
CREATE EXTERNAL TABLE bdd_projet.product_size (
  work_id INT,
  size_id INT,
  sale_price INT,
  regular_price INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/product_size';

DROP TABLE IF EXISTS bdd_projet.subject;
CREATE EXTERNAL TABLE bdd_projet.subject (
  work_id INT,
  subject STRING

)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/subject';

DROP TABLE IF EXISTS bdd_projet.work;
CREATE EXTERNAL TABLE bdd_projet.work (
  work_id INT,
  name STRING,
  artist_id INT,
  style STRING,
  museum_id INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/data/work';






