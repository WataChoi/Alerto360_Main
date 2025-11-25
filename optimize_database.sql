-- Add indexes to improve query performance
-- Run this SQL to optimize database queries

-- Index on email for faster login/registration checks
ALTER TABLE users ADD INDEX idx_email (email);

-- Index on user_id for faster incident queries
ALTER TABLE incidents ADD INDEX idx_user_id (user_id);

-- Index on status for faster filtering
ALTER TABLE incidents ADD INDEX idx_status (status);

-- Composite index for common queries
ALTER TABLE incidents ADD INDEX idx_user_status (user_id, status);

-- Index on created_at for sorting
ALTER TABLE incidents ADD INDEX idx_created_at (created_at);
