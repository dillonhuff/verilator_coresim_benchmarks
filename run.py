from subprocess import call
import os

# Utility functions
def benchmark_application(app_name):
    os.system("cd ./" + app_name + "/coresim; ~/CppWorkspace/coreir/bin/simulator -i /Users/dillon/CppWorkspace/verilator_coresim_benchmarks/" + app_name + "/coresim/" + app_name + ".json; cd ../..");

    call(["make", "-C" , "./" + app_name + "/coresim/"])
    os.system("./" + app_name + "/coresim/a.out > scratch/coresim_" + app_name + "_out.txt");

    coresim_result = file("scratch/coresim_" + app_name + "_out.txt", "r");

    coresim_result_text = coresim_result.read()
    coresim_result_lines = coresim_result_text.splitlines()
    num_lines = len(coresim_result_lines)

    coresim_result_lines = coresim_result_lines[num_lines - 3:num_lines - 1]

    os.system("make  -C ./" + app_name + "/verilator/ > scratch/verilator_" + app_name + "_out.txt");

    verilator_result = file("scratch/verilator_" + app_name + "_out.txt", "r");

    verilator_result_text = verilator_result.read()
    verilator_result_lines = verilator_result_text.splitlines()
    num_lines = len(verilator_result_lines)

    result_lines = verilator_result_lines[num_lines - 3:num_lines - 1]

    print '=============== ' + app_name + ' timing ===================='
    print 'CoreSIM  : ', coresim_result_lines[0]
    print 'Verilator: ', result_lines[0]
    print 'CoreSIM  : ', coresim_result_lines[1]
    print 'Verilator: ', result_lines[1]
    

#Setup
os.system("mkdir scratch");

# Correctness testing conv_3_1

## run coresim
os.system("cd ./check_conv_3_1/coresim; ~/CppWorkspace/coreir/bin/simulator -i ../conv_3_1.json; cd ../..");

os.system("cd ./check_conv_3_1/coresim/; make -j; ./a.out")

## run verilator
os.system("cd ./check_conv_3_1/verilator_ex/; make -j")

## Compare outputs
os.system("diff ./check_conv_3_1/verilator_ex/verilator_conv_output.txt ./check_conv_3_1/coresim/coresim_conv_output.txt > scratch/conv_3_1_diff.txt")

os.system("cat scratch/conv_3_1_diff.txt")

# Correctness testing harris
os.system("cd ./check_harris/coresim; ~/CppWorkspace/coreir/bin/simulator -i ../harris.json; cd ../..");

os.system("cd ./check_harris/coresim/; make -j; ./a.out")

## run verilator
os.system("cd ./check_harris/verilator_ex/; make -j")

## Compare outputs
os.system("diff ./check_harris/verilator_ex/verilator_conv_output.txt ./check_harris/coresim/coresim_conv_output.txt > scratch/harris_diff.txt")

os.system("cat scratch/harris_diff.txt")

# # conv_3_1
# benchmark_application("conv_3_1")

# # Harris
# benchmark_application("harris")

# # Parallel logic ops stress test
# benchmark_application("parallel_ops")
