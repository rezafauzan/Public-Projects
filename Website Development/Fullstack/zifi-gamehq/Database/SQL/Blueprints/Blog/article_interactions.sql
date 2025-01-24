-- id
-- article_id
-- user_id
-- reaction ( "bad_impression" | "usefull" | "inspiring" | "excited" | "awesome" )
-- created_at
-- updated_at

CREATE SCHEMA IF NOT EXISTS articles;

CREATE TYPE reaction AS ENUM ( 'bad_impression', 'usefull', 'inspiring', 'excited', 'awesome' );

CREATE TABLE IF NOT EXISTS articles.article_interactions (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    article_id INT NOT NULL,
    reaction reaction,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES articles.articles(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE INDEX index_user_id ON articles.article_interactions (user_id);
CREATE INDEX index_article_id ON articles.article_interactions (article_id);