CREATE TABLE temp_table AS 
SELECT checkout_item.member_id, COUNT(*)
FROM checkout_item
GROUP BY checkout_item.member_id
HAVING COUNT(*) > 1;

select member.name FROM member where member.id IN 
(
select temp_table.member_id from temp_table where
temp_table.member_id = member.id
);

DROP TABLE temp_table;