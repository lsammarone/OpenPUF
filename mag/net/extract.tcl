# cif istyle sky130(vendor)
# select top cell
# extract no all
# extract do local
# #ext2sim labels off
# #ext2sim
# extract unique 
# extract
# ext2spice lvs
# ext2spice -o net/lvs.spice



cif istyle sky130(vendor)
select top cell
extract no all
extract do local
#ext2sim labels off
#ext2sim
# extract unique 
extract
ext2spice lvs
ext2spice -o net/lvs.spice

