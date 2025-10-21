.PHONY: help build test clean gazelle update-repos format lint

# Default target
help:
	@echo "Available targets:"
	@echo "  make build        - Build all targets"
	@echo "  make test         - Run all tests"
	@echo "  make gazelle      - Run gazelle to update BUILD files"
	@echo "  make update-repos - Update go dependencies"
	@echo "  make format       - Format bazel files"
	@echo "  make lint         - Lint bazel files"
	@echo "  make clean        - Clean bazel artifacts"
	@echo "  make sync         - Sync go.mod dependencies"

# Build all targets
build:
	bazelisk build //...

# Run all tests
test:
	bazelisk test //...

# Run gazelle to generate/update BUILD files
gazelle:
	bazelisk run //:gazelle

# Update gazelle to also update go repositories
update-repos:
	bazelisk run //:gazelle -- update-repos -from_file=go.mod

# Format all bazel files
format:
	bazelisk run @buildifier_prebuilt//:buildifier -- -r .

# Lint all bazel files
lint:
	bazelisk run @buildifier_prebuilt//:buildifier -- -r -lint=warn .

# Clean bazel artifacts
clean:
	bazelisk clean
	rm -rf .bazel/

# Sync go.mod dependencies
sync:
	go mod tidy
	bazelisk run //:gazelle -- update-repos -from_file=go.mod
