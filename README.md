# Dart - Unhandled Exception: StateError: Bad state: No element

This repository demonstrates a common error in Dart applications where accessing the first element of a list (`jsonData.first`) without prior null and empty checks can throw a `StateError: Bad state: No element` exception. The solution showcases how to properly handle this scenario using null-safety features and checks for empty lists.

## Bug

The `bug.dart` file contains the erroneous code.  The `fetchData()` function fetches data from an API.  It assumes that the API response will always contain at least one item. However, if the API returns an empty list or encounters an error resulting in a null list, accessing `.first` will throw the exception.

## Solution

The `bugSolution.dart` file provides a corrected version. The solution includes checks to verify if `jsonData` is null or empty before attempting to access `.first`. It uses a more robust error handling mechanism for improved reliability and a better user experience.