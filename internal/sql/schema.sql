CREATE TABLE workout (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE exercise (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    workout_id INT,
    CONSTRAINT fk_workout FOREIGN KEY(workout_id) REFERENCES workout(id)
);
