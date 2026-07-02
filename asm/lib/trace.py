import json
import os
import time

from lib.report import STATS_DIR

TRACE_DIR = os.path.join(STATS_DIR, 'detailed')


class TraceWriter:
    def __init__(self, project, binary):
        os.makedirs(TRACE_DIR, exist_ok=True)
        self.path = os.path.join(TRACE_DIR, f'{project}_{binary}.jsonl')
        self.f = open(self.path, 'w')
        self._start = time.perf_counter()

    def event(self, phase, event_type, *, iteration=None, addr=None, **kwargs):
        rec = {
            'ts': round(time.perf_counter() - self._start, 6),
            'phase': phase,
            'event': event_type,
        }
        if iteration is not None:
            rec['iter'] = iteration
        if addr is not None:
            rec['addr'] = addr
        rec.update(kwargs)
        self.f.write(json.dumps(rec, default=str) + '\n')

    def close(self):
        self.f.close()
