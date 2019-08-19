SELECT book.title
FROM book
WHERE book.id NOT IN (
SELECT DISTINCT checkout_item.book_id FROM checkout_item WHERE checkout_item.book_id IS NOT NULL);

SELECT movie.title
FROM movie
WHERE movie.id NOT IN (
SELECT DISTINCT checkout_item.movie_id FROM checkout_item WHERE checkout_item.movie_id IS NOT NULL);