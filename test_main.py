""" test codes for hw1 """
from main import main


def test_pass():
    """example test codes, this one will always pass
    """
    assert 1 + 1 == 2  # This test will pass


# def test_fail():
#     assert 1 + 1 == 3  # This test will fail


def test_main():  # This tests will also pass, HW2
    """test codes, judge if the return value of main would be 2
    """
    assert main() == 2
