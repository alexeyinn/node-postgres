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