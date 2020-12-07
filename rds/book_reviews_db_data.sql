insert into
	publisher (name)
values
	('O''Reilly Media'),
	('McGraw-Hill Education'),
	('Pearson'),
	('Manning Publications'),
	('CareerCup'),
	('Addison-Wesley Professional');

insert into
	author (name)
values
	('Martin Kleppmann'),
	('Harry Percival'),
	('Artur Ejsmont'),
	('Robert C. Martin'),
	('Chris Richardson'),
	('Aditya Bhargava'),
	('Gayle Laakmann McDowell'),
	('Andrew Hunt'),
	('Frederick Brooks Jr.'),
	('Bob Gregory');

insert into
	book (title, isbn, publisher_id, published_date)
values
	('Designing Data-Intensive Applications: The Big Ideas Behind Reliable, Scalable, and Maintainable Systems',
		9781449373320, 1, '2017-04-18'),
	('Test-Driven Development with Python: Obey the Testing Goat: Using Django, Selenium, and JavaScript',
		9781491958704, 1, '2017-08-31'),
	('Architecture Patterns with Python: Enabling Test-Driven Development, Domain-Driven Design, and Event-Driven Microservices',
		9781492052203, 1, '2020-03-24'),
	('Web Scalability for Startup Engineers',
		9780071843652, 2, '2015-06-23'),
	('Clean Code: A Handbook of Agile Software Craftsmanship',
		9780132350884, 3, '2008-08-01'),
	('Microservices Patterns: With examples in Java',
		9781617294549, 4, '2018-11-19'),
	('Grokking Algorithms: An Illustrated Guide for Programmers and Other Curious People',
		9781617292231, 4, '2016-05-01'),
	('Cracking the Coding Interview: 189 Programming Questions and Solutions',
		9780984782857, 5, '2015-07-01'),
	('The Pragmatic Programmer: From Journeyman to Master',
		9780201616224, 6, '1999-10-30'),
	('Mythical Man-Month, The: Essays on Software Engineering, Anniversary Edition',
		9780201835953, 6, '1995-08-02');

insert into
	author_book (author_id, book_id)
values
	(1, 1),
	(2, 2),
	(2, 3),
	(10, 3),
	(3, 4),
	(4, 5),
	(5, 6),
	(6, 7),
	(7, 8),
	(8, 9),
	(9, 10);

insert into
	"user" (username, "password", email_address)
values
	('maronavenue', 'il0vete0kb0kki', 'some_email@domain.com');

insert into
	book_review (book_id, user_id, description, rating, reviewed_date)
values
	(9, 1,
		'Definitely a classic. Choice of words were humane and fun overall with a little bit of irrevence which breaks traditional textbook tone. Highly recommended.',
		5, '2020-12-07');