CREATE TABLE worker
(
    id   INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
);
CREATE TABLE products
(
    id       INTEGER PRIMARY KEY AUTO_INCREMENT,
    worker_id INTEGER NOT NULL REFERENCES worker,
    items TEXT    NOT NULL,
    price    INTEGER NOT NULL CHECK (price > 0),
    quantity    INTEGER NOT NULL DEFAULT 1 CHECK (products.quantity > 0)


);