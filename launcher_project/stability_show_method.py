"""Compact read-only smali method view for manual review."""
import sys
sys.stdout.reconfigure(encoding='utf-8')
from pathlib import Path
from stability_local_audit_20260905 import methods
for sig,(body,line) in methods(Path(sys.argv[1])).items():
    if any(term in sig for term in sys.argv[2:]):
        print('METHOD',sig,'LINE',line)
        print('\n'.join(s for s in body.splitlines() if s.strip() and not s.strip().startswith(('.line','#'))))
