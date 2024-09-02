"""
This script generate random numbers and assign them to the arr
"""

import subprocess


def random_array(arr):
    """Generates random numbers and assigns them to the provided array.


    Args:
        arr (list): The list to be filled with random numbers

    Returns:
        list: A list filled with random numbers
    """
    shuffled_num = None
    for i, _ in enumerate(arr):
        shuffled_num = subprocess.run(
            ["shuf", "-i1-20", "-n1"], capture_output=True, check=True
        )
        arr[i] = int(shuffled_num.stdout)
    return arr
