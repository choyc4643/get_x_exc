import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ScreenTwo.dart';

class GetxNavigationScreen extends StatefulWidget {
  @override
  _GetxNavigationScreenState createState() => _GetxNavigationScreenState();
}

class _GetxNavigationScreenState extends State<GetxNavigationScreen> {
  int returnVal = 0;
  Transition transition = Transition.cupertino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Get.back();
        },
      )),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (_) => ScreenTwo(),
                  //   )
                  // );

                  Get.toNamed("/two/hello?id=123&num=222");
                },
                child: Text(
                  'Screen Two 이동',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.off(ScreenTwo());
                },
                child: Text(
                  '전 페이지로 돌아가지 못하게하기',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(
                  //     builder: (_) => ScreenTwo(),
                  //   ),
                  //   (route) => false,
                  // );

                  Get.offAll(ScreenTwo());
                },
                child: Text(
                  '모든 페이지 스택 삭제하기',
                ),
              ),
              Divider(),
              Text(
                '리턴값 : $returnVal',
              ),
              Divider(),
              RaisedButton(
                onPressed: () {
                  Get.to(
                    ScreenTwo(),
                    transition: Transition.fadeIn,
                  );
                },
                child: Text(
                  '트랜지션',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.toNamed('/five/test?id=444&name=cf');
                },
                child: Text(
                  '네임드 라우트',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.snackbar(
                    '제목',
                    '내용',
                  );
                },
                child: Text(
                  'Snackbar',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.defaultDialog(middleText: 'Dialog');
                },
                child: Text(
                  'Dialog',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      color: Colors.white,
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                              leading: Icon(Icons.music_note),
                              title: Text('Music'),
                              onTap: () => {}),
                          ListTile(
                            leading: Icon(Icons.videocam),
                            title: Text('Video'),
                            onTap: () => {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  'Bottom Sheet',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Get.toNamed("/state");
                },
                child: Text(
                  'State Screen 이동',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
