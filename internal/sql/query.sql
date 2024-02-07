-- name: CreateWorkout :exec
INSERT INTO workout (id, name) VALUES($1,$2) RETURNING *;

-- name: GetWorkouts :many
SELECT * FROM workout ORDER BY name;

-- name: GetWorkout :one
SELECT * FROM workout WHERE id = $1 LIMIT 1;

-- name: CreateExercise :exec
INSERT INTO exercise (id, name, workout_id) VALUES($1,$2,$3) RETURNING *;

-- name: GetExercise :one
SELECT * FROM exercise WHERE id = $1 LIMIT 1;

-- name: GetExercises :many
SELECT * FROM exercise ORDER BY name;