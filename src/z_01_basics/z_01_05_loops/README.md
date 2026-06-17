# Z_01_05_LOOPS

## 📖 Overview

This module introduces loop structures in ABAP used to process repeated logic and iterate over datasets.

Loops are a fundamental part of ABAP because most SAP applications process large volumes of data such as database records, internal tables, and transactional results.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

- Use DO loops for fixed iterations
- Use WHILE loops for condition-based repetition
- Iterate over internal tables using LOOP AT
- Control loop execution using EXIT and CONTINUE
- Understand how SAP processes data collections

---

## 🧠 Why Loops Matter

Loops are essential in ABAP because:

- SAP systems handle large datasets
- Business logic often requires repetition
- Internal tables are processed using loops
- Reporting and data transformation depend on iteration

Without loops, ABAP cannot process real-world SAP data.

---

## 📚 Topics Covered

### 1. DO Loop

Used for fixed number of iterations.

```abap
DO 5 TIMES.
  " Repeated execution
ENDDO.
```

✔ Best for counters and fixed repetition tasks

---

### 2. WHILE Loop

Used when condition-based repetition is required.

```abap
WHILE lv_index <= 5.
  " Execute while condition is true
ENDWHILE.
```

✔ Best for dynamic conditions

---

### 3. LOOP AT Internal Table

Used to process SAP datasets.

```abap
LOOP AT lt_employees INTO DATA(ls_employee).
  " Process each row
ENDLOOP.
```

✔ Most important loop type in ABAP

---

### 4. EXIT Statement

Used to terminate loop execution early.

```abap
IF ls_employee-id = 2.
  EXIT.
ENDIF.
```

---

### 5. CONTINUE Statement

Skips current iteration and moves to next.

```abap
IF sy-index = 3.
  CONTINUE.
ENDIF.
```

---

## ⚠️ Common Mistakes

### Infinite Loops

❌ Wrong:
```abap
WHILE lv_index <= 5.
  " missing increment
ENDWHILE.
```

✔ Correct:
```abap
lv_index = lv_index + 1.
```

---

### Not Using LOOP AT for internal tables

Bad practice:
- Trying to process tables manually

✔ Correct approach:
- Always use LOOP AT for internal tables

---

### Overusing EXIT

EXIT should be used carefully because it breaks loop flow.

---

## 💻 Demo Class

Class:

```text
ZCL_01_LOOPS
```

Interface:

```text
IF_OO_ADT_CLASSRUN
```

Output is handled using:

```abap
out->write( )
```

---

## 🧾 Example Output

```text
DO Loop Counter: 1
DO Loop Counter: 2
WHILE Loop Index: 1
Employee: 1 - Hafize
Employee: 2 - Bilge
DO with CONTINUE: 1
DO with CONTINUE: 2
DO with CONTINUE: 4
```

---

## 🚀 Learning Outcome

After this module, you should be able to:

✔ Use DO loops for fixed repetition  
✔ Use WHILE loops for conditions  
✔ Process internal tables using LOOP AT  
✔ Control flow using EXIT and CONTINUE  
✔ Understand SAP data iteration logic  

---

## 📌 Interview Notes

Common interview questions:

- What is the difference between DO and WHILE?
- Why is LOOP AT important in SAP?
- What is the purpose of EXIT?
- What is CONTINUE used for?
- What happens if a loop has no termination condition?

---

## 🔜 Next Module

### Z_01_06_STRINGS

Topics:

- String concatenation
- String templates
- Substrings
- Search operations
- String functions in ABAP
