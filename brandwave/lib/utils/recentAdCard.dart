import "package:flutter/material.dart";

class RecentAdvertCard extends StatelessWidget {
  final String imageUrl;
  const RecentAdvertCard({
    Key? key,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 150.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Container(
              height: 60.0,
              width: 80.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                  imageUrl,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Advert name",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(220, 36, 37, 37),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "19/10/2022 - 22/10/2022",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(220, 36, 37, 37),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}