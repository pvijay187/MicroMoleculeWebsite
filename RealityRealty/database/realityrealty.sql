CREATE TABLE properties (
        id Serial PRIMARY KEY,
        address VARCHAR(255) NOT NULL,
        city VARCHAR(255) NOT NULL,
        state char(2) NOT NULL,
        zip VARCHAR(255) NOT NULL,
        price INTEGER, 
        realtor_name VARCHAR(255),
        realtor_phone VARCHAR(255)
);