import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/Widgets/filters_buttons.dart';
//import 'package:meal_app/Widgets/main_drawer.dart';
//import 'package:meal_app/screens/tabs.dart';
import 'package:meal_app/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          FiltersButton(
              value: activeFilters[Filter.glutenFree]!,
              title: 'Gluten-free',
              subTitle: 'Only include gluten free meals',
              onChanged: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.glutenFree, isChecked);
              }),
          FiltersButton(
              value: activeFilters[Filter.lactoseFree]!,
              title: 'Lactose-free',
              subTitle: 'Only include lactose free meals',
              onChanged: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.lactoseFree, isChecked);
              }),
          FiltersButton(
              value: activeFilters[Filter.vegetarian]!,
              title: 'Vegetarian',
              subTitle: 'Only include vegetarian meals',
              onChanged: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegetarian, isChecked);
              }),
          FiltersButton(
              value: activeFilters[Filter.vegan]!,
              title: 'Vegan',
              subTitle: 'Only include Vegan meals',
              onChanged: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegan, isChecked);
              }),
        ],
      ),
    );
  }
}
