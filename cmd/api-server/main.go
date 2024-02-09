package main

import (
	"context"
	"log"
	"os"

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

	conn, err := pgx.Connect(ctx, os.Getenv("DATABASE_URL"))
	if err != nil {
		panic(err.Error())
	}
	defer conn.Close(ctx)

	queries := db.New(conn)

	queries.CreateWorkout(ctx, db.CreateWorkoutParams{
		Name: "Fulano",
	})

	workouts, err := queries.GetWorkouts(ctx)

	if err != nil {
		panic(err.Error())
	}

	log.Println(workouts)
}
