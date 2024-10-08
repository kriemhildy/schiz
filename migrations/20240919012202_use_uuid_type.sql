BEGIN;

ALTER TABLE posts
  ALTER COLUMN uuid SET DATA TYPE UUID USING uuid::UUID;

ALTER TABLE posts
  ALTER COLUMN anon_token SET DATA TYPE UUID USING anon_token::UUID;

ALTER TABLE accounts
  ALTER COLUMN token SET DATA TYPE UUID USING token::UUID;

COMMIT;
