local postgresClient = require("drive.postgres.client")

local sql =
[[CREATE TABLE "migrations" (
    "id" serial,
    "processed_at" timestamp
);]]

local result = postgresClient.QueryAsync(sql)
if result.error then
    return 1
end
return 0
