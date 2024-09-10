"""example codes for homework 1"""
def main():
    """example codes for hw1

    Returns:
        list: list of ints
    """
    a = [1, 2, 3]
    for i,_ in enumerate(a):
        a[i] += 1  # add each element by 1
    # print(a[3])  # error will happen here as the index out of range
    return a[0]


main()
