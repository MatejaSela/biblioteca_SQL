SELECT book.title
FROM book
JOIN checkout_item ON book.id = checkout_item.book_id
WHERE book.id NOT IN checkout_item