import 'package:flutter/material.dart';

class RecommendFoodSlideBar extends StatelessWidget {
  const RecommendFoodSlideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                child: const Center(
                    child: Text(
                  "บราวนี่",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                child: const Center(
                    child: Text(
                  "บราวนี่",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                child: const Center(
                    child: Text(
                  "บราวนี่",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey),
                child: const Center(
                    child: Text(
                  "บราวนี่",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
