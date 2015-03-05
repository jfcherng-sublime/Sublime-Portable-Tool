## 介紹

THIS IS A FORK FROM https://github.com/loo2k/Sublime-Text-Portable-Tool
This fork is compiled by **Bat To Exe Converter**.
ResHacker.exe is used and you can download it from http://www.angusj.com/resourcehacker if you want to compile **Sublime Text Portable Tool** by yourself.

Sublime Text Portable Tool 是一個為 PC 下便攜版的 Sublime Text 製作的一個 **增加檔案關聯以及右鍵選單** 的工具。

## 使用說明

將 `Sublime-Text-Portable-Tool.bat` 和 `ext.txt` 兩個檔案複製到 Sublime Text 的資料夾中，並確保 Sublime Text 的可執行檔案名稱為 `sublime_text.exe` ，編輯好 `ext.txt` 後執行 `Sublime-Text-Portable-Tool.bat` 檔案即可。

其中 **ext.txt** 檔案中每行代表一個需要綁定的副檔名，如:

    txt
    html
    css
    js

如果你想註釋該行的話可以使用 `;` 分號對該行進行註釋，如：

    ; 這行不會被辨識
    ; 因為以 ; 開頭的行都會被忽略
    txt
    html
    ;css
    ;js

進行綁定副檔名或者右鍵選單打開 `Sublime-Text-Portable-Tool.exe` 按照說明操作即可；

## DEMO

執行界面：

![](images/st2tool.png?raw=true)

右鍵選單：

![](images/st2menu.png?raw=true)

## License

( The MIT License )

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
