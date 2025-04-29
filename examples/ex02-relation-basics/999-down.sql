-- drop the table `books`
DROP TABLE -- drop `books` first since it has relation to `authors`
IF EXISTS -- drop only if exists
books
;

-- drop table `authors`
DROP TABLE IF EXISTS authors -- now it does not have any FK constraint
;
