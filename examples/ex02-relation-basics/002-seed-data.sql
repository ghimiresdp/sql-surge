-- seed authors
INSERT INTO
  authors (first_name, last_name)
VALUES
  ('Alex', 'Michaelides'),
  ('Stephen', 'Hawking'),
  ('John', 'Green'),
  ('Mia', 'Sheridan')
;

-- seed books
INSERT INTO
  books (author_id, title, total_pages)
VALUES
  (1, 'Silent patient', 400),
  (1, 'Fury', 350),
  (2, 'A brief history of time', 200),
  (3, 'Fault in our stars', 300),
  (3, 'Turtles all the way down', 320),
  (3, 'Will gray son will gray son', 330),
  (3, 'Will gray son will gray son', 330),
  (4, 'Archer''s love', 330)
;
