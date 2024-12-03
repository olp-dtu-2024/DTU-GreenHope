# Changelog

All notable changes to this project will be documented in this file.

## [1.0.2] - 2024-03-20

### Fixed
- Plugin registration error from npm registry

## [1.0.1] - 2024-03-20

### Fixed
- Installation hook for plugin initialization
- Plugin registration sequence during install phase
- ACL permissions setup during installation

## [1.0.0] - 2024-03-15

### Added
- Initial Kafka core implementation
- Producer functionality for message publishing
- Consumer implementation for message handling
- Basic topic management
- Database collections for Kafka topics and configs
- Default configuration templates
- ACL permissions framework
- Plugin lifecycle hooks (enable/disable/cleanup)
