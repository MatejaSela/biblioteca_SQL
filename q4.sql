INSERT INTO member (id, name) VALUES (43, "Mateja Sela");
INSERT INTO book (id, title) VALUES (11, "The Pragmatic Programmer");
INSERT INTO checkout_item (member_id, book_id) VALUES (43, 11);

select member.name FROM member where member.id IN (
select checkout_item.member_id from book, checkout_item where
checkout_item.book_id = book.id and book.title = "The Pragmatic Programmer");
