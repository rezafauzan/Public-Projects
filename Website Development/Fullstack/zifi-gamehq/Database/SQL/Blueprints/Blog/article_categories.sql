-- id
-- article_category_name
-- created_at
-- updated_at

CREATE SCHEMA IF NOT EXISTS articles;

CREATE TABLE IF NOT EXISTS articles.article_categories (
    id SERIAL PRIMARY KEY,
    article_category_name TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX index_article_category_name ON articles.article_categories (article_category_name);