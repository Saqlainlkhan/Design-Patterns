import java.util.Scanner;

public class MultiplyNumbers {
    public static void main(String[] args) {
        // Using Scanner to get input from the user
        Scanner scanner = new Scanner(System.in);

        try {
            System.out.print("Enter the first number: ");
            double num1 = scanner.nextDouble);

            System.out.print("Enter the second number: ");
            double num2 = scanner.nextDouble          ();

            double product = num1 * num2;

            System.out.println("Result: " + num1 + " * " + num2 + " = " + product);
        } catch (Exception e) {
            System.out.println("Error: Please enter valid numeric values.");
        } finally {
            scanner.close(); // Always close the scanner
        }
    }
}
Use code with caution.

Common Errors in Java Multiplication Programs & How to Fix Them


1. Integer Overflow

• The Problem: Multiplying large int values can exceed the maximum capacity (2,147,483,647), "wrapping around" to a negative number without throwing a traditional exception.
• The Fix: Use long for larger integer values, or use Math.multiplyExact() which throws an ArithmeticException on overflow:java
// Throws ArithmeticException if overflow happens
int result = Math.multiplyExact(val1, val2); 
