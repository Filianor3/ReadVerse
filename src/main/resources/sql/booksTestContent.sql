USE TestVerse;



-- Insert authors
INSERT INTO authors (author_name, author_info) VALUES
                                                   ('Author 1', 'Author 1 info'),
                                                   ('Author 2', 'Author 2 info'),
                                                   ('Author 3', 'Author 3 info'),
                                                   ('Author 4', 'Author 4 info'),
                                                   ('Author 5', 'Author 5 info');

-- Insert genres
INSERT INTO genres (name, description) VALUES
                                                  ('Genre 1', 'Genre 1 description'),
                                                  ('Genre 2', 'Genre 2 description'),
                                                  ('Genre 3', 'Genre 3 description'),
                                                  ('Genre 4', 'Genre 4 description'),
                                                  ('Genre 5', 'Genre 5 description');

INSERT INTO books (title, author, description, rating, year, cover_path)
VALUES
    ('Book 1', 'Author 1', 'Description 1', 4.01, 2001, 'noCover.png'),
    ('Book 2', 'Author 2', 'Description 2', 4.02, 2002, 'noCover.png'),
    ('Book 3', 'Author 3', 'Description 3', 4.03, 2003, 'noCover.png'),
    ('Book 4', 'Author 4', 'Description 4', 4.04, 2004, 'noCover.png'),
    ('Book 5', 'Author 5', 'Description 5', 4.05, 2005, 'noCover.png'),
    ('Book 6', 'Author 1', 'Description 6', 4.06, 2006, 'noCover.png'),
    ('Book 7', 'Author 2', 'Description 7', 4.07, 2007, 'noCover.png'),
    ('Book 8', 'Author 3', 'Description 8', 4.08, 2008, 'noCover.png'),
    ('Book 9', 'Author 4', 'Description 9', 4.09, 2009, 'noCover.png'),
    ('Book 10', 'Author 5', 'Description 10', 4.1, 2010, 'noCover.png');

-- Insert book_genres
INSERT INTO book_genres (book_id, genre)
VALUES
    (1, 'Genre 1'), (1, 'Genre 2'), (1, 'Genre 3'),
    (2, 'Genre 2'), (2, 'Genre 3'), (2, 'Genre 4'),
    (3, 'Genre 1'), (3, 'Genre 3'), (3, 'Genre 5'),
    (4, 'Genre 2'), (4, 'Genre 4'), (4, 'Genre 5'),
    (5, 'Genre 1'), (5, 'Genre 4'), (5, 'Genre 5'),
    (6, 'Genre 1'), (6, 'Genre 2'), (6, 'Genre 3'),
    (7, 'Genre 1'), (7, 'Genre 3'), (7, 'Genre 4'),
    (8, 'Genre 2'), (8, 'Genre 3'), (8, 'Genre 5'),
    (9, 'Genre 1'), (9, 'Genre 4'), (9, 'Genre 5'),
    (10, 'Genre 2'), (10, 'Genre 3'), (10, 'Genre 4');

INSERT INTO users (username, password, email)
VALUES
    ('user1', 'password1', 'user1@example.com'),
    ('user2', 'password2', 'user2@example.com'),
    ('user3', 'password3', 'user3@example.com'),
    ('user4', 'password4', 'user4@example.com'),
    ('user5', 'password5', 'user5@example.com');

-- Insert lists into BookLists
INSERT INTO BookLists (title, description, user_id)
VALUES
    ('List 1', 'Description for List 1', 1),
    ('List 2', 'Description for List 2', 2),
    ('List 3', 'Description for List 3', 3),
    ('List 4', 'Description for List 4', 1),
    ('List 5', 'Description for List 5', 2),
    ('List 6', 'Description for List 6', 1);

-- Insert books into ListBooks
INSERT INTO ListBooks (list_id, book_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 5),
    (4, 3),
    (4, 4),
    (6, 5),
    (2, 2),
    (2, 3),
    (2, 4),
    (3, 2),
    (3, 5),
    (3, 3),
    (5, 2),
    (5, 3);
