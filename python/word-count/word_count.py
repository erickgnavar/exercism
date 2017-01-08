from collections import Counter


def word_count(phrase):
    if isinstance(phrase, bytes):
        phrase = phrase.decode('utf-8')

    s = ''.join([c if c.isalnum() or c.isspace() else ' ' for c in phrase])

    return dict(Counter(s.lower().split()))
