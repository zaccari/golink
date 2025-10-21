# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2025-01-XX

### Added

- **Bzlmod support**: Full support for Bazel's new module system (bzlmod)
- `MODULE.bazel` file defining the golink module and dependencies
- `.bazelrc` configuration for Bazel 8.4.2+ optimizations
- `.bazelversion` file pinning to Bazel 8.4.2
- `Makefile` with common development commands
- `CHANGELOG.md` to track version history
- `go.mod` and `go.sum` for Go dependency management

### Changed

- **Breaking**: Upgraded to Bazel 8.4.2 (from ancient Bazel 1.x era)
- **Breaking**: Updated repository references from `github.com/nikunjy/golink` to `github.com/zaccari/golink`
- **Breaking**: Updated canonical repository names:
  - `@io_bazel_rules_go` → `@rules_go`
  - `@bazel_gazelle` → `@gazelle`
  - Target `@golink//gazelle/go_link:go_default_library` → `@golink//gazelle/go_link`
- Updated dependencies:
  - `rules_go` to v0.52.0
  - `gazelle` to v0.41.0
  - `protobuf` to v29.2
  - Added `bazel_skylib` v1.7.1
- Improved README with comprehensive bzlmod installation instructions
- Updated LICENSE to include fork maintainer copyright
- Enhanced `.gitignore` for new Bazel output structure

### Deprecated

- Legacy WORKSPACE-based installation (still supported but not recommended)

### Fixed

- Compatibility with Bazel 8.4.2
- Updated target name conventions for modern Bazel

### Migration Guide

To migrate from v1.x to v2.0.0:

1. **Add bzlmod support** (if not already using it):
   - Create a `MODULE.bazel` file in your project root
   - Add `bazel_dep(name = "golink", version = "2.0.0")` or use `git_override` for the latest

2. **Update target references**:
   ```diff
   - languages = DEFAULT_LANGUAGES + ["@golink//gazelle/go_link:go_default_library"]
   + languages = DEFAULT_LANGUAGES + ["@golink//gazelle/go_link"]
   ```

3. **Update repository URLs** (if pinning to a specific version):
   ```diff
   - urls = ["https://github.com/nikunjy/golink/archive/v1.0.0.tar.gz"]
   + urls = ["https://github.com/zaccari/golink/archive/v2.0.0.tar.gz"]
   ```

4. **Upgrade Bazel**: Ensure you're using Bazel 8.4.2+ (recommended to use Bazelisk)

## [1.0.0] - 2020-XX-XX

Initial release by Nikunj Yadav.

### Added

- Core `golink` rule for copying Bazel-generated files to workspace
- `go_proto_link` rule for proto-specific file linking
- Gazelle plugin for automatic `go_proto_link` target generation
- Support for `go_proto_library` output group extraction
- Basic documentation and examples

[2.0.0]: https://github.com/zaccari/golink/compare/v1.0.0...v2.0.0
[1.0.0]: https://github.com/nikunjy/golink/releases/tag/v1.0.0
