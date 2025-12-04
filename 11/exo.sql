USE shop_wakeup;



SELECT * FROM(
    SELECT c.id, c.firstname, c.lastname, SUM(oi.quantity * i.unit_price) AS total_amount
    FROM `customer` AS c
    INNER JOIN `order` AS o ON c.id = o.customer_id
    INNER JOIN `order_item` AS oi ON o.id = oi.order_id
    INNER JOIN `item` AS i ON i.id = oi.item_id
    GROUP BY c.id
    ORDER BY total_amount
)
AS data
WHERE total_amount > 500;

SELECT c.id, c.firstname, c.lastname, SUM(oi.quantity * i.unit_price) AS total_amount
FROM `customer` AS c
INNER JOIN `order` AS o ON c.id = o.customer_id
INNER JOIN `order_item` AS oi ON o.id = oi.order_id
INNER JOIN `item` AS i ON i.id = oi.item_id
GROUP BY c.id
HAVING total_amount > 500
ORDER BY total_amount;

--  récupérer la liste des clients (id, firstname, lastname)
--   ainsi que la somme totale de leurs commandes (par client)
--    et de classer ce résultat par montant total,
--     du plus élevé au plus faible.
SELECT c.id, c.firstname, c.lastname, SUM(oi.quantity * i.unit_price) AS total_amount
FROM `customer` AS c
INNER JOIN `order` AS o ON c.id = o.customer_id
INNER JOIN `order_item` AS oi ON o.id = oi.order_id
INNER JOIN `item` AS i ON i.id = oi.item_id
GROUP BY c.id
ORDER BY total_amount;

+----+-----------+----------+--------------+
| id | firstname | lastname | total_amount |
+----+-----------+----------+--------------+
|  5 | Emma      | Leroy    |       200.00 |
| 11 | Karim     | Benali   |       290.00 |
|  3 | Chloé     | Bernard  |       355.00 |
|  8 | Hugo      | Renard   |       365.00 |
|  9 | Inès      | Bouchard |       415.00 |
|  1 | Alice     | Martin   |       420.00 |
|  2 | Bruno     | Durand   |       660.00 |
|  6 | Félix     | Moreau   |       760.00 |
|  7 | Gaëlle    | Fabre    |       800.00 |
| 12 | Lila      | Perrot   |       915.00 |
| 10 | Jules     | Colin    |       970.00 |
|  4 | David     | Rossi    |      1125.00 |
+----+-----------+----------+--------------+
12 rows in set (0.01 sec)




SELECT c.id, c.firstname, c.lastname,o.order_date,oi.quantity, oi.item_id, i.id, i.name, i.unit_price
FROM `customer` AS c
INNER JOIN `order` AS o ON c.id = o.customer_id
INNER JOIN `order_item` AS oi ON o.id = oi.order_id
INNER JOIN `item` AS i ON i.id = oi.item_id
WHERE c.id = 5;

+----+-----------+----------+------------+----------+---------+----+------------+------------+
| id | firstname | lastname | order_date | quantity | item_id | id | name       | unit_price |
+----+-----------+----------+------------+----------+---------+----+------------+------------+
|  5 | Emma      | Leroy    | 2024-05-22 |        1 |       9 |  9 | Imprimante |     150.00 |
|  5 | Emma      | Leroy    | 2024-05-22 |        2 |      10 | 10 | Cartouches |      25.00 |
+----+-----------+----------+------------+----------+---------+----+------------+------------+
2 rows in set (0.00 sec)



SELECT c.id, c.firstname, c.lastname,o.order_date,oi.quantity, oi.item_id, i.id, i.name, i.unit_price
FROM `customer` AS c
INNER JOIN `order` AS o ON c.id = o.customer_id
INNER JOIN `order_item` AS oi ON o.id = oi.order_id
INNER JOIN `item` AS i ON i.id = oi.item_id
WHERE c.id =11;


+----+-----------+----------+------------+----------+---------+----+-------------+------------+
| id | firstname | lastname | order_date | quantity | item_id | id | name        | unit_price |
+----+-----------+----------+------------+----------+---------+----+-------------+------------+
| 11 | Karim     | Benali   | 2024-01-22 |        1 |      34 | 34 | Disque dur  |      80.00 |
| 11 | Karim     | Benali   | 2024-01-22 |        2 |       2 |  2 | Souris      |      30.00 |
| 11 | Karim     | Benali   | 2024-03-12 |        1 |      35 | 35 | Carte mère  |     150.00 |
+----+-----------+----------+------------+----------+---------+----+-------------+------------+
3 rows in set (0.01 sec)


SELECT * FROM(
    SELECT c.id, c.firstname, c.lastname, SUM(oi.quantity * i.unit_price) AS total_amount
    FROM `customer` AS c
    INNER JOIN `order` AS o ON c.id = o.customer_id
    INNER JOIN `order_item` AS oi ON o.id = oi.order_id
    INNER JOIN `item` AS i ON i.id = oi.item_id
    GROUP BY c.id
    ORDER BY total_amount
)
AS data
WHERE total_amount > 500;

+----+-----------+----------+--------------+
| id | firstname | lastname | total_amount |
+----+-----------+----------+--------------+
|  2 | Bruno     | Durand   |       660.00 |
|  6 | Félix     | Moreau   |       760.00 |
|  7 | Gaëlle    | Fabre    |       800.00 |
| 12 | Lila      | Perrot   |       915.00 |
| 10 | Jules     | Colin    |       970.00 |
|  4 | David     | Rossi    |      1125.00 |
+----+-----------+----------+--------------+
6 rows in set (0.01 sec)
