# Z_01_06_STRINGS

## 📖 Overview

This module introduces string handling in ABAP.

String operations are widely used in SAP applications for text processing, formatting, reporting, and dynamic message generation.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

- Work with ABAP string variables
- Concatenate strings using `&&`
- Use string templates for dynamic text
- Calculate string length using `strlen`
- Build readable and maintainable text logic

---

## 🧠 Why Strings Matter

Strings are essential in ABAP because:

- SAP reports generate text-based outputs
- Messages are dynamically created
- User inputs are processed as text
- Data formatting is required in almost every application

---

## 📚 Topics Covered

### 1. String Declaration

```abap
DATA lv_text TYPE string VALUE 'ABAP is powerful'.
```

---

### 2. String Concatenation

Strings can be combined using `&&`.

```abap
lv_full = lv_first && | | && lv_last.
```

✔ Used for building dynamic text outputs

---

### 3. String Templates

Modern ABAP allows inline expressions.

```abap
lv_msg = |Welcome { lv_first }|.
```

✔ Improves readability  
✔ Preferred in modern ABAP

---

### 4. String Length

Used to determine the number of characters in a string.

```abap
lv_len = strlen( lv_text ).
```

---

## ⚠️ Common Mistakes

### Using + instead of &&

❌ Wrong:
```abap
lv_full = lv_first + lv_last.
```

✔ Correct:
```abap
lv_full = lv_first && lv_last.
```

---

### Ignoring string templates

Bad practice:
- Manual concatenation for dynamic text

✔ Prefer:
- String templates (`| |`)

---

### Misunderstanding string length

`strlen( )` returns character count, not byte size.

---

## 💻 Demo Class

Class:

```text
ZCL_01_STRINGS
```

Interface:

```text
IF_OO_ADT_CLASSRUN
```

Output is displayed using:

```abap
out->write( )
```

---

## 🧾 Example Output

```text
ABAP is powerful
Hafize Senyil
Welcome Hafize
16
```

---

## 🚀 Learning Outcome

After this module, you should be able to:

✔ Manipulate strings in ABAP  
✔ Concatenate text dynamically  
✔ Use string templates effectively  
✔ Measure string length  
✔ Build readable text logic  

---

## 📌 Interview Notes

Common interview questions:

- What is the difference between `&&` and `+`?
- What are string templates in ABAP?
- When do you use `strlen()`?
- Why are string templates preferred in modern ABAP?
- How do you build dynamic messages?

---

## 🔜 Next Module

### Z_01_07_INTERNAL_TABLES

Topics:

- Internal table types
- APPEND / INSERT
- LOOP AT
- READ TABLE
- Table processing logic
