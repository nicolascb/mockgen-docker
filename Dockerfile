ARG GO_VERSION=1.22
ARG ALPINE_VERSION=3.19

FROM golang:${GO_VERSION}-alpine${ALPINE_VERSION}

ARG MOCK_VERSION=v0.4.0

RUN apk update && apk add --no-cache git

RUN go install go.uber.org/mock/mockgen@${MOCK_VERSION}

CMD ["mockgen", "--help"]
