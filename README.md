# SQL Surge

The `sql-surge` repository aims to provide a good reference to students,
teachers and database enthusiasts who would like to prepare, review, and get
fantastic challenges in `SQL` and `RDBMS`.

Most of the examples and challenges are written to comply with `PostgreSQL`,
however, you could try this on any of the RDBMS that support `SQL` syntaxes.

> **Note:**
> Sometimes, small modification might be needed to run with different SQL
> servers. For example `MySQL` do not support `SERIAL` columns, so we need
> to change it to `INTEGER AUTOINCREMENT` column type.

The reference basically contains the following resources:

1. **Notes**: This section provides introduction to specific topics.
2. **Examples**: This section provides some examples to get started with SQL.
3. **Challenges**: This section provides you challenges to get prepared.
4. **Projects**: This section will show you some real-world projects for starting projects.


## Setting up project

## Installing `vscode` and recommended extensions

Install your favourite code editor. This repository suggests you to use vscode,
which you can install from <https://code.visualstudio.com/>.

After installing vscode, you can install extensions suggested by the project
settings which is defined inside the file
[.vscode/extensions.json](.vscode/extensions.json).

## Setting up `SQL` server

If you prefer using a `SQL`server of your choice, then you may install it
otherwise, a docker compose file is provided to you to install `PostgreSQL`
server.
To do that, first install [docker](https://www.docker.com/) if it is not
alreaddy installed in your system. After installing docker, you can easily run
`docker compose up` command to start your postgresql server.

```bash
# to run all the services defined inside the `docker-compose.yml` file
docker compose up

# to run the those services in background, (daemonized mode)
docker compose up -d

# to run specific service in background, eg: postgres
docker compose up -d postgres
```

## Setting up initial Seed

Introduction and examples sometime needs some common database tables, which is
defined inside [common/](common/) directory.

Please run `SQL` scripts tagged with `up` and `seed` tags so that you would be
able to test those scripts.
For example [common/001-star-wars-up.sql](common/001-star-wars-up.sql)

If your database becomes corrupt, or you want to start over, you can run the
`scripts` that are tagged with **`down`** tag.
For example [common/003-star-wars-down.sql](common/003-star-wars-down.sql).


**Table of contents**

1. [Introduction to Database management System](course/c01-introduction/)
   - [1.1. Database Management System](#11-database-management-system)
   - [1.2. Relational Database Management System (RDBMS)](#12-relational-database-management-system-rdbms)
   - [1.3. Features of RDBMS](#13-features-of-rdbms)

2. [Basic Data Types](course/c02-data-types/)
    - 2.1. Numeric data types
    - 2.2. Boolean data type
    - 2.3. Character types
    - 2.4. Date/time types
    - 2.5. UUID type
    - 2.6. Array

3. [The SQL Language](course/c03-sql/)
     - 3.1. Database CRUD Operations
     - 3.2. TABLE CRUD Operations
     - 3.3. Populating a table with rows
     - 3.4. Querying a table
     - 3.5. Foreign Keys
     - 3.6. Joins Between Tables
     - 3.7. Transactions
     - 3.8. Aggregation

4. [PostgreSQL Introduction](course/c04-postgres/)
     - 4.1 PostgreSQL installation
     - 4.2 The `psql` command line application
     - 4.3 Database CRUD operations with `psql`
     - 4.4 User CRUD operations with `psql`
     - 4.5 Granting permissions to different users with `psql`
