"""``compiler_flags``: how each vendored source tree is compiled."""

from .errors import SidecarError


def _validate_compiler_flags(block):
    if block is None:
        return

    def flag_list(value):
        return isinstance(value, list) and all(isinstance(f, str) for f in value)

    prefixes = block.get('prefixes', {}) if isinstance(block, dict) else None
    if (not isinstance(block, dict) or not flag_list(block.get('default', []))
            or not flag_list(block.get('asm', []))
            or not isinstance(prefixes, dict)
            or not all(isinstance(k, str) and flag_list(v)
                       for k, v in prefixes.items())):
        raise SidecarError('"compiler_flags" must be an object with "default" '
                           'and "asm" lists and a "prefixes" map of lists')


def matching_prefix(project, label):
    """The ``compiler_flags`` prefix that sets *label*'s flags, or None."""
    from .loader import load

    block = (load(project) or {}).get('compiler_flags') or {}
    for prefix in sorted(block.get('prefixes', {}), key=len, reverse=True):
        if label.startswith(prefix):
            return prefix
    return None


def compiler_flags(project, label):
    """Flags for *label* from the sidecar's ``compiler_flags``, or ``None``.

    The longest matching name prefix wins; no match uses ``default``.
    """
    from .loader import load

    block = (load(project) or {}).get('compiler_flags')
    if not block:
        return None
    prefixes = block.get('prefixes', {})
    for prefix in sorted(prefixes, key=len, reverse=True):
        if label.startswith(prefix):
            return list(prefixes[prefix])
    default = block.get('default')
    return list(default) if default is not None else None


def asm_flags(project):
    """The ``as`` flags from the sidecar's ``compiler_flags.asm``.

    They build every assembly module: a vendor ``.asm`` and a C file made of
    one ``#asm`` block alike (:func:`lib.aztec.compile.asm_source`).
    """
    from .loader import load

    block = (load(project) or {}).get('compiler_flags') or {}
    if block.get('asm') is None:
        raise SidecarError(f'{project}: "compiler_flags" has no "asm" list '
                           'for assembling #asm modules')
    return tuple(block['asm'])
