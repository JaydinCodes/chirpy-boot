-- +goose Up
create TABLE chirpy(
    id uuid primary key,
    created_at timestamptz not null,
    updated_at timestamptz not null,
    body text not null,
    user_id uuid not null references users(id) on delete cascade
);

-- +goose Down
drop table chirpy;