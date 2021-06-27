FROM golang:1.16-alpine3.14 as gobuilder

RUN apk update && apk upgrade && apk add --no-cache make

WORKDIR /app
COPY . .

RUN make vendor
RUN make build

FROM alpine
RUN apk update && apk upgrade

COPY --from=gobuilder /app/iot_api  /iot_api

# ENV HOST="db_server" 
# ENV DBPORT="5432"
# ENV DBUSER="postgres"
# ENV DBNAME="iot"
# ENV DBPASSWORD="postgres"
# ENV EMAIL_ADDR=""
# ENV EMAIL_PSWD=""
# ENV EMAIL_HOST="smtp.gmail.com"
# ENV EMAIL_PORT="587"

EXPOSE 8080

WORKDIR /
