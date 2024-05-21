-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.



CREATE TABLE Campaign (
    cf_id INTEGER  NOT NULL PRIMARY KEY,
    contact_id INTEGER  NOT NULL ,
    company_name VARCHAR  NOT NULL ,
    description VARCHAR  NOT NULL ,
    goal NUMERIC  NOT NULL ,
    pledged NUMERIC  NOT NULL ,
    outcome VARCHAR  NOT NULL ,
    backers_count INTEGER  NOT NULL ,
    country VARCHAR  NOT NULL ,
    currency VARCHAR  NOT NULL ,
    launch_date DATE  NOT NULL ,
    end_date DATE  NOT NULL ,
    category_id VARCHAR  NOT NULL ,
    subcategory_id VARCHAR  NOT NULL ,
	FOREIGN KEY (category_id) REFERENCES Category(category_id) ,
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id) ,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id)
);

CREATE TABLE Category (
    category_id VARCHAR  NOT NULL PRIMARY KEY,
    category VARCHAR  NOT NULL
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR  NOT NULL PRIMARY KEY,
    subcategory VARCHAR  NOT NULL
);

CREATE TABLE Contacts (
    contact_id INTEGER  NOT NULL PRIMARY KEY,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    email VARCHAR  NOT NULL
);

Select *
From Campaign

Select *
From Category

Select *
From Subcategory

Select *
From Contacts