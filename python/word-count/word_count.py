from collections import defaultdict
import string


def word_count(phrase):
    res = defaultdict(int)

    for c in string.punctuation:
        phrase = phrase.replace(c, ' ')

    for word in phrase.lower().split():
        res[word] += 1
    return res
