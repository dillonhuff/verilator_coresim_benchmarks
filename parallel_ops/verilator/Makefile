all:
	verilator -O3 -x-assign fast --noassert -Wall -Wno-DECLFILENAME --cc many_ops.v --exe sim_DesignTop_main.cpp --top-module manyOps -CFLAGS -O3 -CFLAGS -march=native
	make OPT_FAST="-O3" -C obj_dir -j -f VmanyOps.mk VmanyOps
	./obj_dir/VmanyOps
