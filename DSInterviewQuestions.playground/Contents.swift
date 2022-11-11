import UIKit

var greeting = "Hello, playground"

    /*
        CHALLENGE [1]

    The Fibonacci sequence is defined as follows: the first number of the sequence is 0, the second number is 1,
    and the nth number is the sum of the (n - 1)th and (n - 2)th numbers. Write a function that takes in an integer  and returns the nth Fibonacci number.

    Important note: the Fibonacci sequence is often defined with its first two numbers as F0 = 0 and F1 = 1.
     For the purpose of this question, the first Fibonacci number is F0; therefore, getNthFib(1) is equal to F0, getNthFib(2) is equal to F1, etc.

        Example:
            n = 2
            output = 1 // 0, 1

            n = 7
            output = 8 // 0, 1, 1, 2, 3, 5, 8

    */
    
    // Time complexity : O(n)
    // Space complexity : O(1)

    func getNthFib(n: Int) -> Int {
        
        if n < 1 {
            return -1
        }
        
        if n == 1 {
            return 0
        }
        
        if n == 2 {
            return 1
        }
        
        var previous = 0
        var current = 1
        var sum = previous + current
        
        var count = n - 2
        
        while count != 0 {
            
            sum = previous + current
            previous = current
            current = sum
            
            count -= 1
        }
        
        return current
    }

/*
    CHALLENGE [2]

  Given two non-empty arrays of integers, write a function that determines
  whether the second array is a subsequence of the first one.

  A subsequence of an array is a set of numbers that aren't necessarily adjacent
  in the array but that are in the same order as they appear in the array. For
  instance, the numbers [1, 3, 4] form a subsequence of the array [1. 2, 3, 4], and so do the numbers [2, 4]. Note
  that a single number in an array and the array itself are both valid subsequences of the array.

    Example:
      array = [1, 2, 3, 4]
      sequence = [1,9]
      output = true

      array = [5, 1, 22, 25, 6, -1, 8, 1]
      sequence = [1, 6, -1, 10]
      output = false
*/

// Time : O(n)
// Space O(1)
func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {

    if sequence.isEmpty, array.isEmpty {
        return false
    }
    var count = 0
    var elementToSearch = sequence[count]
    
    for element in array {
        if element == elementToSearch {
            count += 1
            if count >= sequence.count {
                break;
            } else {
                elementToSearch = sequence[count]
            }
            
        }
    }
    return count == sequence.count

}

/*
    CHALLENGE [3]

 Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum.
 The function should find all triplets in the array that sum up to the target sum and return a two-dimensional array of all these triplets. The numbers in each triplet should be ordered in ascending order,
 and the triplets themselves should be ordered in ascending order with respect to the numbers they hold.

If no three numbers sum up to the target sum, the function should return an empty array.

        Example:
        array = [12, 3, 1, 2, -6, 5, -8, 6]
        targetSum = 0
        output = [[-8, 2, 6], [-8, 3, 5], [-6, 1, 5]]

        n = 6
        output = 5 // 0, 1, 1, 2, 3, 5
*/

func threeNumberSum(array: [Int], targetSum: Int) -> [[Int]] {
    if array.count < 3 {
        print("[]")
        return []
    }
    let ar = array;
    let sort: Array<Int> = ar.sorted(by: {$0 < $1})
    print(sort)
    let firstElement = sort[0]
    
    if firstElement > 0 {
        print("[]")
        return []
    }
    
    var triplets : Array<Array<Int>> = []
    var i = 0
    while i < sort.count - 2 {
        var left = i + 1
        var right = sort.count - 1
        
        while left < right {
            var sum = sort[i] + sort[left] + sort[right]
            
            if sum > targetSum {
                right = right - 1
            } else if sum < targetSum {
                left = left + 1
            } else {
                triplets.append([sort[i],sort[left],sort[right]])
                right = right - 1
                left = left + 1
            }
            
        }
        i = i + 1
    }
    if triplets.isEmpty {
        print("triplets empty ")
        return []
    }
    print("triplets \(triplets)")
    return triplets
}
