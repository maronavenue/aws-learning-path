-- Show list of all books with complete information
select book.id, title, author."name", publisher."name", published_date, isbn from book
	inner join author_book on book.id = author_book.book_id
	inner join author on author_book.author_id = author.id
	inner join publisher on book.publisher_id = publisher.id

-- Show all book reviews made by users
select book_review.id, book.title, "user".username, rating, description, reviewed_date from book_review
	inner join book on book_id = book.id
	inner join "user" on user_id = "user".id