import 'package:flutter/material.dart'; // 플러터 패키지에서 'material.dart(앱을 구축하는 데 필요한 다양한 위젯과 클래스가 있음)' 파일을 가져온다.

class HomeScreen extends StatefulWidget { // HomeScreen 클래스는 StatefulWidget 클래스로, 위젯의 상태를 관리하고 필요할 때마다 재빌드할 수 있음.
  @override
  _HomeScreenState createState() => _HomeScreenState(); // _HomeScreenState 클래스는 HomeScreen 위젯과 연결된 상태 클래스이다.
}

class _HomeScreenState extends State<HomeScreen>{ // _HomeScreenState 클래스는 State<HomeScreen> 클래스를 확장하므로 'HomeScreen' 위젯의 상태를 유지할 수 있다.
  @override
  Widget build(BuildContext context){ // build 메서드는 위젯의 UI를 구축하는 역할을 한다. 
    Size screenSize = MediaQuery.of(context).size; // MediaQuery 는 화면의 크기를 가져와 앱을 반응형으로 만드는데 사용한다. screenSize 변수에 장치의 화면 너비와 높이가 저장된다.
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea // SafeArea 위젯은 자식 위젯 주위에 충분한 여백을 추가하여 운영 체제에 의한 방해를 피한다. 
      (child: Scaffold(
        appBar: AppBar( // AppBar은 화면 상단에 나타나는 바 위젯으로,
          title: Text('견생네컷'), // 제목으로는 견생네컷'
          backgroundColor: Colors.deepPurple, // 배경색으로는 deepPurPle을 설정한다.
          leading: Container(), // 앞으로 가기 버튼은 없다. 
          ),
          body: Column( // body는 화면의 주요 내용을 담고 있는 부분으로, 'Column' 위젯으로 구성되어 있다.
            mainAxisAlignment: MainAxisAlignment.center, // 자식 위젯을 수평과 수직으로 모두 가운데에 정렬한다. 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(child:Image.asset('images/q',))
            ],
          ),
        ),
      );
  }
}