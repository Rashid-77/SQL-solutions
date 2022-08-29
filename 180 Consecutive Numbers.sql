#  Table: Logs

#  +-------------+---------+
#  | Column Name | Type    |
#  +-------------+---------+
#  | id          | int     |
#  | num         | varchar |
#  +-------------+---------+
#  id is the primary key for this table.
#  id is an autoincrement column.

#  Write an SQL query to find all numbers that appear at least three times consecutively.
#  Return the result table in any order.
#  The query result format is in the following example.

#  Example 1:

#  Input: 
#  Logs table:
#  +----+-----+
#  | id | num |
#  +----+-----+
#  | 1  | 1   |
#  | 2  | 1   |
#  | 3  | 1   |
#  | 4  | 2   |
#  | 5  | 1   |
#  | 6  | 2   |
#  | 7  | 2   |
#  +----+-----+
#  Output: 
#  +-----------------+
#  | ConsecutiveNums |
#  +-----------------+
#  | 1               |
#  +-----------------+
#  Explanation: 1 is the only number that appears consecutively for at least three times.

SELECT DISTINCT L1.num AS ConsecutiveNums
FROM logs AS L1, logs AS L2, logs AS L3
WHERE L1.id = L2.id+1
    AND L1.id = L3.id+2
    AND L1.num = L2.num
    AND L1.num = L3.num
