```markdown
# Meal App

A simple Flutter app that allows users to browse and filter meals based on dietary restrictions. The app uses Riverpod for state management and Google Fonts for custom fonts.

## Features

- **Browse**: View a list of meals categorized by different types.
- **Filter**: Apply filters based on dietary restrictions (e.g., gluten-free, lactose-free).
- **Meal Details**: Access detailed information about each meal, including ingredients and preparation steps.
- **Favorites**: Mark meals as favorites for quick access.
- **Dark Theme**: Custom dark theme with vibrant colors.

## Project Structure

The project follows a standard Flutter project structure, with directories and files organized as follows:

- **lib/**: Main application directory
  - **main.dart**: Entry point of the application
  - **theme.dart**: Custom theme definitions
  - **screens/**: Screens of the application
    - **tabs.dart**: Main screen with tabs for meal categories
    - **categories.dart**: Screen for browsing and filtering meals by category
    - **meals.dart**: Screen for displaying a list of meals
    - **meal_details.dart**: Screen for displaying details of a single meal
  - **models/**: Data models used in the app
    - **meal.dart**: Model representing a single meal
    - **filter.dart**: Model representing filter settings
  - **providers/**: Riverpod providers used for state management
    - **meals_provider.dart**: Provider for managing the list of meals
    - **filter_provider.dart**: Provider for managing filter settings
  - **widgets/**: Custom widgets used throughout the app
    - **meal_item.dart**: Widget for displaying a single meal in a list
    - **category_item.dart**: Widget for displaying a single meal category
    - **filter_widget.dart**: Widget for displaying and updating filter settings
    - **favorite_button.dart**: Widget for marking meals as favorites

## Code Snippets

### Custom Theme

Define a custom theme for the app in `theme.dart` using Riverpod and Google Fonts.

```dart
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 0, 221, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);
```

### Riverpod Providers

Define Riverpod providers for managing state in the app.

```dart
final mealsProvider = StateNotifierProvider<MealsNotifier, List<Meal>>((ref) {
  return MealsNotifier();
});

final filterProvider = StateProvider<Filter>((ref) {
  return Filter();
});
```

### Custom Widgets

Create custom widgets for displaying meals, categories, and filter settings.

```dart
class MealItem extends ConsumerWidget {
  const MealItem({
    required this.meal,
    super.key,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meals = ref.watch(mealsProvider);
    final filter = ref.watch(filterProvider);

    // Display the meal item based on the current filter settings
  }
}
```

## Application Showcase

The Meal App features a dark-themed user interface with vibrant colors. Users can navigate between different screens using a bottom navigation bar and access additional options through a side drawer menu. The app utilizes Riverpod for state management and provides a smooth user experience with animated transitions and responsive design.

## Getting Started

To get started with the app, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/meal-app.git
   ```

2. Change into the project directory:
   ```bash
   cd meal-app
   ```

3. Install the dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! If you'd like to contribute to the app, please fork the repository and submit a pull request.

## License

The app is open-source and is licensed under the MIT License.
