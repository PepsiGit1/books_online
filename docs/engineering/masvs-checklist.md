# MASVS / MASWE Traceability Checklist

Project: books_online
CI mode: advisory-only
Security profile: maximum
MASVS profile: CONTROL-GROUP DRIVEN (no legacy level wording)
Control groups: STORAGE, CRYPTO, AUTH, NETWORK, PLATFORM, CODE, PRIVACY
MASWE mapping style: weakness-oriented, category-level

This checklist is generated from selected blueprint features.
Mark each item during implementation and verification.

| MASVS Control Group | MASWE-Oriented Mapping | Trigger | Control Objective | Status | Evidence |
| --- | --- | --- | --- | --- | --- |
| PRIVACY | Sensitive data exposure in logs/crash payloads | always | No secrets, tokens, or PII are logged in app, CI, or crash payloads. | [ ] | |
| CODE | Missing verification gates and unsafe code quality drift | always | Static analysis and tests are mandatory for behavior-changing PRs. | [ ] | |
| CRYPTO | Weak secret/configuration handling | include_env=true | Secrets/configuration are injected securely via environment strategy. | [ ] | |
| NETWORK | Insecure transport and TLS misconfiguration | include_api=true | HTTP transport enforces TLS and rejects insecure overrides in production. | [ ] | |
| NETWORK | Unvalidated API envelopes and unsafe parsing | include_api=true | Request/response envelopes are validated and mapped through typed DTOs. | [ ] | |

## Verification Notes

- Keep evidence linked to MASVS control groups and MASWE weakness categories.
- Map test evidence to each checked item before release.
- For mixed/blocking CI modes, unresolved items must include mitigation notes in PR.
- Review checklist whenever feature set changes in blueprint configuration.

