-- UP SCRIPT
CREATE TABLE IF NOT EXISTS users (
    -- If the database supports auto increment(eg: MySql, we can use it)
    -- id ITN AUTO_INCREMENT PRIMARY KEY,

    -- We are currently using postgresql so we use serial
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
