from main import main


def test_pass():
    assert 1 + 1 == 2  # This test will pass


# def test_fail():
#     assert 1 + 1 == 3  # This test will fail


def test_sample():
    assert main() == 2
