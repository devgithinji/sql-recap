# SELECT price * memberships.billing_frequency annual_revenue
# FROM memberships;

# CEIL()
# FLOOR()
# ROUND(num, no.0f.dp)
# TRUNC() TRUNCATE(num, no.0f.dp) -> mysql

# SELECT ROUND(consumption,2) FROM memberships;

SELECT TRUNCATE(consumption,1) FROM memberships;

