# IOT PROJECT API
[![forthebadge](https://forthebadge.com/images/badges/made-with-go.svg)](https://forthebadge.com)
This is a REST API built for IOT project using Golang, Gin and Gorm.
## Requirements
- Golang
- [Go Gin](github.com/gin-gonic/gin)
- [Gorm](gorm.io/gorm)
## Environment variables (.env)
- HOST : Hostname
- DBPORT : PostgreSQL Server Port
- DBUSER : Database User Name
- DBNAME : Database Name
- DBPASSWORD : Database Password
- EMAIL_ADDR : From Email
- EMAIL_PSWD : From Email Password
- EMAIL_HOST : SMTP Host
- EMAIL_PORT : SMTP Port
## Build app binary
```bash
    $ go build -ldflags="-w -s" -o iot_api cmd/main.go
```
## Run the app
```bash
    $ go run cmd/main.go
```
## Run service
Spawn API at :8080 and DB at :5432
```bash
    $ docker compose up
```
## REST API
The REST API Methods to the above app is described below.
### Node Log
`GET /v0/nodelog/:date`
```bash
    curl -i -H 'Content-Type: application/json' http://localhost:8080/v0/nodelog/2000-06-28
```
`POST /v0/nodelog/`
```bash
    curl -i -H 'Content-Type: application/json' -d '{"relname": " " , "ipaddr": " ", "datetime": " "}' http://localhost:8080/v0/nodelog/
```

### User Log
`GET /v0/userrel/:rel`

```bash
    curl -i -H 'Content-Type: application/json' http://localhost:8080/v0/nodelog/name
 ```

`POST /v0/userrel/`

```bash
    curl -i -H 'Content-Type: application/json' -d '{"name": " ", "rel": " ", "email": " "}' http://localhost:8080/v0/userrel
```

`PUT /v0/userrel/:name`

 ```bash 
    curl -i -H 'Content-Type: application/json' -d '{"name": " ", "rel": " ", "email": " "}' http://localhost:8080/v0/name
```
    
`DELETE /v0/userrel/:name`

```bash 
    curl -i -H 'Content-Type: application/json' http://localhost:8080/v0/name
```

### Server Log
`GET /v0/getlog`

```bash 
    curl http://localhost:8080/v0/getlog
```
