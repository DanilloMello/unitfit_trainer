-- name: CreateWorkout :one
INSERT INTO workouts (name) VALUES($1) RETURNING *;

-- name: ListWorkouts :many
SELECT * FROM workouts ORDER BY name;

-- name: GetWorkout :one
SELECT * FROM workouts WHERE id = $1 LIMIT 1;