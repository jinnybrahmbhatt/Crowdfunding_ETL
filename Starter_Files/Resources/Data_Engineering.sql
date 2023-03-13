create table campaign
(cf_id int PRIMARY KEY,
contact_id int,
company_name VARCHAR,
 description VARCHAR,
 goal Dec,
 pledged DEC,
 outcome VARCHAR,
 backers_count int,
 country VARCHAR,
 currency VARCHAR,
 launch_date date,
 end_date date,
 category_id VARCHAR,
 subcategory_id VARCHAR
);

alter table campaign ADD CONSTRAINT fk_campaign_category FOREIGN KEY(category_id)REFERENCES  category(category_id);
alter table campaign ADD CONSTRAINT fk_campaign_subcategory FOREIGN KEY(subcategory_id)REFERENCES  subcategory(subcategory_id);
alter table campaign ADD CONSTRAINT fk_campaign_contacts FOREIGN KEY(contact_id)REFERENCES  contacts(contact_id);

create table category
(category_id VARCHAR PRIMARY KEY,
 category VARCHAR);


create table contacts 
(contact_id INT PRIMARY KEY,
 first_name VARCHAR,
 last_name VARCHAR,
 email VARCHAR
);

create table subcategory
(subcategory_id VARCHAR PRIMARY KEY,
 subcategory VARCHAR
);

