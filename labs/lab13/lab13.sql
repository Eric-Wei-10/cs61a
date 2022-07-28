.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet
  FROM students
  WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song
  FROM students
  WHERE color = "blue" AND pet = "dog";


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students a, students b
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT students.seven
  FROM students, numbers
  WHERE students.time = numbers.time AND students.number = 7 AND numbers.'7' = "True";


CREATE TABLE favpets AS
  SELECT pet, count(*)
  FROM students
  GROUP BY pet
  ORDER BY count(*) DESC
  LIMIT 10;


CREATE TABLE dog AS
  SELECT pet, count(*)
  FROM students
  WHERE pet = "dog";


CREATE TABLE bluedog_agg AS
  SELECT song, count(*)
  FROM students
  WHERE pet = "dog" AND color = "blue"
  GROUP BY song
  ORDER BY count(*) DESC;


CREATE TABLE instructor_obedience AS
  SELECT 7, instructor, count(*)
  FROM students
  WHERE seven = "7"
  GROUP BY instructor;
