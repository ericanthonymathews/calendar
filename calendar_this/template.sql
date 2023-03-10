DROP TABLE IF EXISTS appointments;

CREATE TABLE appointments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(200) NOT NULL,
  start_datetime TIMESTAMP NOT NULL,
  end_datetime TIMESTAMP NOT NULL,
  description TEXT NOT NULL,
  private BOOLEAN NOT NULL
);

INSERT INTO appointments (name, start_datetime, end_datetime, description, private)
VALUES
('My appointment', '2023-01-04 14:00:00', '2023-01-04 15:00:00',
 'An appointment for me', false);
