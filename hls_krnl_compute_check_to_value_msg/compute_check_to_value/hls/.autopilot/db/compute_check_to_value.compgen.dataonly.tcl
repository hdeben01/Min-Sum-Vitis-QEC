# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
L { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
syndrome { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
size_checks { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
size_vnode { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


