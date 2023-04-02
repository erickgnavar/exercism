def is_armstrong_number(number):
    acc = 0
    str_number = str(number)
    num_digits = len(str_number)
    for digit in str_number:
        acc += int(digit) ** num_digits
    return acc == number
