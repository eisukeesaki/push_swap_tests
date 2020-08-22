![pstest_screenshot](https://i.imgur.com/VaCHzo9.png)

# What is this?

This shell script is a simple program to test your `push_swap`.

Its main purpose is to test if:

- `push_swap` successfully sorts the input
- the number of instructions `push_swap` generate meets the project requirements, and check how many points you will earn

It is not made to debug crashes, memory leaks, and other fatal issues.

# Dependency

This test script depends on a perfectly functioning `checker` executable.

# Set the following two variables

```bash
# executable paths
CKR_PATH=~/path/to/your/checker/executable;
PS_PATH=~/path/to/your/push_swap/executable;
```

# Select which test to run

```bash
# select test
TEST_2_ELM=0;
TEST_3_ELM=1;
TEST_4_ELM=0;
TEST_5_ELM=1;
TEST_100_ELM=1;
TEST_500_ELM=1;
```

Set `1` to run the selected test, `0` to skip it.

# Choose how many times each test should run

```bash
# number of tests to run
TEST_CT_2=100;
TEST_CT_3=100;
TEST_CT_4=100;
TEST_CT_5=100;
TEST_CT_100=100;
TEST_CT_500=50;
```

For example, if you want to run the 500 elements test 50 times, this is how the variable assignation should look like.

```bash
TEST_CT_500=50;
```

The script will generate a different random sets of arguments every time.

# Run the shell script

```bash
sh pstest.sh
```

# About the coloring of `[PASS]`

For the 100 and 500 elements tests, the color of the text `[PASS]` that's printed in the terminal will change depending on the amount of points you earned for each test.

- 5 points : Green
- 2 to 4 points : Blue
- 1 point : Yellow
