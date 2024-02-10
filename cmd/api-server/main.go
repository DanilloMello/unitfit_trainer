package main

import (
	"context"
	"log"

	"github.com/DanilloMello/unitfit_trainer/internal/db"
	"github.com/jackc/pgx/v5"
	"github.com/joho/godotenv"
)

func main() {

	err := godotenv.Load()

	if err != nil {
		panic(err.Error())
	}

	ctx := context.Background()

	conn, err := pgx.Connect(ctx, "user=dbm dbname=postgres")

	if err != nil {
		panic(err.Error())
	}

	defer conn.Close(ctx)

	queries := db.New(conn)

	workout, err := queries.CreateWorkout(ctx, "Fulano")

	if err != nil {
		panic(err.Error())
	}

	log.Println(workout)

	workouts, err := queries.ListWorkouts(ctx)

	if err != nil {
		panic(err.Error())
	}

	log.Println(workouts)
}
