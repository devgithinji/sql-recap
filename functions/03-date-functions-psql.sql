-- SELECT EXTRACT(MONTH FROM last_checkin) membership_month, last_checkin
-- FROM memberships;
-- to extract a specific week day
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships;
-- separate date and time in timestamps
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;