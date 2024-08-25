def main():
    a = [1, 2, 3]
    for i in range(len(a)):
        a[i] += 1  # add each element by 1
    print(a[3])  # error will happen here as the index out of range
    return a[0]


main()
