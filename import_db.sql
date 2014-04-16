CREATE TABLE users
(
  id INTEGER PRIMARY KEY,
  fname CHAR(255),
  lname CHAR(255)
);

CREATE TABLE questions
(
  id INTEGER PRIMARY KEY,
  title CHAR(255),
  body CHAR(255),
  author_id INTEGER REFERENCES users(id)
);

CREATE TABLE question_followers
(
  id INTEGER PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  follower_id INTEGER REFERENCES users(id)
);

CREATE TABLE replies
(
  id INTEGER PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  parent_reply_id INTEGER REFERENCES replies(id),
  user_id INTEGER REFERENCES users(id),
  body CHAR(255)
);

CREATE TABLE question_likes
(
  id INTEGER PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  user_id INTEGER REFERENCES users(id)
);
