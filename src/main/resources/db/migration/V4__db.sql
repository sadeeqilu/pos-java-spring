CREATE TABLE IF NOT EXISTS roles (
  id SERIAL PRIMARY KEY,
  role_name VARCHAR(100) NOT NULL
  );

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL ,
  last_name VARCHAR(100) NULL ,
  email VARCHAR(100) NULL ,
   gender VARCHAR(6),
  dob DATE NULL ,
  phonenumber VARCHAR(100) NULL ,
  address TEXT,
  password VARCHAR(255) NULL
    )



