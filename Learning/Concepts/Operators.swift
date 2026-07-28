import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// Addition
// likeCount = 5 + 1 // Bad approach
// likeCount = likeCount + 1 // Better approach
likeCount += 1 // Best approach
print("Plus: \(likeCount)")

// Subtraction
// likeCount = likeCount - 1
likeCount -= 1
print("Minus: \(likeCount)")

// Multiplication
// likeCount = likeCount * 1.5
likeCount *= 2
print("Multiply: \(likeCount)")

// Division
// likeCount = likeCount / 2
likeCount /= 2
// print("Divide: \(likeCount)")

// Order of operations does matter!
// PEMDAS
// likeCount = likeCount - 1 * 2.0
print(likeCount)
// Use parenthesis
likeCount = (likeCount - 1) * 2.0
print("Parenthesis: \(likeCount)")