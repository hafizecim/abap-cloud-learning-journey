# Z_01_03_OPERATORS

## 📖 Overview

This module introduces ABAP operators used to perform calculations, comparisons, logical decisions, and value assignments.

Operators are a core part of ABAP logic and are widely used in business rules, validations, and calculations.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

- Use arithmetic operators (+, -, *, /)
- Apply comparison operators (=, >, <, <>)
- Work with logical operators (AND, OR, NOT)
- Use assignment operators (+=, -=, *=, /=)
- Build basic decision logic in ABAP programs

---

## 🧠 Why Operators Matter

Operators are essential because they:

- Enable business calculations
- Control program flow
- Support decision-making logic
- Validate conditions
- Manipulate data values

Almost every ABAP program relies heavily on operators.

---

## 📚 Topics Covered

### 1. Arithmetic Operators

Used for mathematical calculations.

```abap
lv_sum = lv_a + lv_b.
lv_diff = lv_a - lv_b.
lv_mul  = lv_a * lv_b.
lv_div  = lv_a / lv_b.
```

---

### 2. Comparison Operators

Used to compare values.

```abap
IF lv_a = lv_b.
ELSEIF lv_a > lv_b.
ELSE.
ENDIF.
```

---

### 3. Logical Operators

Used for combining conditions.

```abap
IF lv_x = abap_true AND lv_y = abap_true.
```

Supported operators:
- AND
- OR
- NOT

---

### 4. Assignment Operators

Used for modifying variable values.

```abap
lv_result += 5.
lv_result -= 2.
lv_result *= 2.
lv_result /= 3.
```

---

## ⚠️ Common Mistakes

### Using wrong comparison operator

❌ Incorrect:
```abap
IF lv_a == lv_b.
```

✔ Correct:
```abap
IF lv_a = lv_b.
```

---

### Forgetting operator precedence

Complex expressions should be simplified for readability.

---

## 💻 Demo Class

Class:

```text
ZCL_01_OPERATORS
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
Sum: 15
Difference: 5
Multiplication: 50
Division: 2
A is greater than B
At least one is true
Final Result: 20
```

---

## 🚀 Learning Outcome

After this module, you should be able to:

✔ Perform arithmetic operations in ABAP  
✔ Compare values using IF conditions  
✔ Use logical expressions effectively  
✔ Apply assignment shortcuts  
✔ Build basic business logic  

---

## 📌 Interview Notes

Common interview questions:

- What is the difference between = and == in ABAP?
- What are logical operators?
- When do you use assignment operators?
- What is operator precedence?
- How is business logic implemented using operators?

---

## 🔜 Next Module

### Z_01_04_CONDITIONS

Topics:

- IF / ELSE logic
- CASE statements
- Nested conditions
- Business decision flow
