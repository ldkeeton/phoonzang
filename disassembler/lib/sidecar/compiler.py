"""``compiler_flags``: how each vendored source tree is compiled."""

from .errors import SidecarError


def _validate_compiler_flags(block, where='"compiler_flags"', asm=True):
    """Check a ``compiler_flags`` block: the project's, or (``asm=False``) a
    binary's override, which has no ``asm`` list of its own."""
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
        raise SidecarError(f'{where} must be an object with "default" '
                           'and "asm" lists and a "prefixes" map of lists')
    if not asm and 'asm' in block:
        raise SidecarError(f'{where}: "asm" is project-wide; a binary '
                           'overrides only "default" and "prefixes"')


def _blocks(project, binary):
    """``(project block, binary block)`` of ``compiler_flags``, each a dict."""
    from .loader import load

    data = load(project) or {}
    own = ((data.get('binaries') or {}).get(binary) or {}) if binary else {}
    return data.get('compiler_flags') or {}, own.get('compiler_flags') or {}


def _prefixes(project, binary):
    """The name prefixes in force for *binary*: its own over the project's."""
    block, own = _blocks(project, binary)
    return {**block.get('prefixes', {}), **own.get('prefixes', {})}


def matching_prefix(project, label, binary=None):
    """The ``compiler_flags`` prefix that sets *label*'s flags, or None."""
    for prefix in sorted(_prefixes(project, binary), key=len, reverse=True):
        if label.startswith(prefix):
            return prefix
    return None


def compiler_flags(project, label, binary=None):
    """Flags for *label* in *binary* from the sidecar's ``compiler_flags``,
    or ``None``.

    A binary may carry its own ``compiler_flags`` (``default`` and/or
    ``prefixes``) over the project's: the longest name prefix of either
    wins (the binary's on a tie), else the binary's ``default``, else the
    project's.
    """
    block, own = _blocks(project, binary)
    if not block and not own:
        return None
    prefix = matching_prefix(project, label, binary)
    if prefix is not None:
        return list(_prefixes(project, binary)[prefix])
    default = own.get('default', block.get('default'))
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
