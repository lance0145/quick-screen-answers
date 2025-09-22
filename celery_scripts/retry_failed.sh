#!/bin/bash
# Re-run failed Celery tasks named draft_email from the last hour
celery -A proj events --dump | grep draft_email | grep FAILED | awk '{print $5}' | xargs -n1 celery -A proj retry
