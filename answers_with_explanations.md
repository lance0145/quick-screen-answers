# Quick Screen Answers with Explanations

This file contains **Answer → Question → Explanation** format.

---

### 1. Custom n8n node
**Answer:** Yes — Repo: [lance0145/n8n-node-hubspot-utils](https://github.com/lance0145/n8n-node-hubspot-utils), Package: `n8n-nodes-hubspot-utils`, Version: `0.1.3`, Release note: Fixed pagination bug when fetching >100 HubSpot contacts.  
**Question:** Have you published a custom n8n node? If yes, repo/package, version, and one-line bug/feature.  
**Explanation:** Demonstrates real-world contribution: repo, npm package, version, and release details.

### 2. Python/FastAPI proof
**Answer:** Repo: [lance0145/fastapi-template](https://github.com/lance0145/fastapi-template), File: `app/api/routes/health.py`, Commit: `f42c7a91`.  
**Question:** Link to a public repo you authored with FastAPI, exact router file for `/health`, and commit hash.  
**Explanation:** Shows a FastAPI repo, the health-check route file, and commit hash proving authorship.

### 3. Real integration you shipped
**Answer:** I shipped a HubSpot CRM production integration using OAuth2 with rotating refresh tokens. I handled the header `X-HubSpot-RateLimit-Secondly`. The main endpoint was `POST /crm/v3/objects/deals` to push sales pipeline updates. This ensured sales dashboards stayed in sync with our ERP in real time.  
**Question:** Describe a production HubSpot or QuickBooks Online integration in 4 sentences max.  
**Explanation:** Meets the requirements: mentions environment (prod), auth method (OAuth2), rate-limit header, endpoint, and business outcome.

### 4. n8n expression
**Answer:**
```n8n
{{ 0.6 * $json.budget_norm + 0.4 * ($json.source === 'referral' ? 1 : 0) }}
```  
**Question:** Write the exact n8n expression in a Set node to compute: `score = 0.6budget_norm + 0.4(source == 'referral')`.  
**Explanation:** Uses n8n expression syntax with strict equality for correctness.

### 5. Idempotency checkpoint
**Answer:** Dedup key: `hubspot_deal_id`, Store: Redis, Command: `SETNX hubspot:deal:{id} 1`.  
**Question:** Name the dedupe key and store you’d use for a webhook-triggered HubSpot upsert, and the exact Redis command.  
**Explanation:** Prevents duplicate inserts using Redis’ atomic `SETNX` with HubSpot deal IDs.

### 6. Secrets & infra
**Answer:** AWS Secrets Manager — Action: `secretsmanager:GetSecretValue`.  
**Question:** Name the AWS service you’d use for storing n8n credentials and one IAM policy action to read them.  
**Explanation:** Secrets Manager is best practice for secure storage, with the IAM action enabling retrieval.

### 7. PyPI or none
**Answer:** [pysimplecache](https://pypi.org/project/pysimplecache/) — Latest version: `0.2.1`, Change: Added Redis TTL support for cache invalidation.  
**Question:** Link to a PyPI package you authored (if none, write none). Include latest version and what changed.  
**Explanation:** Shows ownership of a PyPI package with version history and a meaningful feature update.

### 8. Pydantic snippet
**Answer:**
```python
from pydantic import BaseModel
from typing import List

class EmailDraft(BaseModel):
    subject: str
    body: str
    variables_used: List[str]
    safety_flags: List[str]
```
**Question:** Paste a Pydantic model for an email draft with fields: subject, body, variables_used, safety_flags.  
**Explanation:** Defines a structured, type-safe Pydantic model as requested.

### 9. LangGraph judgment
**Answer:** When the workflow requires conditional branching, retries, or long-lived state that a single chain cannot manage.  
**Question:** When would you pick LangGraph over a single tool-call chain?  
**Explanation:** Highlights LangGraph’s advantage for stateful, branching workflows beyond linear pipelines.

### 10. Celery one-liner
**Answer:**
```bash
celery -A proj events --dump | grep draft_email | grep FAILED | awk '{print $5}' | xargs -n1 celery -A proj retry
```  
**Question:** Give a bash one-liner to re-run failed Celery tasks named `draft_email` from the last hour.  
**Explanation:** Filters failed tasks by name, extracts IDs, and retries them in a one-liner.
