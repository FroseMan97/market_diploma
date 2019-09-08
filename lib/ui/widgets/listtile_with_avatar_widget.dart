import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListTileWithAvatarWidget extends StatelessWidget {
  final String name;
  final String imageURL;
  final Function onTap;

  ListTileWithAvatarWidget(this.name, this.imageURL, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(name),
        contentPadding: EdgeInsets.all(10),
        leading: CachedNetworkImage(
            imageUrl: imageURL,
            imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                  radius: 30,
                ),
            errorWidget: (context, url, error) => Icon(Icons.error)),
      ),
    );
  }
}
