CREATE TABLE "Sales_raw" (
  "SalesID" SERIAL PRIMARY KEY,
  "bank_trans_type" VARCHAR(50),
  "bank_name" VARCHAR(80),
  "cust_name" VARCHAR(50),
  "cust_contact_no" VARCHAR(50),
  "date_sales" date,
  "item_name" VARCHAR(70),
  "item_type" VARCHAR(50),
  "item_country" VARCHAR(50),
  "item_supplier" VARCHAR(40),
  "store_division" VARCHAR(50),
  "store_district" VARCHAR(50),
  "store_upazila" VARCHAR(50),
  "quantity" INT,
  "unit" INT,
  "unit_price" float,
  "total_price" float
);
