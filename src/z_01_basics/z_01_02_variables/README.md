# Z_01_02_VARIABLES

## 📖 Overview

Variables are named memory locations used to store and manipulate data during program execution.

In ABAP, variables are strongly typed and form the foundation of all business logic implementations.

This module introduces variable declaration techniques, assignment operations, naming conventions, and lifetime concepts used in modern ABAP development.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

- Declare variables using explicit typing
- Declare variables using inline syntax
- Assign and update values
- Understand variable scope and lifetime
- Apply SAP naming conventions
- Write more readable and maintainable ABAP code

---

## 🧠 Why Variables Matter

Variables are used in almost every ABAP program.

Examples:

- Customer names
- Material numbers
- Sales orders
- Prices
- Dates
- Calculation results

Without variables, data cannot be stored, processed, or transferred between program components.

---

## 📚 Topics Covered

### 1. Variable Declaration

Traditional variable declaration:

```abap
DATA lv_name TYPE string.
```

Declaration with initial value:

```abap
DATA lv_name TYPE string VALUE 'Hafize'.
```

---

### 2. Variable Assignment

Values can be assigned after declaration.

```abap
lv_name = 'Bilge'.
```

---

### 3. Inline Declaration

Modern ABAP allows automatic type inference.

```abap
DATA(lv_city) = 'Konya'.
```

Benefits:

- Less code
- Improved readability
- Better maintainability

---

### 4. Naming Conventions

SAP projects commonly use prefixes.

| Prefix | Meaning |
|----------|----------|
| lv_ | Local Variable |
| lt_ | Local Internal Table |
| ls_ | Local Structure |
| lo_ | Local Object Reference |
| lr_ | Local Data Reference |
| gv_ | Global Variable |
| gt_ | Global Internal Table |
| gs_ | Global Structure |

Example:

```abap
DATA lv_employee_name TYPE string.
DATA lt_employees TYPE TABLE OF string.
```

---

### 5. Variable Scope

Variables only exist within their scope.

Example:

```abap
METHOD demo.
  DATA lv_counter TYPE i.
ENDMETHOD.
```

The variable is destroyed when the method ends.

---

### 6. Variable Lifetime

Lifecycle:

```text
Declaration
    ↓
Initialization
    ↓
Usage
    ↓
Method End
    ↓
Memory Released
```

Understanding lifetime is important for:

- Memory management
- Performance optimization
- Clean architecture

---

## ⚠️ Common Beginner Mistakes

### Poor Naming

Bad:

```abap
DATA x TYPE i.
```

Good:

```abap
DATA lv_employee_count TYPE i.
```

---

### Unused Variables

Bad:

```abap
DATA lv_test TYPE string.
```

Never create variables that are not used.

---

### Meaningless Names

Bad:

```abap
DATA lv_a TYPE i.
```

Good:

```abap
DATA lv_total_amount TYPE p DECIMALS 2.
```

---

## 💻 Demo Class

Class:

```text
ZCL_01_VARIABLES
```

Package:

```text
Z_01_02_VARIABLES
```

---

## 🚀 Learning Outcome

You should now understand:

✅ Variable declaration

✅ Variable assignment

✅ Inline declarations

✅ Variable scope

✅ Variable lifetime

✅ SAP naming conventions

---

## 📌 Interview Notes

Typical interview questions:

- What is the difference between a data type and a variable?
- What is inline declaration?
- What does the prefix `lv_` mean?
- What is variable scope?
- When is memory released for a local variable?

---

## 🔜 Next Module

### Z_01_03_OPERATORS

Topics:

- Arithmetic operators
- Comparison operators
- Logical operators
- Assignment operators
- Operator precedence
