cif istyle sky130(vendor)
#gds flatten true
gds read ./net/user_analog_project_wrapper.gds
select top cell
extract no all
extract do local
#extract unique
extract
ext2spice lvs
ext2spice -o net/lvs.spice
exit
