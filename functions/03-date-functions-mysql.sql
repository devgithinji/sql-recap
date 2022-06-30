# SELECT EXTRACT(MONTH FROM last_checkin) membership_month, last_checkin FROM memberships;
#to extract a specific week day
# SELECT WEEKDAY(last_checkin) + 1 membership_day, last_checkin
# FROM memberships;
#seperate date and time in timestamps
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;
