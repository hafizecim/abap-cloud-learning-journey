# Z_01_01_DATA_TYPES

## 📘 Overview
This module is part of the **ABAP Cloud Learning Journey** repository.

It focuses on understanding **ABAP Elementary Data Types**, which are the foundation of all ABAP programs.

---

## 🎯 Purpose
The goal of this module is to:

- Understand basic ABAP data types
- Learn how to declare variables
- Apply clean coding principles
- Practice modern ABAP output handling using `IF_OO_ADT_CLASSRUN`

---

## 🧠 Topics Covered

### 🟢 Elementary Data Types
- Integer (`i`)
- Character (`c`)
- String (`string`)
- Packed Number (`p`)
- Date (`d`)

---

## 💡 Key Concepts

### 1. Strong Typing in ABAP
ABAP is a strongly typed language, meaning every variable must have a defined type.

---

### 2. Modern Declaration Style
Inline and clean declarations improve readability and maintainability.

---

### 3. System Date Usage
System date is retrieved using:
- `sy-datum` (classic ABAP)
- `cl_abap_context_info=>get_system_date( )` (modern ABAP Cloud approach)

---

## 🧾 Example Output

The class demonstrates output using:

- `out->write( )`

Example:
- Integer value: 10  
- Char value: ABAP  
- String value: Hello ABAP Clean Code  
- Price value: 99.99  
- Date value: system date  

---

## 📂 File Structure
