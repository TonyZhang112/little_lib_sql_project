BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Patrons" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"contact_info"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "books" (
	"id"	INTEGER,
	"title"	TEXT NOT NULL,
	"author"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"availability"	BOOLEAN NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "checkout" (
	"id"	INTEGER,
	"book_id"	INTEGER NOT NULL,
	"patron_id"	INTEGER NOT NULL,
	"checkout_date"	DATE NOT NULL,
	"return_date"	DATE,
	PRIMARY KEY("id"),
	FOREIGN KEY("book_id") REFERENCES "books"("id"),
	FOREIGN KEY("patron_id") REFERENCES "Patrons"("id")
);
INSERT INTO "Patrons" ("id","name","contact_info") VALUES (1,'Alice Johnson','ajohnson86@patt.edu');
INSERT INTO "Patrons" ("id","name","contact_info") VALUES (2,'Bob Smith','bsmith47@pratt.edu');
INSERT INTO "Patrons" ("id","name","contact_info") VALUES (3,'Carol White','cwhite89@pratt.edu');
INSERT INTO "Patrons" ("id","name","contact_info") VALUES (4,'David Brown','dbrown06@pratt.edu');
INSERT INTO "Patrons" ("id","name","contact_info") VALUES (5,'Tony Zhang','hzhang68@pratt.edu');
INSERT INTO "books" ("id","title","author","category","availability") VALUES (1,'A Man Called Ove','Fredrik Backman','fiction novel',1);
INSERT INTO "books" ("id","title","author","category","availability") VALUES (2,' 2001: Space Odyssey','Arthur C. Clarke','Sci-Fi',0);
INSERT INTO "books" ("id","title","author","category","availability") VALUES (3,'Three Body Problem','Liu Cixin','Sci-Fi',0);
INSERT INTO "books" ("id","title","author","category","availability") VALUES (4,'Dune','Frank Herbert','Sci-Fi',0);
INSERT INTO "books" ("id","title","author","category","availability") VALUES (5,'Heavier Than Heaven','Charles R. Cross','Biography',1);
INSERT INTO "checkout" ("id","book_id","patron_id","checkout_date","return_date") VALUES (1,3,5,'2025-08-01','2025-08-30');
INSERT INTO "checkout" ("id","book_id","patron_id","checkout_date","return_date") VALUES (2,2,3,'2025-08-05',NULL);
INSERT INTO "checkout" ("id","book_id","patron_id","checkout_date","return_date") VALUES (3,1,2,'2025-08-07','2025-08-21');
INSERT INTO "checkout" ("id","book_id","patron_id","checkout_date","return_date") VALUES (4,4,1,'2025-08-10',NULL);
INSERT INTO "checkout" ("id","book_id","patron_id","checkout_date","return_date") VALUES (5,3,4,'2025-09-10',NULL);
COMMIT;
