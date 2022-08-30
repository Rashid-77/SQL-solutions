#  Table: Seat

#  +-------------+---------+
#  | Column Name | Type    |
#  +-------------+---------+
#  | id          | int     |
#  | student     | varchar |
#  +-------------+---------+
#  id is the primary key column for this table.
#  Each row of this table indicates the name and the ID of a student.
#  id is a continuous increment.

#  Write an SQL query to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
#  Return the result table ordered by id in ascending order.
#  The query result format is in the following example.

#  Example 1:
#  Input: 
#  Seat table:
#  +----+---------+
#  | id | student |
#  +----+---------+
#  | 1  | Abbot   |
#  | 2  | Doris   |
#  | 3  | Emerson |
#  | 4  | Green   |
#  | 5  | Jeames  |
#  +----+---------+
#  Output: 
#  +----+---------+
#  | id | student |
#  +----+---------+
#  | 1  | Doris   |
#  | 2  | Abbot   |
#  | 3  | Green   |
#  | 4  | Emerson |
#  | 5  | Jeames  |
#  +----+---------+
#  Explanation: 
#  Note that if the number of students is odd, there is no need to change the last one's seat.


SELECT
CASE
WHEN seat.id%2 = 0 THEN seat.id-1
WHEN seat.id = (SELECT COUNT(seat.id) FROM seat) THEN seat.id
WHEN seat.id%2 > 0 THEN seat.id+1
END as id,
student
FROM seat
ORDER BY id
