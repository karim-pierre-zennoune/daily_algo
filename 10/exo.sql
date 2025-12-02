-- 1- Télécharge puis fais un SOURCE du fichier book.sql
-- 2- Ajoute les données concernant ton livre préféré dans la table book
-- 2- Récupère les colonnes title, author et price des 5 livres les plus récents



USE library_wakeup;
INSERT INTO book (title, author, publication_year, price) VALUES ("story of my life", "kpz", 1984, 0.01);
SELECT title, author, price FROM book ORDER BY publication_year DESC LIMIT 5;

