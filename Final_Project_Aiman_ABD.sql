CREATE TABLE "Sales" (
  "SalesID" SERIAL PRIMARY KEY,
  "PaymentID" INT,
  "CustomerID" INT,
  "ItemID" INT,
  "StoreID" INT,
  "date_sales" date,
  "quantity" INT,
  "unit" INT,
  "unit_price" float,
  "total_price" float
);

CREATE TABLE "Payments" (
  "PaymentID" SERIAL PRIMARY KEY,
  "bank_trans_type" VARCHAR(50),
  "bank_name" VARCHAR(80)
);

CREATE TABLE "Customers" (
  "CustomerID" SERIAL PRIMARY KEY,
  "cust_name" VARCHAR(50),
  "cust_contact_no" VARCHAR(50)
);

CREATE TABLE "Items" (
  "ItemID" SERIAL PRIMARY KEY,
  "item_name" VARCHAR(70),
  "item_type" VARCHAR(50),
  "item_country" VARCHAR(50),
  "item_supplier" VARCHAR(40)
);

CREATE TABLE "Stores" (
  "StoreID" SERIAL PRIMARY KEY,
  "store_division" VARCHAR(50),
  "store_district" VARCHAR(50),
  "store_upazila" VARCHAR(50)
);

ALTER TABLE "Sales" ADD FOREIGN KEY ("PaymentID") REFERENCES "Payments" ("PaymentID");

ALTER TABLE "Sales" ADD FOREIGN KEY ("CustomerID") REFERENCES "Customers" ("CustomerID");

ALTER TABLE "Sales" ADD FOREIGN KEY ("StoreID") REFERENCES "Stores" ("StoreID");

ALTER TABLE "Sales" ADD FOREIGN KEY ("ItemID") REFERENCES "Items" ("ItemID");
