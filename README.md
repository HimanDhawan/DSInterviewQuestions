# DSInterviewQuestions
The questions were asked in interview process of talabat.

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

-------------------------------------------------------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------------------------------------------------------
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
