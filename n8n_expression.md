# n8n Expression Example

Expression to compute weighted score in a Set node:

```n8n
{{ 0.6 * $json.budget_norm + 0.4 * ($json.source === 'referral' ? 1 : 0) }}
```
