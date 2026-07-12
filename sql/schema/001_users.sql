-- +goose Up
create TABLE users(
    id UUID primary key default gen_random_uuid(),
    created_at timestamptz not null,
    updated_at timestamptz not null,
    email text not null
);

-- +goose Down
drop table users;
