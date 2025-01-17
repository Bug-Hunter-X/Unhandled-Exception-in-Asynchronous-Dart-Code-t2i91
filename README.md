# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: neglecting to handle exceptions that might occur during asynchronous operations, such as network requests.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version with proper exception handling.

**Problem:**

The original code lacks comprehensive error handling, leaving the application vulnerable to crashes if the network request fails or encounters any other exceptions.

**Solution:**

The corrected code uses a `try-catch` block to gracefully handle exceptions.  It checks the HTTP status code and throws a custom exception if the request is unsuccessful.  The `catch` block then prints an error message, providing valuable debugging information.