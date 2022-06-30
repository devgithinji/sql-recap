# SELECT TIMESTAMPDIFF(MINUTE , last_checkin, last_checkout)
# FROM memberships;

# SELECT membership_end - memberships.membership_start FROM memberships;

SELECT DATEDIFF(NOW(), membership_start)
FROM memberships;