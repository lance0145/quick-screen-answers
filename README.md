# Quick Screen Answers — lance0145

This repo contains my answers to a technical quick screen.

---

### 1. Custom n8n Node
Yes — Repo: [lance0145/n8n-node-hubspot-utils](https://github.com/lance0145/n8n-node-hubspot-utils)  
Package: `n8n-nodes-hubspot-utils`  
Version: `0.1.3`  
Release note: Fixed pagination bug when fetching >100 HubSpot contacts.

### 2. FastAPI Proof
Repo: [lance0145/fastapi-template](./fastapi-template)  
File: `app/api/routes/health.py`  
Commit: `f42c7a91`

### 3. HubSpot Integration
I shipped a HubSpot CRM production integration using OAuth2 with rotating refresh tokens.  
Handled header: `X-HubSpot-RateLimit-Secondly`.  
Main endpoint: `POST /crm/v3/objects/deals`.  
Kept ERP and HubSpot pipeline dashboards in sync.

### 4. n8n Expression
```n8n
{{ 0.6 * $json.budget_norm + 0.4 * ($json.source === 'referral' ? 1 : 0) }}
```

### 5. Idempotency
- Dedup key: `hubspot_deal_id`  
- Store: Redis  
- Command: `SETNX hubspot:deal:{id} 1`

### 6. Secrets & Infra
AWS Secrets Manager — IAM Action: `secretsmanager:GetSecretValue`

### 7. PyPI
[pysimplecache](https://pypi.org/project/pysimplecache/)  
Latest version: `0.2.1` — Added Redis TTL support for cache invalidation.

### 8. Pydantic Snippet
See [pydantic_snippets/email_draft.py](./pydantic_snippets/email_draft.py)

### 9. LangGraph
When the workflow requires conditional branching, retries, or long-lived state that a single chain cannot manage.

### 10. Celery One-Liner
See [celery_scripts/retry_failed.sh](./celery_scripts/retry_failed.sh)
