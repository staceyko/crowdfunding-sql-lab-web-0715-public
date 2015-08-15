CREATE TABLE projects(
  id INTEGER PRIMARY KEY,
  title TEXT,
  category TEXT,
  funding_goal TEXT,
  start_date DATE,
  end_date DATE
);

CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

CREATE TABLE pledges(
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER REFERENCES users,
  project_id INTEGER REFERENCES projects
);
