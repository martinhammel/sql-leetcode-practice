```sql
/*
LeetCode 1581: Customer Who Visited but Did Not Make Any Transactions

What we have:
- Visits contains one row for each mall visit.
- Transactions contains transactions linked to visits through visit_id.

What we need:
For each customer, count how many of their visits had no transaction.

Logic:
1. Start with every visit.
2. LEFT JOIN transactions using visit_id.
3. If no transaction matches, transaction_id becomes NULL.
4. Keep only those NULL rows.
5. Group them by customer.
6. Count the visits in each customer group.
*/

SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
```
