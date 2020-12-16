PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) references users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (question_id) references questions(id)
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    parent_id INTEGER,
    author_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    body TEXT NOT NULL,
    FOREIGN KEY (parent_id) references replies(id),
    FOREIGN KEY (author_id) references users(id),
    FOREIGN KEY (question_id) references questions(id)
);

CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (question_id) references questions(id)
);

INSERT INTO
    users (fname, lname)
VALUES
    ("Sam", "Dubner"),
    ("Jeffrey", "Bogart");

INSERT INTO
    questions (title, body, author_id)
VALUES
    ("hello", "world", (SELECT id FROM users WHERE fname = "Sam")),
    ("how do you exit vim", "I am lost", (SELECT id FROM users WHERE fname = "Jeffrey"));

INSERT INTO
    question_follows (user_id, question_id)
VALUES
    ((SELECT id FROM users WHERE fname = "Sam"), (SELECT id FROM questions WHERE title = "hello")),
    ((SELECT id FROM users WHERE fname = "Jeffrey"), (SELECT id FROM questions WHERE title = "how do you exit vim"));

INSERT INTO
    replies (parent_id, author_id, question_id, body)
VALUES
    (NULL, (SELECT id FROM users WHERE fname = "Sam"), (SELECT id FROM questions WHERE title = "hello"), "goodbye, world"),
    (NULL, (SELECT id FROM users WHERE fname = "Jeffrey"), (SELECT id FROM questions WHERE title = "how do you exit vim"), ":q");

INSERT INTO
    question_likes (user_id, question_id)
VALUES
    ((SELECT id FROM users WHERE fname = "Sam"), (SELECT id FROM questions WHERE title = "how do you exit vim")),
    ((SELECT id FROM users WHERE fname = "Jeffrey"), (SELECT id FROM questions WHERE title = "hello"));