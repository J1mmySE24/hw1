from main import main


def test_pass():
    assert 1 + 1 == 2  # This test will pass


# def test_fail():
#     assert 1 + 1 == 3  # This test will fail


def test_main(): #This tests will also pass, HW2
    assert main() == 2
