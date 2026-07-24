/* StringSlicing

startIndex
endIndex
index()
offsetBy
..<
...
between two indexes */

// ..< means Index include nahi hota.
//... means Jis side dots hon, us side wala index include hota hai.

// ========================================
// STRING SLICING IN SWIFT
// ========================================
//
// Swift does not allow direct indexing like:
// text[0] ❌
//
// Instead, Swift uses String.Index.
//
// Steps:
// 1. Get startIndex
// 2. Move using offsetBy
// 3. Slice using ..< or ...
//

// ----------------------------------------
// Example 1 - Accessing a Character
// ----------------------------------------

let text = "Hello"

let index = text.index(text.startIndex, offsetBy: 2)

print(text[index])

// Output:
// l

// ----------------------------------------
// Example 2 - Before Index
// ----------------------------------------

// ..< means:
// Start from beginning
// Stop BEFORE the index

let firstPart = text[..<index]

print(firstPart)

// Output:
// He

// ----------------------------------------
// Example 3 - From Index
// ----------------------------------------

// ... means:
// Start FROM the index
// Continue till the end

let secondPart = text[index...]

print(secondPart)

// Output:
// llo

// ----------------------------------------
// Example 4 - Phone Number Formatting
// ----------------------------------------

let phoneNumber = "03001234567"

let phoneIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 4)

let phoneFirstPart = phoneNumber[..<phoneIndex]
let phoneSecondPart = phoneNumber[phoneIndex...]

print("\(phoneFirstPart)-\(phoneSecondPart)")

// Output:
// 0300-1234567

// ----------------------------------------
// Example 5 - CNIC Formatting
// ----------------------------------------

let cnic = "3520212345671"

let firstIndex = cnic.index(cnic.startIndex, offsetBy: 5)
let secondIndex = cnic.index(cnic.startIndex, offsetBy: 12)

let cnicFirstPart = cnic[..<firstIndex]
let cnicSecondPart = cnic[firstIndex..<secondIndex]
let cnicThirdPart = cnic[secondIndex...]

print("\(cnicFirstPart)-\(cnicSecondPart)-\(cnicThirdPart)")

// Output:
// 35202-1234567-1


// ----------------------------------------
// Summary
// ----------------------------------------

/*

startIndex
↓
Beginning of String

offsetBy
↓
Move to required position

..<index
↓
Before index (Index NOT included)

index...
↓
From index till end (Index included)

*/

// ========================================
// Quick Revision
// ========================================

/*

text[..<index]

Before Index

----------------------

text[index...]

From Index

----------------------

Flow

String
   ↓
Create Index
   ↓
Slice String

*/

// Practice 
let msg = "Hey! World"
// String.Index
let start = msg.startIndex
print(msg[start]) // output -> H

// index()
// assume we want to go on 4th position
let ind = msg.index(msg.startIndex, offsetBy: 3)
print(msg[ind]) 

// Before index (..<)
// assume we want Hey! just, not Hey! World complete
let firstpart = msg[..<ind]
print(firstpart)

// After index (... means start with index)
let secondpart = msg[ind...]
print(secondpart)
