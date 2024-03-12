import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CatBlock extends StatelessWidget {
final imageUrl;
  CatBlock({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
 
 @override
Widget build(BuildContext context) {
  
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              stops: const [0.2, 0.9],
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
            
          ),
          child: Stack(
            fit: StackFit.expand,
            children: 
              [
                const Align(child: Icon(Icons.image,size: 50,)), 
                ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(imageUrl: imageUrl,fit: BoxFit.cover,),
              ),
            ],
          ),
        );
      }
    }
  