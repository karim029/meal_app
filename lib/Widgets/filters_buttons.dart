import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FiltersButton extends StatelessWidget {
  const FiltersButton({
    required this.value,
    required this.title,
    required this.subTitle,
    required this.onChanged,
    super.key,
  });

  final void Function(bool isChecked) onChanged;
  final String title;
  final String subTitle;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
