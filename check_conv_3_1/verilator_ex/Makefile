all:
	verilator -O3 -x-assign fast -noassert -Wall -Wno-DECLFILENAME -Wno-lint --cc conv_3_1.v --exe sim_DesignTop_main.cpp --top-module DesignTop -CFLAGS -O3 -CFLAGS -march=native
	make OPT_FAST="-O3" -C obj_dir -j -f VDesignTop_custom.mk VDesignTop
	./obj_dir/VDesignTop
