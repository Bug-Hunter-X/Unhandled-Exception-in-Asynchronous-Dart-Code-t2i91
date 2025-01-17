```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData safely, handling potential null values
      final data = jsonData['data'] ?? []; //Example: Handle potential null data
      // ... process data
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors specifically
    print('Error decoding JSON: $e');
    // Consider rethrowing or custom error handling
  } catch (e) {
    print('Error fetching data: $e');
    // Optionally rethrow or handle error differently 
  }
}
```