import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// // Addition
// // likeCount = 5 + 1 // Bad approach
// // likeCount = likeCount + 1 // Better approach
// likeCount += 1 // Best approach
// print("Plus: \(likeCount)")

// // Subtraction
// // likeCount = likeCount - 1
// likeCount -= 1
// print("Minus: \(likeCount)")

// // Multiplication
// // likeCount = likeCount * 1.5
// likeCount *= 2
// print("Multiply: \(likeCount)")

// // Division
// // likeCount = likeCount / 2
// likeCount /= 2
// // print("Divide: \(likeCount)")

// // Order of operations does matter!
// // PEMDAS
// // likeCount = likeCount - 1 * 2.0
// print(likeCount)
// // Use parenthesis
// likeCount = (likeCount - 1) * 2.0
// print("Parenthesis: \(likeCount)")

// if and if-else
if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("Post does NOT have 5 likes.")
}

if likeCount != 5 {
    print("Post does NOT have 5 likes.")
}

if likeCount > 5 {
    print("Post has greater than 5 likes.")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes.")
}

if likeCount < 5 {
    print("Post has less than 5 likes.")
}

if likeCount <= 5 {
    print("Post has less than or equal to 5 likes.")
}

// AND Operator (Both statements need to be true)
if likeCount > 3 && commentCount > 0 {
    print("Post has greater than 3 likes and greater than 0 comments.")
} else {
    print("Post has 3 or less likes or post has 0 or less comments.")
}

// OR Operator (Atleast one statement must be true)
if likeCount > 3 || commentCount > 0 {
    print("Post has greater than 3 likes and greater than 0 comments.")
} else {
    print("Post has 3 or less likes or post has 0 or less comments.")
}