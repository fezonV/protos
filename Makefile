.DEFAULT_GOAL := generate

PROTO_FILES := $(wildcard proto/sso/*.proto)

.PHONY: generate gen

generate:
	protoc -I proto $(PROTO_FILES) --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ 
--go-grpc_opt=paths=source_relative

gen: generate