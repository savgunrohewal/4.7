
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    supplier_phone VARCHAR(50),
    supplier_address VARCHAR(255)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    category_manager VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    supplier_id INT NOT NULL,
    FOREIGN KEY (supplier_id)
    REFERENCES suppliers(supplier_id)
);

CREATE TABLE product_categories (
    product_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id),
    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);

CREATE TABLE tags (
    tag_id INT PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE product_tags (
    product_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (product_id, tag_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id),
    FOREIGN KEY (tag_id)
    REFERENCES tags(tag_id)
);
