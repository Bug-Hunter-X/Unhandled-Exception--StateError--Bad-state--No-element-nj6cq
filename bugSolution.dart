```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check for null and empty list before accessing .first
      if (jsonData is List && jsonData.isNotEmpty) {
        final firstItem = jsonData.first;
        // ... further processing
      } else {
        print('API returned an empty or invalid JSON list.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow;
  }
}
```