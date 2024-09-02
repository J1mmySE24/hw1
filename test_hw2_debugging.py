"""
Unit Test for hw2_debugging.py
"""

from hw2_debugging import merge_sort


def test1():
    """Test the method if it can handle empty list correctly"""
    arr = []
    assert merge_sort(arr) == []


def test2():
    """Test the method if it can handle one element list correctly"""
    arr = [1]
    assert merge_sort(arr) == [1]


def test3():
    """Test the method if it can handle all same values correctly"""
    arr = [1, 1, 1, 1]
    assert merge_sort(arr) == [1, 1, 1, 1]


def test4():
    """Test the method if it can handle reverse sorted values correctly"""
    arr = [5, 4, 3, 2, 1]
    assert merge_sort(arr) == [1, 2, 3, 4, 5]
