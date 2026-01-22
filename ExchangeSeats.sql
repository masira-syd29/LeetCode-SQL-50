# Write your MySQL query statement below
#swap the seats of adjacanet students
#if the number of students is odd no need to change the last one
#instead of changing the id numbers which is tough we just swap the names using LAG and LEAD 
SELECT 
    id,
    CASE 
        WHEN id % 2 != 0 THEN COALESCE(LEAD(student) OVER (ORDER BY id), student) 
        ELSE LAG(student) OVER (ORDER BY id)
    END AS student
FROM Seat;