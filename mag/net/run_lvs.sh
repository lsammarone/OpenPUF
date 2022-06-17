# netgen option to exclude fill and tap from source
export MAGIC_EXT_USE_GDS=1
netgen -batch lvs "./user_analog_project_wrapper.spice user_analog_project_wrapper" "./lvs.spice user_analog_project_wrapper"  ./netgen_setup.tcl ./lvs_results.log
