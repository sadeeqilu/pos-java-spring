CREATE TABLE IF NOT EXISTS roles
(
  id        SERIAL PRIMARY KEY,
  role_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS users
(
  id           SERIAL PRIMARY KEY,
  first_name   VARCHAR(100) NOT NULL,
  last_name    VARCHAR(100) NULL,
  email        VARCHAR(100) NULL,
  gender       VARCHAR(6),
  dob          TIMESTAMP    NULL,
  phone_number VARCHAR(100) NULL,
  address      TEXT,
  password     VARCHAR(255) NULL
);


CREATE TABLE IF NOT EXISTS items
(
  id         SERIAL PRIMARY KEY,
  item_name  VARCHAR(200) NOT NULL,
  unit_price MONEY,
  quantity   INTEGER      NOT NULL
);

CREATE TABLE IF NOT EXISTS categories
(
  id            SERIAL PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS item_categories
(
  id          SERIAL PRIMARY KEY,
  item_id     INTEGER REFERENCES items (id),
  category_id INTEGER REFERENCES categories (id),
  UNIQUE (id, item_id, category_id)
);

CREATE TABLE IF NOT EXISTS orders
(
  id             SERIAL    PRIMARY KEY ,
  order_date     TIMESTAMP NULL,
  subtotal       MONEY     NULL,
  payment_status BOOLEAN   NULL,
  user_id        INTEGER REFERENCES users (id),
  UNIQUE (id, user_id)
);

CREATE TABLE IF NOT EXISTS order_items
(
  id       SERIAL PRIMARY KEY ,
  order_id INTEGER REFERENCES orders (id),
  item_id  INTEGER REFERENCES items (id),
  UNIQUE (id, order_id, item_id)
);

CREATE TABLE IF NOT EXISTS customers
(
  id          SERIAL PRIMARY KEY,
  name        VARCHAR(200) NOT NULL,
  email       VARCHAR(200) NULL,
  phonenumber VARCHAR(15)  NULL,
  gender      VARCHAR(6)   NULL
);

CREATE TABLE IF NOT EXISTS customer_orders
(
  id          SERIAL PRIMARY KEY ,
  order_id    INTEGER REFERENCES orders (id),
  customer_id INTEGER REFERENCES customers (id),
  UNIQUE (id, order_id, customer_id)
);

CREATE TABLE IF NOT EXISTS suppliers
(
  id          SERIAL PRIMARY KEY,
  name        VARCHAR(200) NOT NULL,
  phonenumber VARCHAR(15)  NULL,
  email       VARCHAR(100) NULL,
  address     TEXT         NULL
);

CREATE TABLE IF NOT EXISTS item_suppliers
(
  id          SERIAL PRIMARY KEY ,
  item_id     INTEGER REFERENCES items (id),
  supplier_id INTEGER REFERENCES suppliers (id),
  UNIQUE (id,item_id,supplier_id)
);
