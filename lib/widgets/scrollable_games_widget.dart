import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool _showTitle;
  final List<Game>? _gamesData;

  const ScrollableGamesWidget(
      this._height, this._width, this._showTitle, this._gamesData,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _gamesData!.map((e) {
          return Container(
            height: _height,
            width: _width * 0.30,
            padding: EdgeInsets.only(right: _width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _height * 0.80,
                  width: _width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(e.coverImage.url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                _showTitle
                    ? Text(
                        e.title,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.white, fontSize: _height * 0.08),
                      )
                    : Container()
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
