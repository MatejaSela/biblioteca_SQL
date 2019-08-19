select member.name FROM member where member.id IN (
select checkout_item.member_id from book, checkout_item where
checkout_item.book_id = book.id and book.title = "The Hobbit"
);