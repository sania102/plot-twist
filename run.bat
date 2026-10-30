@echo off
REM Windows one-click start. Fill in the two keys below first.
set QLOO_API_KEY=paste_qloo_key_here
set LLM_API_KEY=paste_groq_key_here
if not exist venv python -m venv venv
call venv\Scripts\activate
pip install -q -r backend\requirements.txt
start http://localhost:8000
uvicorn backend.main:app
