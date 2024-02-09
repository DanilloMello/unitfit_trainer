-- name: CreateWorkout :exec
INSERT INTO workouts (id, name) VALUES($1,$2) RETURNING *;

-- name: GetWorkouts :many
SELECT * FROM workouts ORDER BY name;

-- name: GetWorkout :one
SELECT * FROM workouts WHERE id = $1 LIMIT 1;

-- name: CreateExercise :exec
INSERT INTO exercises (id, name, workout_id) VALUES($1,$2,$3) RETURNING *;

-- name: GetExercise :one
SELECT * FROM exercises WHERE id = $1 LIMIT 1;

-- name: GetExercises :many
SELECT * FROM exercises ORDER BY name;