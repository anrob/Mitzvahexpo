CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "body" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "rates" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "rater_id" integer, "rateable_id" integer, "rateable_type" varchar(255), "stars" integer NOT NULL, "dimension" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "recipes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "prep_time" varchar(255), "ready_time" varchar(255), "serving" varchar(255), "ingredient" text, "direction" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "restaurants" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "address" varchar(255), "city" varchar(255), "state" varchar(255), "zip" varchar(255), "phone_number" varchar(255), "website" varchar(255), "created_at" datetime, "updated_at" datetime, "category" varchar(255), "subcategory" varchar(255), "fax" varchar(255), "video_code" varchar(255), "photo_file_name" varchar(255), "photo_content_type" varchar(255), "photo_file_size" integer, "photo_updated_at" datetime);
CREATE TABLE "reviews" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "restaurant_id" integer, "user_id" integer, "title" varchar(255), "body" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "slugs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "sluggable_id" integer, "sequence" integer DEFAULT 1 NOT NULL, "sluggable_type" varchar(40), "scope" varchar(255), "created_at" datetime);
CREATE TABLE "taggings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "tag_id" integer, "taggable_id" integer, "tagger_id" integer, "tagger_type" varchar(255), "taggable_type" varchar(255), "context" varchar(255), "created_at" datetime);
CREATE TABLE "tags" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255));
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(128) DEFAULT '' NOT NULL, "password_salt" varchar(255) DEFAULT '' NOT NULL, "confirmation_token" varchar(255), "confirmed_at" datetime, "confirmation_sent_at" datetime, "reset_password_token" varchar(255), "remember_token" varchar(255), "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "videos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "vid_id" varchar(255), "created_at" datetime, "updated_at" datetime, "title" varchar(255), "thumburl" varchar(255));
CREATE TABLE "votes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "vote" boolean DEFAULT 'f', "voteable_id" integer NOT NULL, "voteable_type" varchar(255) NOT NULL, "voter_id" integer, "voter_type" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "fk_voteables" ON "votes" ("voteable_id", "voteable_type");
CREATE INDEX "fk_voters" ON "votes" ("voter_id", "voter_type");
CREATE INDEX "index_rates_on_rateable_id_and_rateable_type" ON "rates" ("rateable_id", "rateable_type");
CREATE INDEX "index_rates_on_rater_id" ON "rates" ("rater_id");
CREATE UNIQUE INDEX "index_slugs_on_n_s_s_and_s" ON "slugs" ("name", "sluggable_type", "sequence", "scope");
CREATE INDEX "index_slugs_on_sluggable_id" ON "slugs" ("sluggable_id");
CREATE INDEX "index_taggings_on_tag_id" ON "taggings" ("tag_id");
CREATE INDEX "index_taggings_on_taggable_id_and_taggable_type_and_context" ON "taggings" ("taggable_id", "taggable_type", "context");
CREATE UNIQUE INDEX "index_users_on_confirmation_token" ON "users" ("confirmation_token");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20100827021045');

INSERT INTO schema_migrations (version) VALUES ('20100818054705');

INSERT INTO schema_migrations (version) VALUES ('20100829202840');

INSERT INTO schema_migrations (version) VALUES ('20100829204021');

INSERT INTO schema_migrations (version) VALUES ('20100829212214');

INSERT INTO schema_migrations (version) VALUES ('20100830043026');

INSERT INTO schema_migrations (version) VALUES ('20100907110312');

INSERT INTO schema_migrations (version) VALUES ('20100907163947');

INSERT INTO schema_migrations (version) VALUES ('20100907225949');

INSERT INTO schema_migrations (version) VALUES ('20100909055004');

INSERT INTO schema_migrations (version) VALUES ('20100922000449');

INSERT INTO schema_migrations (version) VALUES ('20100922141455');

INSERT INTO schema_migrations (version) VALUES ('20100923123824');

INSERT INTO schema_migrations (version) VALUES ('20100924063112');