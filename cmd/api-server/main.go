package main

import (
	"context"
	"log"

	"github.com/jackc/pgx/v5"

	"github.com/DanilloMello/unitfit_trainer/internal/db"
)

func main() {
	ctx := context.Background()
	conn, err := pgx.Connect(ctx, "user=postgres dbname=postgres")
	if err != nil {
		panic(err.Error())
	}
	defer conn.Close(ctx)

	queries := db.New(conn)

	workouts, err := queries.GetWorkouts(ctx)

	if err != nil {
		panic(err.Error())
	}

	log.Println(workouts)

}
