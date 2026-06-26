import gdb

class PhysEIP:
    """Auto-enable physical address mode on first stop.
    Sends QPhys:1 to stub — stub translates all incoming
    addresses (memory, breakpoints) by adding CS*16."""

    def __init__(self):
        gdb.events.stop.connect(self._on_stop)
        gdb.write("gdb_enable_phys: loaded, waiting for first stop\n")

    def _on_stop(self, event):
        try:
            gdb.execute('maint packet QPhys:1', to_string=True)
            cs = int(gdb.parse_and_eval("$cs")) & 0xFFFF
            gdb.write(f"Phys EIP mode: CS={cs:#06x}\n")
            gdb.write("Registers view should populate with i386 architecture.\n")
        except Exception as e:
            gdb.write(f"Phys mode setup: {e}\n")
        gdb.events.stop.disconnect(self._on_stop)

PhysEIP()
