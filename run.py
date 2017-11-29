from subprocess import call
import os

#Setup
os.system("mkdir scratch");

# conv_3_1
call(["make", "-C" , "./conv_3_1/coresim/"])
os.system("./conv_3_1/coresim/a.out > scratch/coresim_conv_3_1_out.txt");

os.system("make  -C ./conv_3_1/verilator/ > scratch/verilator_conv_3_1_out.txt");

# Harris
