-- SELECT last_checkout - last_checkin time_diff FROM memberships;

-- SELECT membership_end - memberships.membership_start FROM memberships;
SELECT NOW() - memberships.membership_start
FROM memberships;