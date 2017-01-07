import string


def is_pangram(s):
    s = s.lower()
    for x in string.lowercase:
        if x not in s:
            return False
    return True
