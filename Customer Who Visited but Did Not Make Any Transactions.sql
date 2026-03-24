SELECT
v.customer_id,count(v.visit_id)as count_no_trans
FROM visits v
LEFT JOIN transactions t ON v.visit_id=t.visit_id
where t.visit_id IS NULL
group by v.customer_id;
