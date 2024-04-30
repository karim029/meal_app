import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/filters_buttons.dart';
//import 'package:meal_app/Widgets/main_drawer.dart';
//import 'package:meal_app/screens/tabs.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({required this.currentFilters, super.key});

  final Map<Filter, bool> currentFilters;

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFreeFilterSet = false;
  var _veganFreeFilterSet = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _veganFreeFilterSet = widget.currentFilters[Filter.vegan]!;
    _vegetarianFreeFilterSet = widget.currentFilters[Filter.vegetarian]!;
  }

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
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) async {
          if (didPop) {
            return;
          }

          Future.delayed(Duration.zero, () {
            Navigator.of(context).pop({
              Filter.glutenFree: _glutenFreeFilterSet,
              Filter.lactoseFree: _lactoseFreeFilterSet,
              Filter.vegetarian: _vegetarianFreeFilterSet,
              Filter.vegan: _veganFreeFilterSet,
            });
          });
        },
        child: Column(
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
                value: _lactoseFreeFilterSet,
                title: 'Lactose-free',
                subTitle: 'Only include lactose free meals',
                onChanged: (isChecked) {
                  setState(() {
                    _lactoseFreeFilterSet = isChecked;
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
      ),
    );
  }
}
