# netgen option to exclude fill and tap from source
export MAGIC_EXT_USE_GDS=1
netgen -batch lvs "./user_analog_project_wrapper.spice user_analog_project_wrapper" "./lvs.spice user_analog_project_wrapper"  /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/netgen/sky130A_setup.tcl ./lvs_results.log
