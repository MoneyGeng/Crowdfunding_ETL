CREATE TABLE contacts (
	contact_id int PRIMARY KEY,
	first_name varchar,
	last_name varchar,
	email varchar
);

CREATE TABLE category (
  category_id varchar PRIMARY KEY,
  category varchar
);

CREATE TABLE subcategory(
	subcategory_id varchar PRIMARY KEY,
	subcategory varchar
);

CREATE TABLE campaign (
   cf_id int PRIMARY KEY,
   contact_id int REFERENCES contacts(contact_id),
   company_name varchar,
   description varchar,
   goal int,
   pledged int,
   outcome varchar,
   backers_count varchar,
   country varchar,
   currency varchar,
   launch_date date,
   end_date date,
   category_id varchar REFERENCES category(category_id),
   subcategory_id varchar REFERENCES subcategory(subcategory_id)
);


