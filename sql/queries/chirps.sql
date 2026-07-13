-- name: CreateChirp :one

insert into chirpy(
    id, 
    created_at, 
    updated_at, 
    body, 
    user_id
) values(
    gen_random_uuid(),
    now(),
    now(),
    $1, 
    $2
)

returning *;

-- name: DeleteChirp :exec
delete from chirpy;

-- name: GetChirps :many
select * FROM chirpy
ORDER BY created_at ASC;

-- name: GetChirp :one
select * from chirpy WHERE id = $1;
