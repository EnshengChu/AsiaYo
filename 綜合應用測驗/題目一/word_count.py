import re
from collections import Counter

def find_most_frequent_word(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        text = file.read()
    
    words = re.findall(r'\b[a-zA-Z]+\b', text.lower())
    word_counts = Counter(words)
    most_common_word, frequency = word_counts.most_common(1)[0]

    print(f"{frequency} {most_common_word}")

find_most_frequent_word('words.txt')
