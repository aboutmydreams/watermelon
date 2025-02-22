import 'package:flutter/material.dart';

import '../tools/navigator_tool.dart';
import '../tools/screen/screen_config.dart';
import '../tools/screen/screen_extension.dart';
import '../tools/url_tool.dart';
import '../widgets/base_widget.dart';
import '../widgets/pulse.dart';

class AboutPage extends StatelessWidget {
  void _back() {
    NavigatorTool.pop();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenConfig(
      builder: () => Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text('About')),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Text('data'),
                lText(
                  'A',
                  bold: true,
                  size: 18,
                  color: Colors.grey[600],
                ),
                lText(
                  'Work',
                  bold: true,
                  size: 36,
                  color: Colors.black,
                ),
                lText(
                  'by',
                  bold: true,
                  size: 18,
                  color: Colors.grey[600],
                ),
                Image.asset(
                  'assets/images/qr.jpg',
                  width: 30.vw,
                ),
                SizedBox(height: 300),
                _topAction(),

                // lExpanded(flex: 10, child: _homeSite()),
                _madeWithLove(),
                _bottomAction(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _homeSite() {
    final url = 'https://xbox.work';
    return GestureDetector(
      onTap: () {
        UrlTool.open(url);
      },
      child: lText(
        url,
        color: Colors.blue,
      ),
    );
  }

  Widget _topAction() => Container(
        padding: EdgeInsets.all(5.vw),
        child: Row(
          children: [
            lIconButton(
              Icons.chevron_left,
              size: 10.vw,
              color: Colors.black,
              onTap: _back,
            ),
            lExpanded(),
          ],
        ),
      );

  Widget _madeWithLove() => Row(
        children: [
          lExpanded(),
          lText(
            'Made with ',
            bold: true,
            size: 18,
            color: Colors.grey[600],
          ),
          Pulse(
            child: Icon(
              Icons.favorite,
              size: 5.vw,
              color: Colors.red,
            ),
          ),
          lExpanded(),
        ],
      );

  Widget _bottomAction() => Row(
        children: [
          lExpanded(),
          lText(
            'Powered by',
            bold: true,
            size: 18,
            color: Colors.grey[600],
          ),
          lWidth(5.vw),
          FlutterLogo(size: 8.vw),
          Icon(
            Icons.close,
            size: 5.vw,
            color: Colors.black54,
          ),
          Image.asset(
            'assets/images/flame.png',
            width: 8.vw,
          ),
          lExpanded(),
        ],
      );
}
