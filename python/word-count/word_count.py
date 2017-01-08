from collections import Counter
import string


def word_count(phrase):
    for c in string.punctuation:
        phrase = phrase.replace(c, ' ')

    return dict(Counter(phrase.lower().split()))
