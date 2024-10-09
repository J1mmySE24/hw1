![Static Badge](https://img.shields.io/badge/language-python-blue) 
![Static Badge](https://img.shields.io/badge/license-MIT-blue)
![Static Badge](https://img.shields.io/badge/platform-linux-blue)
[![Python application](https://github.com/J1mmySE24/hw1/actions/workflows/python-app.yml/badge.svg)](https://github.com/J1mmySE24/hw1/actions/workflows/python-app.yml)
[![codecov](https://codecov.io/gh/J1mmySE24/hw1/graph/badge.svg?token=M0IN40VATN)](https://codecov.io/gh/J1mmySE24/hw1)
[![PEP8](https://img.shields.io/badge/code%20style-pep8-orange.svg)](https://github.com/J1mmySE24/hw1/actions/workflows/python-app.yml)
[![linting: pylint](https://img.shields.io/badge/linting-pylint-yellowgreen)](https://github.com/J1mmySE24/hw1/actions/workflows/python-app.yml)
[![Checked with pyright](https://microsoft.github.io/pyright/img/pyright_badge.svg)](https://github.com/J1mmySE24/hw1/actions/workflows/python-app.yml)

# CSC 510 Software Engineering : Homework Repo

## Team 96

### Members
- Jinming Xing
- Krisha Patel
- Shreyas Devaraj 


---
## Homework 4
Please change the directory to the hw4 subfolder, i.e., set the root dir to be `~/hw4/` and then run `./task1.sh <name of the process to be killed>` (in this project, it should be `./task1.sh infinite.sh`), `./task2.sh`, and `./task3.sh`.
## Homework 2

### Static tools used in repo
#### 1. autopep8
Result for ```rand.py``` using ```autopep8 --aggressive --aggresive -d rand.py```


```bash
--- original/rand.py
+++ fixed/rand.py
@@ -1,8 +1,10 @@
 import subprocess
+
 
 def random_array(arr):
     shuffled_num = None
     for i in range(len(arr)):
-        shuffled_num = subprocess.run(["shuf", "-i1-20", "-n1"], capture_output=True)
+        shuffled_num = subprocess.run(
+            ["shuf", "-i1-20", "-n1"], capture_output=True)
         arr[i] = int(shuffled_num.stdout)
     return arr
```

Result for ```rand.py``` using ```autopep8 --aggressive --aggresive -d hw2_debugging.py```
```bash
--- original/hw2_debugging.py
+++ fixed/hw2_debugging.py
@@ -1,12 +1,14 @@
 import rand
+
 
 def mergeSort(arr):
     if (len(arr) == 1):
         return arr
 
-    half = len(arr)//2
+    half = len(arr) // 2
 
     return recombine(mergeSort(arr[:half]), mergeSort(arr[half:]))
+
 
 def recombine(leftArr, rightArr):
     leftIndex = 0
@@ -22,15 +24,14 @@
 
     for i in range(rightIndex, len(rightArr)):
         mergeArr[leftIndex + rightIndex] = rightArr[i]
-    
+
     for i in range(leftIndex, len(leftArr)):
         mergeArr[leftIndex + rightIndex] = leftArr[i]
 
     return mergeArr
 
+
 arr = rand.random_array([None] * 20)
 arr_out = mergeSort(arr)
 
 print(arr_out)
-
-
```

#### 2. pylint
Linting for ```rand.py``` and ```hw2_debugging.py``` found by the tool
```bash
************* Module rand
rand.py:1:0: C0114: Missing module docstring (missing-module-docstring)
rand.py:3:0: C0116: Missing function or method docstring (missing-function-docstring)
rand.py:5:4: C0200: Consider using enumerate instead of iterating with range and len (consider-using-enumerate)
rand.py:6:23: W1510: 'subprocess.run' used without explicitly defining the value for 'check'. (subprocess-run-check)

-------------------------------------------------------------------
Your code has been rated at 4.29/10
```
After code changes
```bash
Your code has been rated at 10.00/10 (previous run: 4.29/10, +5.71)
```

```bash
************* Module hw2_debugging
hw2_debugging.py:4:0: C0325: Unnecessary parens after 'if' keyword (superfluous-parens)
hw2_debugging.py:25:0: C0303: Trailing whitespace (trailing-whitespace)
hw2_debugging.py:36:0: C0305: Trailing newlines (trailing-newlines)
hw2_debugging.py:1:0: C0114: Missing module docstring (missing-module-docstring)
hw2_debugging.py:3:0: C0116: Missing function or method docstring (missing-function-docstring)
hw2_debugging.py:3:0: C0103: Function name "mergeSort" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:3:14: W0621: Redefining name 'arr' from outer scope (line 31) (redefined-outer-name)
hw2_debugging.py:11:0: C0116: Missing function or method docstring (missing-function-docstring)
hw2_debugging.py:11:14: C0103: Argument name "leftArr" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:11:23: C0103: Argument name "rightArr" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:12:4: C0103: Variable name "leftIndex" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:13:4: C0103: Variable name "rightIndex" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:14:4: C0103: Variable name "mergeArr" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:17:12: C0103: Variable name "rightIndex" doesn't conform to snake_case naming style (invalid-name)
hw2_debugging.py:20:12: C0103: Variable name "leftIndex" doesn't conform to snake_case naming style (invalid-name)

-------------------------------------------------------------------
Your code has been rated at 3.75/10 
```
After code changes
```bash
Your code has been rated at 10.00/10 (previous run: 3.75/10, +6.25)
```

#### 3. pyright
Analysis by tool for ```rand.py``` and ```hw2_debugging.py```
```bash
0 errors, 0 warnings, 0 informations 
```
