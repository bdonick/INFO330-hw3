CREATE TABLE timeslots (
  id INTEGER PRIMARY KEY,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL
);

CREATE TABLE schedule (
  id INTEGER PRIMARY KEY,
  coursecode TEXT NOT NULL,
  roomid INTEGER NOT NULL,
  timeslotid INTEGER NOT NULL,
  UNIQUE (roomid, timeslotid),
  FOREIGN KEY (roomid) REFERENCES rooms(id),
  FOREIGN KEY (timeslotid) REFERENCES timeslots(id)
);