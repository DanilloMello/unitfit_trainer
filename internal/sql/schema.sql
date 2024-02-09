CREATE TABLE workouts (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);
CREATE TABLE exercises (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    workout_id SERIAL NOT NULL REFERENCES workouts(id)
);