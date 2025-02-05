# **解題思路**

### **1. 讀取檔案內容**
- 使用 `open(file_path, 'r', encoding='utf-8')` 以 UTF-8 編碼讀取 `words.txt`。
- 透過 `file.read()` 讀取完整檔案內容。

### **2. 處理文字內容**
- 為了確保統一處理，將文字 **全部轉為小寫** (`text.lower()`)。
- 使用 `re.findall(r'\b[a-zA-Z]+\b', text.lower())` **過濾非字母的字元** **全部轉為小寫**。
### **3. 計算單字出現次數**
- 使用 `collections.Counter(words)` 來計算所有單字的出現頻率。
- `Counter` 會建立一個字典，其中 `key` 是單字，`value` 是該單字的出現次數。

### **4. 找出出現最多的單字**
- 使用 `word_counts.most_common(1)[0]` 找出 **出現次數最多的單字**。
- `most_common(1)` 會返回一個包含 (單字, 次數) 的 `tuple`，我們取出第一個值。

### **5. 輸出結果**
- 以 `print(f"{frequency} {most_common_word}")` 格式輸出結果。
