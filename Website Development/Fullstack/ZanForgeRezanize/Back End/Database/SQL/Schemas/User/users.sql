-- id(performance) \ uuid(scalable, secure)
-- first_name
-- last_name
-- country
-- username[unique]
-- email[unique]
-- phone_number[unique]
-- password_hash[min_length = 8]
-- profile_picture
-- role
-- is_active
-- created_at
-- activated_at
-- updated_at

CREATE TABLE users (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255)  NOT NULL,
    country_id INT NOT NULL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(40) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    profile_picture_url VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    is_active BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activated_at TIMESTAMP DEFAULT ON UPDATE CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT ON UPDATE CURRENT_TIMESTAMP,
);