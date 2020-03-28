package require cmdline

set options { \
    { "project.arg" "" "Project name" } \
    { "family.arg" "" "Device family name" } \
    { "device.arg" "" "Device name" } \
    { "top.arg" "" "Top level module" } \
    { "sdc.arg" "" "Timing Design Constraints file" } \
    { "src.arg" "" "Verilog source file" } \
}

array set opts [::cmdline::getoptions quartus(args) $options]

project_new $opts(project) -overwrite

set_global_assignment -name FAMILY $opts(family)
set_global_assignment -name DEVICE $opts(device)
set_global_assignment -name TOP_LEVEL_ENTITY $opts(top)

set_global_assignment -name SEARCH_PATH  ../

set_global_assignment -name VERILOG_FILE ../VX_define.v

set_global_assignment -name VERILOG_FILE ../byte_enabled_simple_dual_port_ram.v

set_global_assignment -name VERILOG_FILE ../interfaces/VX_branch_response_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_csr_write_request_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_dcache_request_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_dcache_response_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_forward_csr_response_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_forward_exe_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_forward_mem_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_forward_reqeust_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_forward_response_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_forward_wb_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_frE_to_bckE_req_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_gpr_clone_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_gpr_jal_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_gpr_read_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_gpr_wspawn_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_icache_request_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_icache_response_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_inst_mem_wb_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_inst_meta_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_jal_response_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_mem_req_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_mw_wb_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_warp_ctl_inter.v
set_global_assignment -name VERILOG_FILE ../interfaces/VX_wb_inter.v

set_global_assignment -name VERILOG_FILE ../pipe_regs/VX_d_e_reg.v
set_global_assignment -name VERILOG_FILE ../pipe_regs/VX_e_m_reg.v
set_global_assignment -name VERILOG_FILE ../pipe_regs/VX_f_d_reg.v
set_global_assignment -name VERILOG_FILE ../pipe_regs/VX_m_w_reg.v

set_global_assignment -name VERILOG_FILE ../VX_alu.v
set_global_assignment -name VERILOG_FILE ../VX_back_end.v
set_global_assignment -name VERILOG_FILE ../VX_context.v
set_global_assignment -name VERILOG_FILE ../VX_context_slave.v
set_global_assignment -name VERILOG_FILE ../VX_csr_handler.v
set_global_assignment -name VERILOG_FILE ../VX_decode.v
set_global_assignment -name VERILOG_FILE ../VX_define.v
set_global_assignment -name VERILOG_FILE ../VX_execute.v
set_global_assignment -name VERILOG_FILE ../VX_fetch.v
set_global_assignment -name VERILOG_FILE ../VX_forwarding.v
set_global_assignment -name VERILOG_FILE ../VX_front_end.v
set_global_assignment -name VERILOG_FILE ../VX_generic_register.v
set_global_assignment -name VERILOG_FILE ../VX_gpr.v
set_global_assignment -name VERILOG_FILE ../VX_gpr_wrapper.v
set_global_assignment -name VERILOG_FILE ../VX_gpr_syn.v
set_global_assignment -name VERILOG_FILE ../VX_memory.v
set_global_assignment -name VERILOG_FILE ../VX_register_file.v
set_global_assignment -name VERILOG_FILE ../VX_register_file_master_slave.v
set_global_assignment -name VERILOG_FILE ../VX_register_file_slave.v
set_global_assignment -name VERILOG_FILE ../VX_warp.v
set_global_assignment -name VERILOG_FILE ../VX_writeback.v
set_global_assignment -name VERILOG_FILE ../Vortex.v

set_global_assignment -name SDC_FILE vortex.sdc
set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2009
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY bin
set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL

project_close

# set_global_assignment -name VERILOG_FILE $opts(src)

