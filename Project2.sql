drop table contacts
CREATE TABLE "contacts" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(30)  NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(50)  NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);
select * from contacts
drop table campaign
CREATE TABLE "campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(100)  NOT NULL,
    "goal" FLOAT  NOT NULL,
    "pledged" FLOAT  NOT NULL,
    "outcome" VARCHAR(30)  NOT NULL,
    "backers_count" INTEGER  NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)  NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)  NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);
select * from campaign
drop table subcategory
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)  NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory_id" PRIMARY KEY (
        "subcategory"
     )
);
select * from subcategory
drop table category
CREATE TABLE "category" (
    "category_id" VARCHAR(10)  NOT NULL,
    "category" VARCHAR(30)  NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);
select * from category
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

drop table subcategory
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)  NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory_id" PRIMARY KEY (
        "subcategory_id"
     )
);
select * from subcategory
drop table subcategory

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)  NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory_id" PRIMARY KEY (
        "subcategory_id"
     )
);
select * from subcategory

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



