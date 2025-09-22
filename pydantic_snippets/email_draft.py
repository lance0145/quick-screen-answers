from pydantic import BaseModel
from typing import List

class EmailDraft(BaseModel):
    subject: str
    body: str
    variables_used: List[str]
    safety_flags: List[str]
