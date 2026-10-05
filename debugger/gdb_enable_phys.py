import gdb

class PhysEIP:
    """Enable real-mode address translation on the first target stop."""

    def __init__(self):
        gdb.events.stop.connect(self._on_stop)
        gdb.write("gdb_enable_phys: loaded, waiting for first stop\n")

    def _on_stop(self, event):
        try:
            gdb.execute('maint packet QPhys:1', to_string=True)
            cs = int(gdb.parse_and_eval("$cs")) & 0xFFFF
            gdb.write(f"Phys EIP mode: CS={cs:#06x}\n")
        except Exception as e:
            gdb.write(f"Phys mode setup: {e}\n")
        gdb.events.stop.disconnect(self._on_stop)

PhysEIP()
