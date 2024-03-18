build:
	@echo "Compiling protobuf"
	protoc -I . -I google/api --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative */*/*.proto
	@echo "Done!"

products:
	@echo "Compiling products protobuf"
	protoc -I . -I google/api --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative products/*/*.proto
	@echo "Done!"