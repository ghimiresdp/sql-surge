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
- Automatically calculate late return fines (e.g., $1/day after due date).
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

# ✅ Deliverables
- SQL Scripts to:
  - Create database and tables
  - Insert dummy/sample data
  - Perform CRUD operations
  - Generate basic reports (queries)

---

# 🚀 Future Enhancements (Optional)
- Add a table for **Authors** separately and link it with Books.
- Add **reservation** functionality (reserve a book that's currently issued).
- Implement **staff accounts** for managing different librarian users.
