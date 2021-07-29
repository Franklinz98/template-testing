import 'package:f_social_network/presentation/theme/colors.dart';
import 'package:f_social_network/presentation/widgets/card.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String title;
  final double lat, long;
  final double? distance;
  final VoidCallback? onUpdate;

  // PostCard constructor
  LocationCard(
      {Key? key,
      required this.title,
      required this.lat,
      required this.long,
      this.distance,
      this.onUpdate})
      : super(key: key);

  // We create a Stateless widget that contais an AppCard,
  // Passing all the customizable views as parameters
  @override
  Widget build(BuildContext context) {
    return AppCard(
      title: title,
      // topLeftWidget widget as an Icon
      topLeftWidget: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          onUpdate != null
              ? Icons.my_location_outlined
              : Icons.near_me_outlined,
          color: AppColors.mountainMeadow,
        ),
      ),
      // topRightWidget widget as an IconButton or null

      topRightWidget: onUpdate != null
          ? IconButton(
              icon: Icon(
                Icons.sync_outlined,
                color: AppColors.mountainMeadow,
              ),
              onPressed: onUpdate,
            )
          : null,
      content: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Latitud:',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Longitud:',
                style: Theme.of(context).textTheme.headline3,
              ),
              if (distance != null)
                Text(
                  'Distancia:',
                  style: Theme.of(context).textTheme.headline3,
                ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$lat',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '$long',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              if (distance != null)
                Text(
                  '$distance Km',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
            ],
          ))
        ],
      ),
      /* extraContent: GridView.count(
        crossAxisCount: 2,
        children: [
          Center(
            child:
          ),

        ),


        ],
      ), */
    );
  }
}
