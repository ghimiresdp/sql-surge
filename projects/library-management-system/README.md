# 📚 Library Management System - SRS (SQL Project)

## 1. Introduction
- **Purpose**:
  To design and implement a relational database for managing library operations such as book inventory, member registrations, book lending, and returns.

- **Scope**:
  The database will store data about books, members, loans, and penalties (if any). It should support basic operations like adding new books, issuing/returning books, and generating simple reports.

- **Users**:
  - Librarians
  - System administrators (optional)

---

## 2. Functional Requirements

> Note: please check **[✅ Deliverables](#-deliverables)** section to know
> individual tasks for the completion of the project.

### 2.1 Book Management
- Add new books to the library.
- Update book details (title, author, ISBN, genre, etc.).
- Track available vs issued copies.

### 2.2 Member Management
- Register new members with necessary details.
- Update member profiles.
- Deactivate memberships (if needed).

### 2.3 Loan Management
- Issue books to members.
- Return books and update inventory.
- Track loan history per member and per book.

### 2.4 Fine Management
- Automatically calculate late return fines (e.g., $2/day after due date).
- Record payments of fines (optional).

### 2.5 Reporting
- List of currently issued books.
- Overdue books report.
- Top borrowed books.
- Member borrowing history.

---

## 3. Non-Functional Requirements

- Use **normalized** database design (preferably 3NF).
- Ensure **referential integrity** using foreign keys.
- Design should be **scalable** (easy to add more entities like "staff", "events" later).
- Use **indexes** where necessary (e.g., for quick search on ISBN, Member ID).

---

## 4. Entity-Relationship (ER) Overview

Main Tables:
- **Books**
  (`isbn`, `title`, `author`, `genre`, `total_copies`, `available_copies`)
  set `isbn` as an id and a primary key of a book.

- **Members**
  (`member_id`, `name`, `email`, `phone`, `join_date`, `membership_status`)

- **Loans**
  (`loan_id`, `book_id`, `member_id`, `issue_date`, `due_date`, `return_date`)

- **Fines** (optional if you implement it)
  (`fine_id`, `loan_id`, `amount`, `paid_status`)

---

## 5. Assumptions and Constraints
- A member can borrow a maximum of 5 books at a time.
- Loan period is 14 days by default.
- Fine is calculated **only when** the book is returned late.
- Only librarians or admins can modify records.

---

## ✅ Deliverables
Create SQL Scripts to perform the following:

### 1. Create tables

Create tables for:
- `lib_books`
- `lib_members`
- `lib_loans`
- `lib_fines` (do not seed fine data, there will be another task for it)

> Note: create down scripts for table so that you could perform operations again
> if the database gets corrupt.

> Note: all the tables will be prefixed with `lib_` to denote that these tables
> are used by the project `library management`.

### 2. Seed Data

Seed some data to the following tables.
- `lib_books`
- `lib_members`
- `lib_loans`

> Note: do not seed `lib_fine` data, there will be another task for it

### 3. List all members and books lent by them.

Use a simple `JOIN` query to join `books` and `loans` and view them in table.

### 4. List all members and count books lent by them.

Query all members along with the count of books lent by each member.

Please remember, you should also show members who has not lent any books. To do
so, you could use `LEFT JOIN` to show members who has not lent any books.

### 5. List all members who didn't lend any book.

### 6. List the most 3 popular books sorted by number of loans

In this context, the word Popular refers to the book that has been lent most.

### 7. [BUGFIX] Loan Due Dates

It is found that some/all loans have incorrect due date, please update entries
of due date in a single query by adding `15` days to the date of issue.

### 8. Add fines

1st May 2025, the librarian decided to calculate fines for all books that has
not been returned yet. He wants to calculate fines for all members who crossed
due date and yet not returned books.

The fine was declared $2 per day after the due date.

create a sql script that automatically calculate fines and add rows to the table
with a single query.

### 9. [BUGFIX] calculate available copies.

It is found that all books that was previously issued still was not updated in
the database due to which, all books had same number of `available_copies` as of
`total_copies`. This resulted in many complaints that the books that were shown
available was not in the library while visiting.

Write a query that updates all available copies of books by calculating the
number of books that were lent but not returned yet.


---

## 🚀 Future Enhancements (Optional)
> NOTE: This is a task for readers

- Add a table for **Authors** separately and link it with Books.
- Add **reservation** functionality (reserve a book that's currently issued).
- Implement **staff accounts** for managing different librarian users.
