create database book_reviews_db;

create table author (
	id serial primary key,
	name text check (char_length(name) <= 70)
);

create table publisher (
	id serial primary key,
	name text check (char_length(name) <= 35)
);

create table book (
	id serial primary key,
	title text not null,
	isbn numeric(13) not null,
	publisher_id int not null references publisher (id) on update cascade,
	published_date date
);

create table author_book (
	author_id int not null references author (id) on update cascade on delete cascade,
	book_id int not null references book (id) on update cascade on delete cascade,
	primary key (author_id, book_id)
);

create table "user" (
	id serial primary key,
	username text not null check (char_length(username) <= 15),
	password text not null,
	email_address text check (char_length(email_address) <= 255)
);

create table book_review (
	id serial primary key,
	book_id int not null references book (id) on update cascade,
	user_id int not null references "user" (id) on update cascade,
	description text check (char_length(description) <= 500),
	rating numeric(1) not null check (rating > 0 and rating <= 5),
	reviewed_date timestamptz not null default now()
);