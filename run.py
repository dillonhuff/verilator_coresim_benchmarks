from subprocess import call
import os

# Utility functions
def benchmark_application(app_name):
    call(["make", "-C" , "./" + app_name + "/coresim/"])
    os.system("./" + app_name + "/coresim/a.out > scratch/coresim_" + app_name + "_out.txt");

    coresim_result = file("scratch/coresim_" + app_name + "_out.txt", "r");

    coresim_result_text = coresim_result.read()
    coresim_result_lines = coresim_result_text.splitlines()
    num_lines = len(coresim_result_lines)

    result_lines = coresim_result_lines[num_lines - 3:num_lines - 1]
    print 'CoreSIM  : ', result_lines[0]
    print 'CoreSIM  : ', result_lines[1]

    os.system("make  -C ./" + app_name + "/verilator/ > scratch/verilator_" + app_name + "_out.txt");

    verilator_result = file("scratch/verilator_" + app_name + "_out.txt", "r");

    verilator_result_text = verilator_result.read()
    verilator_result_lines = verilator_result_text.splitlines()
    num_lines = len(verilator_result_lines)

    result_lines = verilator_result_lines[num_lines - 3:num_lines - 1]
    print 'Verilator: ', result_lines[0]
    print 'Verilator: ', result_lines[1]
    

#Setup
os.system("mkdir scratch");

# conv_3_1
benchmark_application("conv_3_1")

# Harris

# Parallel logic ops stress test
benchmark_application("parallel_ops")
