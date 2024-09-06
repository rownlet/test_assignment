$ bash ../test.sh
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
Traceback (most recent call last):
  File "C:\Users\Asus\OneDrive\Escritorio\test_assignment_full\sandbox\student_102.py", line 20, in <module>
    median = calculate_median(numbers)
             ^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\Users\Asus\OneDrive\Escritorio\test_assignment_full\sandbox\student_102.py", line 12, in calculate_median
    return round((sorted_numbers[mid1] + sorted_numbers[mid2]) / 2, 2)
                  ~~~~~~~~~~~~~~^^^^^^
IndexError: list index out of range
Test case 'empty': Failed (Expected 'Median: None', got '')
---------------------------------------------
Running tests for student_103.py
Test case 'even': Failed (Expected 'Median: 5.50', got 'Median: 4.50')
Test case 'odd': Passed
Test case 'single': Passed
Test case 'empty': Passed
---------------------------------------------
Running tests for student_104.py
Test case 'even': Passed
Test case 'odd': Passed
Test case 'single': Passed
Test case 'empty': Passed
---------------------------------------------