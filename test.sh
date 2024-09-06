#!/bin/bash

# Function to run a test case
run_test_case() {
  local student_file="$1"
  local input="$2"
  local expected_output="$3"
  local case_name="$4"

  # Run the student code
  student_output=$(python3 "$student_file" <<< "$input")

  # Run the author code for comparison
  author_output=$(python3 /c/Users/Asus/OneDrive/Escritorio/test_assignment_full/sandbox/author.py <<< "$input")

  # Compare the outputs
  if [ "$student_output" == "$expected_output" ]; then
    echo "Test case '$case_name': Passed"
  else
    echo "Test case '$case_name': Failed (Expected '$expected_output', got '$student_output')"
  fi
}

# List of student files to test
student_files=(
  "/c/Users/Asus/OneDrive/Escritorio/test_assignment_full/sandbox/student_101.py"
  "/c/Users/Asus/OneDrive/Escritorio/test_assignment_full/sandbox/student_102.py"
  "/c/Users/Asus/OneDrive/Escritorio/test_assignment_full/sandbox/student_103.py"
  "/c/Users/Asus/OneDrive/Escritorio/test_assignment_full/sandbox/student_104.py"
)

# Loop through each student file and run the tests
for student_file in "${student_files[@]}"; do
  echo "Running tests for $(basename "$student_file")"

  # Test case 1: Even number of elements
  run_test_case "$student_file" "[3, 6, 5, 7, 9, 1]" "Median: 5.50" "even"

  # Test case 2: Odd number of elements
  run_test_case "$student_file" "[3, 6, 5, 7, 9]" "Median: 6.00" "odd"

  # Test case 3: Single element
  run_test_case "$student_file" "[1]" "Median: 1.00" "single"

  # Test case 4: Empty list
  run_test_case "$student_file" "[]" "Median: None" "empty"

  echo "---------------------------------------------"
done
