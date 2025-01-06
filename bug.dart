```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final jsonData = jsonDecode(response.body) as List;

      //This line can throw an error if jsonData is null or empty. 
      final firstItem = jsonData.first; 
      // ... further processing
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions properly
    print('Error fetching data: $e');
    rethrow; // Re-throw to allow calling function to handle
  }
}
```