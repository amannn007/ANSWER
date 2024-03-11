-- Schema for Product_Category table
CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Schema for Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    product_inventory_desc TEXT,
    category_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);

-- Schema for Product_Inventory table
CREATE TABLE Product_Inventory (
    id INT PRIMARY KEY,
    SKU VARCHAR(255),
    quantity INT,
    category_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    price DECIMAL,
    deleted_at TIMESTAMP,
    discount_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id),
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
);

-- Schema for Discount table
CREATE TABLE Discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);
