package main

import (
	"context"

	"github.com/jackc/pgx"
)

func main() {
	ctx := context.Background()
	conn, err := pgx.Connect(ctx, "user=pqgotest dbname=pqgotest sslmode=verify-full")
	if err != nil {
		return panic(err.Error())
	}
	defer conn.Close(ctx)
	dt := db.New()
}
