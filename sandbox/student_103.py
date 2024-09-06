import sys
from typing import List

def calculate_median(numbers: List[float]) -> float:
    if not numbers:
        return None
    sorted_numbers = sorted(numbers)
    n = len(sorted_numbers)
    if n % 2 == 1:
        return float(sorted_numbers[n // 2])
    else:
        mid1 = n // 2 - 2  # Wrong index calculation
        mid2 = n // 2
        return round((sorted_numbers[mid1] + sorted_numbers[mid2]) / 2, 2)

input_data = sys.stdin.read().strip()
if input_data == "[]":
    numbers = []
else:
    numbers = [float(x) for x in input_data.strip("[]").split(",") if x.strip()]

median = calculate_median(numbers)
if median is None:
    print("Median: None")
else:
    print(f"Median: {median:.2f}")