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
    

def print_diff(app_name):
    print 'Difference between ' + app_name + ' outputs:'
    os.system("cat scratch/" + app_name + "_diff.txt")
    print 'End of diff.'

def run_coresim(app_name):
    os.system("cd ./check_" + app_name + "/coresim; ~/CppWorkspace/coreir/bin/simulator -i ../cascade.json > scratch.txt; cd ../..")

    os.system("cd ./check_" + app_name + "/coresim/; make -j; ./a.out")

def run_verilator(app_name):
    ### Create verilog
    os.system("cd ./check_" + app_name + "/; coreir -i ./" + app_name + ".json -o ./verilator/" + app_name + ".v --load_libs ~/CppWorkspace/coreir/lib/libcoreir-commonlib.dylib > scratch.txt")

    os.system("cd ./check_cascade/verilator/; make -j")
    
#Setup
os.system("mkdir scratch");

# -------------------- Correctness testing cascade

os.system("cp ~/CppWorkspace/CGRAMapper/examples/cascade.json ./check_cascade/tmp_cascade.json > scratch.txt")
os.system("cd ./check_cascade/; coreir -i tmp_cascade.json --load_libs ~/CppWorkspace/coreir/lib/libcoreir-commonlib.dylib  -p rungenerators,flattentypes,flatten,registerinputs,wireclocks-coreir -o cascade.json > scratch.txt")

run_coresim("cascade")

## run verilator
run_verilator("cascade")

## Compare outputs
os.system("diff ./check_cascade/verilator/verilator_cascade_output.txt ./check_cascade/coresim/coresim_cascade_output.txt > scratch/cascade_diff.txt")

print_diff('cascade')

# ------------------- Correctness testing conv_3_1

## run coresim
os.system("cp ~/CppWorkspace/CGRAMapper/examples/conv_3_1.json ./check_conv_3_1/tmp_conv_3_1.json > scratch.txt");
os.system("cd ./check_conv_3_1/; coreir -i tmp_conv_3_1.json --load_libs ~/CppWorkspace/coreir/lib/libcoreir-commonlib.dylib  -p rungenerators,flattentypes,flatten,registerinputs,wireclocks-coreir -o conv_3_1.json > scratch.txt");

run_coresim("conv_3_1")

## run verilator

### Create verilog
os.system("cd ./check_conv_3_1/; coreir -i ./conv_3_1.json -o ./verilator_ex/conv_3_1.v --load_libs ~/CppWorkspace/coreir/lib/libcoreir-commonlib.dylib > scratch.txt");

### Compile and run
os.system("cd ./check_conv_3_1/verilator_ex/; make -j")

## Compare outputs
os.system("diff ./check_conv_3_1/verilator_ex/verilator_conv_output.txt ./check_conv_3_1/coresim/coresim_conv_output.txt > scratch/conv_3_1_diff.txt")

print_diff('conv_3_1')

# ------------------ Correctness testing harris

os.system("cp ~/CppWorkspace/CGRAMapper/examples/_harris.json ./check_harris/tmp_harris.json");
os.system("cd ./check_harris/; coreir -i tmp_harris.json --load_libs ~/CppWorkspace/coreir/lib/libcoreir-commonlib.dylib  -p rungenerators,flattentypes,flatten,registerinputs,wireclocks-coreir -o harris.json > scratch.txt");

run_coresim("harris")

## run verilator
run_verilator("harris")

# ### Create verilog
# os.system("cd ./check_harris/; coreir -i ./harris.json -o ./verilator/harris.v --load_libs ~/CppWorkspace/coreir/lib/libcoreir-commonlib.dylib > scratch.txt");

# os.system("cd ./check_harris/verilator/; make -j")

## Compare outputs
os.system("diff ./check_harris/verilator/verilator_harris_output.txt ./check_harris/coresim/coresim_harris_output.txt > scratch/harris_diff.txt")

print_diff('harris')

# conv_3_1
benchmark_application("conv_3_1")

# Harris
benchmark_application("harris")

# Parallel logic ops stress test
benchmark_application("parallel_ops")
