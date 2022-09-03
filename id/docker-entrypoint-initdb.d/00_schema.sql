CREATE TABLE users
(
    id       BIGSERIAL PRIMARY KEY,
    name     TEXT        NOT NULL UNIQUE,
    login    TEXT        NOT NULL UNIQUE,
    password TEXT        NOT NULL,
    station_id    BIGINT NOT NULL,
    created  TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_roles
(
    user_id BIGINT NOT NULL REFERENCES users,
    role    TEXT   NOT NULL

);

CREATE TABLE tokens
(
    token   TEXT PRIMARY KEY,
    user_id BIGINT      NOT NULL REFERENCES users,
    expire  TIMESTAMPTZ NOT NULL,
    created TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);
