import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  String postName;
  String postImageUrl;
  String postUrl;
  String textt;
  String like;
  String commentCount;

  PostWidget({
    super.key,
    required this.postName,
    required this.postImageUrl,
    required this.postUrl,
    required this.textt,
    required this.like,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Container(
                width: 45,
                height: 45,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(postImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Text(
                postName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/logo/option.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: size.width,
            height: size.width / 1.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(postUrl), fit: BoxFit.cover),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: [
              const Icon(
                Icons.favorite_border,
                size: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  width: size.width / 15,
                  child: Image.asset('asset/logo/bubble-chat.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  width: size.width / 15,
                  child: Image.asset('asset/logo/forward.png'),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SizedBox(
                  width: size.width / 15,
                  child: Image.asset('asset/logo/save-instagram.png'),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '$like Beğenme',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                postName,
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
            ),
            Text(
              textt,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 2),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'devamı',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 17),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:const  EdgeInsets.only(left: 10, top: 10),
              child: Text(
                '$commentCount Yorumu gör',
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('asset/images/aydin_profil.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5, top: 8),
              child: Text(
                'Yorum ekle...',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
