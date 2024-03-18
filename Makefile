# Makefile
protoc-all:
	@echo "Compiling protobuf"
	protoc -I . -I google/api --go_out=. --go_opt=paths=source_relative \
	--go-grpc_out=. --go-grpc_opt=paths=source_relative */*/*.proto
	@echo "Done!"

protoc:
	cd products && protoc --go_out=../protogen/golang --go_opt=paths=source_relative \
	./**/*.proto