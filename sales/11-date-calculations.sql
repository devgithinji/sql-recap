# SELECT *
# FROM sales
# WHERE date_fulfilled - date_created <= 5;


#using timestamps
# SELECT *
# FROM sales
# WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;