--BUG FIX: SENTRY-500 CDH-22637
ALTER TABLE SENTRY_DB_PRIVILEGE ALTER COLUMN DB_NAME SET DEFAULT '__NULL__';
ALTER TABLE SENTRY_DB_PRIVILEGE ALTER COLUMN TABLE_NAME SET DEFAULT '__NULL__';
ALTER TABLE SENTRY_DB_PRIVILEGE ALTER COLUMN URI SET DEFAULT '__NULL__';

UPDATE SENTRY_DB_PRIVILEGE SET DB_NAME = DEFAULT WHERE DB_NAME is null;
UPDATE SENTRY_DB_PRIVILEGE SET TABLE_NAME = DEFAULT WHERE TABLE_NAME is null;
UPDATE SENTRY_DB_PRIVILEGE SET URI = DEFAULT WHERE URI is null;