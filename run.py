from subprocess import call
import os

#Setup
os.system("mkdir scratch");

# conv_3_1
call(["make", "-C" , "./conv_3_1/coresim/"])
os.system("./conv_3_1/coresim/a.out > scratch/coresim_conv_3_1_out.txt");

coresim_result = file("scratch/coresim_conv_3_1_out.txt", "r");

coresim_result_text = coresim_result.read()
coresim_result_lines = coresim_result_text.splitlines()
num_lines = len(coresim_result_lines)

result_lines = coresim_result_lines[num_lines - 3:num_lines - 1]
print 'CoreSIM  : ', result_lines[0]
print 'CoreSIM  : ', result_lines[1]

os.system("make  -C ./conv_3_1/verilator/ > scratch/verilator_conv_3_1_out.txt");

verilator_result = file("scratch/verilator_conv_3_1_out.txt", "r");

verilator_result_text = verilator_result.read()
verilator_result_lines = verilator_result_text.splitlines()
num_lines = len(verilator_result_lines)

result_lines = verilator_result_lines[num_lines - 3:num_lines - 1]
print 'Verilator: ', result_lines[0]
print 'Verilator: ', result_lines[1]

# Harris

# Parallel logic ops stress test
call(["make", "-C" , "./parallel_ops/coresim/"])
os.system("./parallel_ops/coresim/a.out > scratch/coresim_parallel_ops_out.txt");

coresim_result = file("scratch/coresim_parallel_ops_out.txt", "r");

coresim_result_text = coresim_result.read()
coresim_result_lines = coresim_result_text.splitlines()
num_lines = len(coresim_result_lines)

result_lines = coresim_result_lines[num_lines - 3:num_lines - 1]
print 'CoreSIM  : ', result_lines[0]
print 'CoreSIM  : ', result_lines[1]

os.system("make  -C ./parallel_ops/verilator/ > scratch/verilator_parallel_ops_out.txt");

verilator_result = file("scratch/verilator_parallel_ops_out.txt", "r");

verilator_result_text = verilator_result.read()
verilator_result_lines = verilator_result_text.splitlines()
num_lines = len(verilator_result_lines)

result_lines = verilator_result_lines[num_lines - 3:num_lines - 1]
print 'Verilator: ', result_lines[0]
print 'Verilator: ', result_lines[1]
