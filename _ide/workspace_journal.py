# 2025-08-10T20:36:13.886701
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisWorkspace")

comp = client.get_component(name="krnl_row_operations")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

