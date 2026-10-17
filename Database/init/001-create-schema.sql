
CREATE TABLE IF NOT EXISTS pipeline_demo (
    id BIGSERIAL PRIMARY KEY,
    message VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO pipeline_demo (message)
VALUES ('PostgreSQL database pipeline is working');
