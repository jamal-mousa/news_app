import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column
    (
      mainAxisSize: MainAxisSize.min,
      children: 
      [
        ClipRRect
        (
          borderRadius: BorderRadius.circular(6),
          child: Image.network
          ('https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox
        (
          height: 15,
        ),
        Text(
          'dsxghchcghxfxxxy yutydtddyuuoy ftddtfyufidd  ftddfhuffodrrd fo7d57d5dyfsxr dsxghchcghxfxxxy yutydtddyuuoy ftddtfyufidd  ftddfhuffodrrd fo7d57d5dyfsxr' ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontSize: 20,),
        
        ),
        SizedBox
        (
          height: 15,
        ),
        Text(
          'dsxghchcghxfxxxy yutydtddyuuoy ftddtfyufidd  ftddfhuffodrrd fo7d57d5dyfsxr dsxghchcghxfxxxy yutydtddyuuoy ftddtfyufidd  ftddfhuffodrrd fo7d57d5dyfsxr' ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, fontSize: 14,),
        
        ),

      ],
    );
  }
}