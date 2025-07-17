// Memoization dictionary to store computed Fibonacci numbers
val memo = mutableMapOf<Int, Long>()

// Function to calculate Fibonacci numbers using memoization
fun fibonacci(n: Int): Long {
    if (n <= 1) {
        return n.toLong()
    }

    // Check if the result is already memoized
    if (memo.containsKey(n)) {
        return memo[n]!!
    }

    // Calculate Fibonacci recursively and store the result in memoization
    val result = fibonacci(n - 1) + fibonacci(n - 2)
    memo[n] = result

    return result
}

fun main() {
    val index = 15
    println("Fibonacci (memoization) of $index is: ${fibonacci(index)}")
}
