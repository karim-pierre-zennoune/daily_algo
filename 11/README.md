Wake-Up Kata  - SQL : Total des commandes par client
1- Charge les données avec le fichier shop_wakeup.sql
2- La base de données contient 4 tables :
customer qui contient les clients d'une boutique en ligne
item qui contient les produits proposés par la boutique
order qui contient les commandes passées
order_item qui lient les commandes aux produits commandés et précise la quantité commandée

En tant que développeur, on te demande de récupérer la liste des clients (id, firstname, lastname) ainsi que la somme totale de leurs commandes (par client) et de classer ce résultat par montant total, du plus élevé au plus faible.

Pour cela, tu auras besoin d'utiliser :
la commande SELECT
des JOIN entre les tables
la fonction d’agrégation SUM()
la clause GROUP BY
la clause ORDER BY
Pense également à utiliser des alias, par exemple total_amount pour la colonne qui contient le montant total.

Bonus :
Affiche uniquement les clients dont le montant total de commandes est supérieur à 500 €.



==============================================================
mysql> show tables;
+-----------------------+
| Tables_in_shop_wakeup |
+-----------------------+
| customer              |
| item                  |
| order                 |
| order_item            |
+-----------------------+
mysql> describe customer;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int         | NO   | PRI | NULL    |       |
| firstname | varchar(50) | YES  |     | NULL    |       |
| lastname  | varchar(50) | YES  |     | NULL    |       |
| city      | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
mysql> describe item;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| id         | int           | NO   | PRI | NULL    |       |
| name       | varchar(100)  | YES  |     | NULL    |       |
| unit_price | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
mysql> describe `order`;
+-------------+------+------+-----+---------+-------+
| Field       | Type | Null | Key | Default | Extra |
+-------------+------+------+-----+---------+-------+
| id          | int  | NO   | PRI | NULL    |       |
| customer_id | int  | YES  | MUL | NULL    |       |
| order_date  | date | YES  |     | NULL    |       |
+-------------+------+------+-----+---------+-------+
mysql> describe order_item;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| id       | int  | NO   | PRI | NULL    |       |
| order_id | int  | YES  | MUL | NULL    |       |
| item_id  | int  | YES  | MUL | NULL    |       |
| quantity | int  | YES  |     | NULL    |       |
+----------+------+------+-----+---------+-------+
