create TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    surname VARCHAR(20)
);

create TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(20),
    content VARCHAR(20),
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES person (id)
);

-- ДЛя редактирования таблицы
-- ALTER TABLE post
--   ALTER COLUMN content TYPE varchar(500);

-- Для дампа базы
-- pg_dump -U postgres -d node_postgres > C:\Users\alexe\Desktop\projects\dumpedBase.sql

-- Для восстановления из дампа
-- psql -U postgres basefromdump < C:\Users\alexe\Desktop\projects\dumpedBase.sql