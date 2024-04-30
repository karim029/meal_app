import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/filters_buttons.dart';
//import 'package:meal_app/Widgets/main_drawer.dart';
//import 'package:meal_app/screens/tabs.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactosenFreeFilterSet = false;
  var _vegetarianFreeFilterSet = false;
  var _veganFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onselectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {
      //     Navigator.of(context).pushReplacement(
      //       MaterialPageRoute(
      //         builder: (ctx) => const TabsScreen(),
      //       ),
      //     );
      //   }
      // }),
      body: Column(
        children: [
          FiltersButton(
              value: _glutenFreeFilterSet,
              title: 'Gluten-free',
              subTitle: 'Only include gluten free meals',
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
              }),
          FiltersButton(
              value: _lactosenFreeFilterSet,
              title: 'Lactose-free',
              subTitle: 'Only include lactose free meals',
              onChanged: (isChecked) {
                setState(() {
                  _lactosenFreeFilterSet = isChecked;
                });
              }),
          FiltersButton(
              value: _vegetarianFreeFilterSet,
              title: 'Vegetarian',
              subTitle: 'Only include vegetarian meals',
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFreeFilterSet = isChecked;
                });
              }),
          FiltersButton(
              value: _veganFreeFilterSet,
              title: 'Vegan',
              subTitle: 'Only include Vegan meals',
              onChanged: (isChecked) {
                setState(() {
                  _veganFreeFilterSet = isChecked;
                });
              }),
        ],
      ),
    );
  }
}
