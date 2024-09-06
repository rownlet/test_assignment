
# Test Assignment

This project contains multiple student solutions for a coding test, which calculates the median of a list of numbers. The provided `test.sh` script evaluates all the student solutions by comparing them with the correct solution provided by the author.

## Directory Structure

```
test_assignment_full/
│
├── sandbox/
│   ├── author.py           # Author's correct solution
│   ├── student_101.py      # Student 101's solution
│   ├── student_102.py      # Student 102's solution
│   ├── student_103.py      # Student 103's solution
│   ├── student_104.py      # Student 104's solution
│
├── test.sh                 # Shell script for running the tests
└── README.md               # This file
```

## Prerequisites

- **Git Bash** or **WSL (Windows Subsystem for Linux)** to run the `.sh` script on Windows. Alternatively, any Linux or macOS terminal will work.
- **Python 3.x** installed on your system.
- Ensure that Python is added to your system's PATH.

## Running the Tests

1. **Open Terminal or Git Bash**:
   - Navigate to the directory where you downloaded or cloned the `test_assignment` folder.

   Example command:
   ```bash
   cd /c/Users/Asus/Desktop/test_assignment/sandbox
   ```

2. **Run the `test.sh` Script**:
   - The `test.sh` script will loop through all student solutions and test them against the author's solution.

   Run the script:
   ```bash
   bash ../test.sh
   ```

3. **Results**:
   - The script will evaluate each student solution and print the result (Pass/Fail) for each test case.
   - It will also display the expected output vs. the actual output in case of a failure.

Example output:

```
Running tests for student_101.py
Test case 'even': Passed
Test case 'odd': Passed
Test case 'single': Passed
Test case 'empty': Passed
---------------------------------------------
Running tests for student_102.py
Test case 'even': Passed
Test case 'odd': Passed
Test case 'single': Passed
Test case 'empty': Failed (Expected 'Median: None', got 'error message')
---------------------------------------------
```

## Test Cases

The following test cases are run for each student solution:

1. **Even list**: `[3, 6, 5, 7, 9, 1]` → Expected median: `5.50`
2. **Odd list**: `[3, 6, 5, 7, 9]` → Expected median: `6.00`
3. **Single element**: `[1]` → Expected median: `1.00`
4. **Empty list**: `[]` → Expected output: `None`

## Adding New Student Solutions

If you need to add more student solutions, follow these steps:
1. Create a new file in the `sandbox/` directory (e.g., `student_105.py`).
2. Ensure the new solution handles input from `sys.stdin` (you can use the same structure as other student files).
3. Add the new student file to the `student_files` array in `test.sh` to include it in the testing process.

```bash
student_files=(
  "/c/Users/Asus/Desktop/test_assignment/sandbox/student_101.py"
  "/c/Users/Asus/Desktop/test_assignment/sandbox/student_102.py"
  "/c/Users/Asus/Desktop/test_assignment/sandbox/student_103.py"
  "/c/Users/Asus/Desktop/test_assignment/sandbox/student_104.py"
)
```

## Troubleshooting

- **Issue**: Script fails with "Permission denied."
  - **Solution**: Ensure that the `test.sh` file has execution permissions:
    ```bash
    chmod +x ../test.sh
    ```

- **Issue**: Python not found.
  - **Solution**: Ensure that Python is installed and added to your system's PATH.

---

Now, you're ready to test all the student solutions!
