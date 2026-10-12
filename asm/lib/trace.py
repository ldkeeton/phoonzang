import json
import os
import time

from lib.cachedirs import trace_dir


class TraceWriter:
    def __init__(self, project, binary, watched_addresses=None):
        out = trace_dir(project)
        os.makedirs(out, exist_ok=True)
        self.path = os.path.join(out, f'{project}_{binary}.jsonl')
        self.f = open(self.path, 'w')
        self._start = time.perf_counter()
        self.watched_addresses = set(watched_addresses or ())

    def watches(self, address):
        return address in self.watched_addresses

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
