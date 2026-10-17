"""Shared constants for the sidecar package."""

import os
import re


ASM_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
SIDECAR_DIR = os.path.join(ASM_DIR, 'sidecar')
_BINARY_TYPES = {'mz', 'aztec_overlay', 'raw_drv'}
_SEGMENT_NAMES = {'es', 'ds', 'cs', 'ss', 'fs', 'gs'}
_IDENTIFIER = re.compile(r'^[A-Za-z_@.$?][A-Za-z0-9_@.$?]*$')
