# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3] - 2022-04-20

### Changed

This release is a **breaking change** since 0.2, regarding input variables and how the module works:

- we have removed multi-host support
- the host to monitor is a single value variable (from `list` to `string`), and it has been renamed accordingly: `uptime_monitoring_hosts` => `uptime_monitoring_host`
- the google provider needs to be configured at root module level (the gcp_region variable is no longer supported)
