import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PostTile extends StatelessWidget {
  final String name;
  final String username;
  final String imageUrl;

  PostTile({required this.name, required this.username, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if(imageUrl.length==0) {
      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/1.jpg'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "@" + username,
                            style: TextStyle(),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert,color: Colors.grey,),
                  onPressed: () {},
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'This is the caption for the post. It can be a long text and it will wrap around the image.',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border,color: Colors.grey,),
                      onPressed: () {},
                    ),
                    Text("100"),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.mode_comment_outlined,color: Colors.grey,),
                      onPressed: () {},
                    ),
                    Text("32"),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border,color: Colors.grey,),
                  onPressed: () {},
                )
              ],
            ),

            Divider(
              thickness: 6.0,
            ),
          ],
        ),
      );
    }
    else {
      return Container(
       // height: 65.h,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/1.jpg'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "@" + username,
                            style: TextStyle(),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert,color: Colors.grey,),
                  onPressed: () {},
                )
              ],
            ),

            // Image
            Center(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border,color: Colors.grey,),
                      onPressed: () {},
                    ),
                    Text("100"),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.mode_comment_outlined,color: Colors.grey,),
                      onPressed: () {},
                    ),
                    Text("32"),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border,color: Colors.grey,),
                  onPressed: () {},
                )
              ],
            ),

            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'This is the caption for the post. It can be a long text and it will wrap around the image.',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Center(
                child: Container(
                  width: 95.w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Divider(thickness: 6.0,),
          ],
        ),
      );
    }
  }
}
