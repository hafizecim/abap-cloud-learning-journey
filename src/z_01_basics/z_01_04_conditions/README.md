# Z_01_04_CONDITIONS

## 📖 Overview

This module introduces conditional statements in ABAP used to control program flow based on logical decisions.

Conditions are a core part of ABAP development because business processes always require decision-making logic such as approvals, classifications, validations, and routing.

---

## 🎯 Learning Objectives

After completing this module, you will be able to:

- Use IF / ELSE statements
- Apply ELSEIF for multi-level conditions
- Use CASE for value-based branching
- Build nested decision logic
- Translate business rules into ABAP conditions

---

## 🧠 Why Conditions Matter

Conditions are used to:

- Control program flow
- Implement business rules
- Validate user input
- Classify data
- Make dynamic decisions in applications

Almost every SAP program contains conditional logic.

---

## 📚 Topics Covered

### 1. IF / ELSE

Used for simple decision making.

```abap
IF lv_age >= 18.
  " Adult user
ELSE.
  " Minor user
ENDIF.
```

---

### 2. ELSEIF Structure

Used for multi-level conditions.

```abap
IF lv_score >= 90.
  " Grade A
ELSEIF lv_score >= 70.
  " Grade B
ELSE.
  " Grade C
ENDIF.
```

---

### 3. CASE Statement

Used when checking a single variable against multiple values.

```abap
CASE lv_day.
  WHEN 1.
  WHEN 2.
  WHEN 3.
  WHEN OTHERS.
ENDCASE.
```

---

### 4. Business Logic Example

Conditions are widely used in real SAP business scenarios.

Example:

- Customer classification
- Pricing rules
- Approval flows

```abap
IF lv_balance > 1000.
  " Premium customer
ELSEIF lv_balance > 500.
  " Standard customer
ELSE.
  " Basic customer
ENDIF.
```

---

## ⚠️ Common Mistakes

### Incorrect comparison operators

❌ Wrong:
```abap
IF lv_age => 18.
```

✔ Correct:
```abap
IF lv_age >= 18.
```

---

### Overusing nested IF

Bad practice:

- Too many nested conditions
- Hard to read and maintain

✔ Prefer CASE or simplified logic

---

## 💻 Demo Class

Class:

```text
ZCL_01_CONDITIONS
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
Adult user
Grade B
Wednesday
Premium customer
```

---

## 🚀 Learning Outcome

After completing this module, you will be able to:

✔ Build IF / ELSE logic  
✔ Use ELSEIF for structured decisions  
✔ Apply CASE statements effectively  
✔ Translate business rules into ABAP logic  

---

## 📌 Interview Notes

Common interview questions:

- What is the difference between IF and CASE?
- When do you use ELSEIF?
- Can CASE replace IF?
- What is nested IF and why is it bad?
- How do you model business logic in ABAP?

---

## 🔜 Next Module

### Z_01_05_LOOPS

Topics:

- DO loops
- WHILE loops
- LOOP AT internal tables
- Iteration logic in SAP
