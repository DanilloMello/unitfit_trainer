-- WORKOUT
--name: CreateWorkout :exec
INSERT INTO workout (id, name) VALUES(?,?);

--name: GetWorkout :one
SELECT * FROM workout WHERE id = ?;

--name: GetWorkouts :many
SELECT * FROM workout;

-- EXERCISE
-- name: CreateExercise :exec
INSERT INTO exercise (id, name) VALUES(?,?);

--name: GetExercise :one
SELECT * FROM exercise WHERE id = ?;

--name: GetExercises :many
SELECT * FROM exercise;

