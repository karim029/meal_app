import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/meal_item_trait.dart';
import 'package:meal_app/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
  });

  final Meal meal;

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1); // used to concatenate the string
  }

  String get AffordabilityText {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1); // used to concatenate the string
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(
                  kTransparentImage), // transparent image provided by the package
              image: NetworkImage(meal.imageUrl), // load image with url
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              // Positioned widget is used to position the widget in the stack
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                // Container is used to create a box
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 66),
                child: Column(children: [
                  Text(
                    meal.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis, // very long text add ...
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MealItemTrait(
                        label: '${meal.duration} min',
                        icon: Icons.schedule,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MealItemTrait(
                        label: complexityText,
                        icon: Icons.work,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      MealItemTrait(
                        label: AffordabilityText,
                        icon: Icons.attach_money,
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
