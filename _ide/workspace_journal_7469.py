# 2025-08-01T19:39:35.795945
import vitis

client = vitis.create_client()
client.set_workspace(path="VitisWorkspace")

comp = client.create_hls_component(name = "hls_krnl_compute_check_to_value_msg",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hls_krnl_compute_check_to_value_msg")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

vitis.dispose()

