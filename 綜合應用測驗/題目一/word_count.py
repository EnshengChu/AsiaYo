import re
from collections import Counter

def find_most_frequent_word(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        text = file.read()
    
    # 移除標點符號並轉為小寫
    words = re.findall(r'\b[a-zA-Z]+\b', text.lower())
    
    # 計算單字出現次數
    word_counts = Counter(words)
    
    # 找到出現最多次的單字
    most_common_word, frequency = word_counts.most_common(1)[0]
    
    # 輸出結果
    print(f"{frequency} {most_common_word}")

# 呼叫函數，假設檔案名為 words.txt
find_most_frequent_word('words.txt')
