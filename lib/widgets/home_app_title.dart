import 'package:flutter/material.dart';
import 'package:test/design/colors.dart';
import 'package:test/design/radius.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
            color: ColorsRandom.brandPrimaryColor,
            // image: DecorationImage(
            //     image: AssetImage('assets/images/store.png')),
            borderRadius: BorderRadius.all(RadiusBorde.xs),
          ),
        ),
        Expanded(
          child: Text(
            'Store Name',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        ContinerHeaderIcon(
          configMargin: const EdgeInsets.only(right: 12),
          iconButton: IconButton(
            onPressed: () => print('presionaron el icono notificaciones'),
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: ColorsRandom.brandPrimaryColor,
            ),
          ),
        ),
        ContinerHeaderIcon(
          iconButton: IconButton(
            onPressed: () => print('presionaron el icono mas'),
            icon: const Icon(
              Icons.more_vert,
              color: ColorsRandom.brandPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

class ContinerHeaderIcon extends StatelessWidget {
  final Widget iconButton;
  final EdgeInsets? configMargin;
  const ContinerHeaderIcon(
      {Key? key, required this.iconButton, this.configMargin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsRandom.brandLightColorBorder),
        borderRadius: const BorderRadius.all(RadiusBorde.xs),
      ),
      child: iconButton,
    );
  }
}
