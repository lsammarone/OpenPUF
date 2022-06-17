cif istyle sky130(vendor)
#gds flatten true
gds read ./user_analog_project_wrapper.gds
select top cell
extract no all
extract do local
extract unique
extract
ext2spice lvs
ext2spice -o user_analog_project_wrapper_noflat.spice
exit
