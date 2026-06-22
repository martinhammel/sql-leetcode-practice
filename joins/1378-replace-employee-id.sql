/*
LeetCode 1378: Replace Employee ID With the Unique Identifier

Main concept: LEFT JOIN

Employees is the main table because every employee must appear
in the result.

EmployeeUNI contains the unique ID for only some employees.

LEFT JOIN keeps every row from Employees and attaches a matching
unique_id where one exists. If no match exists, SQL returns NULL.
*/

SELECT
    eu.unique_id,
    e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
    ON e.id = eu.id;
