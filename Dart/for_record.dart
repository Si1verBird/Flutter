//ignore_for_file: unused_local_variable

void main() {
  //1.0 Hello world
  print('hello world');
  print('cmd창에서 flutter doctor가 하라는대로 다 하고');
  print('launch.json까지 다 바꾸니 드디어 run이 된다.');


  //1.1 The Var keyword
  var name = '은세'; //변수 방법 1. 함수, 메소드 내부 지역 변수 선언시
  //name = 1; ->name 이 string 타입임을 알고 있으므로 매치안됨.
  name = 'eunse'; //는 가능.
  String name1 = '은세'; //변수 방법 2. 변수 타입으로. class, property


  //1.2 Dynamic Type
  var name2; //혹은 dynamic name;
  name2 = 'nico';
  name2 = 12;
  name2 = true; //다 가능. 왜냐면 var이 dynamic이라서.
  dynamic name2_2;
  if (name2_2 is String) {
    //와 같이 name의 타입에 따라 추출가능. 이제 name이 string이라는걸 안다.
    //name2_2.isEmpty : isEmpty 는 string의 특성
  }


  //1.3 Nullable Variables : 개발자가 null을 참조할 수 없도록 함. (런타임 에러)
  //without null safety
  bool isEmpty(String string) => string.length == 0;
  isEmpty(null); //NoSuchMethodError bcz string 가야하는 곳에 null 감.
  //null에는 length 없음. null = absence
  //어떤 변수가 null이 될 수 있음을 명시하면 된다.
  String? nico = 'nico'; //?를 추가하면 null일 수도 있다는 뜻.
  nico = null;
  if (nico != null) {
    //바로 isNotEmpty하면 안됨. null일 수도 있으니.
    nico.isNotEmpty;
  }
  nico?.isNotEmpty; //도 if~와 같음. nico?.했을 때 isNotEmpty있으면 가능한거.


  //1.4 Final Variables - 수정 불가하게 변수 정의하기
  final name4 = 'nico'; //혹은 final String name = 'nico
  name4 = 'eunse'; //불가능
  //사용자가 앱을 이용하는 중에 쓰는 입력값 가능. 


  //1.5 Late Variables - data fetching에 매우 유용!
  late final String name5; //나중에 name5 뭔지 쓰겠다. 
  //do something, ex)API
  name5 = 'eunse'; 
  name5 = 'nico'; //불가능. final이니까 한번 값이 들어가면 수정안됨. 


  //1.6 Constant Variables - 앱스토어에 올리기 전에 알고있는 값에 대해
  const name6 = 'nico'; //compile time, 즉 컴파일이 될 때 알고 있어야하는 값. 
  const API = fetchApi(); //불가능. const 말고 final이 되어야함. 
  name6 = '12';


  //1.7 Recap "Variables"
  int i = 12;
  var name7 = 'la';
  i = 121212;
  name7 = 'lalalala'; //(수정가능)타입을 이용하는거. method나 함수 내에서는 컴파일러가 알아서 해주므로 var 이용
  
  final name7_2 = 'na';
  name7_2 = 'eunse'; //(수정불가)
  
  dynamic name; //어떤 변수도 될 수 있으므로 조심해야해!
  const api_key = '1212121212'; //app store 올리기 전에 아는것. 

  String monkey;
  monkey = null; //불가능!! String? 일때만 nullable.


  //2.0 Basic Data Types
  String naame = 'nico';
  bool alive = true;
  int age = 12; //abstract class double extends num
  double money = 69.99;;

  num x = 12;
  x = 1.1; //num은 int와 double의 엄마.


  //2.1 Lists - collection if, collection for!
  var numbers = [1,2,3,4,]; //대괄호로 자동 리스트 생성
  List<int> numbers2 = [1,2,3,4,]; //int로 이루어진 List 만들거다!
  numbers.last;

  var giveMeFive = true;
  var numbers3 = [1,2,3,4,if(giveMeFive) 5,]; //givemeFive가 true이면 5도 element. 
  //if (giveMeFive) { numbers.add(5);} 와 동일. 
  print(numbers3);


  //2.2 String Interpolation
  //변수 그대로 쓸 때
  var name = 'eunse';
  var greeting = 'Hi, my name is $name, nice to meet you.'; //큰 따옴표도 가능
  //변수에 변화를 주기  
  var age =10;
  var greeting = "Hi, my name is $name and I\'m ${age+2}."; // \는 escape 기호.


  //2.3 Collection for
  var oldFriends = ['nico','elli',];
  var newFriends = ['Julie', 'Selena',
          for(var friend in oldFriends) "happy $friend",]; //요소 추출 
  print(newFriends); // print 결과 : Julie Selena happy nico happy elli

  
  //2.4 Maps
  var player = {
    'name': 'nico', 'xp':19.99, 'superpower':false,
  };  //key(string) : value(object,즉 anything)
  
  Map<int, bool> player = {
    1:true, 2: false, 3: true, 
  };  //로 key와 value의 자료형을 정해놓고 쓸 수 있다. 

  Map<List<int>, bool> player = {
    [1,2,3,4,]:true,
  };  //와 같이 crazy key 설정~

  //map을 너무 많이 쓰기보다는 class를 이용하는게 유용. 


  //2.5 Sets
  var Numbers ={1,2,3,4}; //set 생성함. 
  Set<int> NUmbers = {1,2,3,4};
  NUmbers.add(1);
  NUmbers.add(1);
  print(NUmbers); //{1,2,3,4} 출력. set의 elements들은 unique해서 중복 추가 안됨.
  
  List<int> NUmbers = [1,2,3,4]; //에 add, print 했다면 [1,2,3,4,1,1] 출력되었을 것. 


  //3.0 Defining a Function
  String sayHello(String potato){
    return "Hello $potato nice to meet you.";
  }
  //void main(){ print(sayHello('nico')); } -> sayHello가 "Hello ~"를 return


  //3.1 Named Parameters
  String sayHello2({ //+)아래와 같이 변수에 디폴트 값 설정 가능. 
    String name='anon', 
    int age = 99, 
    String country = 'wakanda'
    }){
    return "Hello $name, you are $age, from $country";
  }  //parameters에 {} 중괄호를 쳐주면 own name이 되어서 아래와 같이 가능

  //void main(){
  //print(sayHello(age:12, country:'cuba', name:'nico'));
  //} -> parameter 순서 무관하게 이름으로 값을 넣어줄 수 있음. 

  String sayHello_required({ 
    required String name='anon', //required -> 반드시 필요한 변수로 만들어준다. 
    int age = 99, 
    String country = 'wakanda'
    }){
    return "Hello $name, you are $age, from $country";
  }

  //3.2 Recap - parameters
/*  1) Positional Parameters: 순서대로 값을 입력해주어야 함. 
    각각의 위치를 기억해야하는 귀찮음. 좋지 않은 방법!!
    2) Named Parameters: 변수가 own name을 가지므로 위치와 무관하게 값을 넣어주면 됨. 
    parameters를 둘러싸는 중괄호를 넣어줘서 사용가능.
 -  null error 발생하는걸 방지하려면: 1) required 변수로 만들어서 null일 때는 함수 컴파일 자체가 되지 않도록 한다.
 - 2) default 설정할 수 있지만, 반드시 입력을 받아야하는 상황 존재. (로그인 등) */
}

  //3.3 Optional Positional Parameters
String sayHello(String name, int age, [String? country = 'Korea']) =>
'Hello $name, you are $age, from $country.';
//name, age는 필수. country는 not required & 디폴트 있음.
/* 정리: 1) 없어도 되는 변수에 대괄호.
         2) 물음표를 통해 nullable로 만들어줌. 3) 디폴트 설정*/

void main() {
  // cf. sayHello(1,2); //는 positional parameters
  sayHello('eunse',22); //country는 Korea(디폴트)로 들어갔을것. 
}

  //3.4 QQ Operator (??) - 다른 연산자도 다 있지만 얜 특별. 
String capitalizeName(String? name) {
  if(name != null){
    return name.toUpperCase(); 
  }
  return 'ANON';
}
//혹은 fat arrow를 이용해서 아래와 같게. 
String capitalizeName(String? name) => name !=null? name.toUpperCase() : 'ANON'; //name != null 이면 toUpperCase, name == null이면 anon. 

//혹은 ?? 이용. left ?? right 에서 left가 null이면 return right, left가 null 아니면 return left. 
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON'; //name이 null이 될 수 있으니 name?.

void main(){
  capitalizeName('eunse');
  capitalizeName(null);
}

void main)(){
  String? name;
  name ??= 'nico';
  name ??= 'another'; //name이 null이라 nico 들어갔으니 실행 안됨. 
  print(name); // nico 출력. 
}


  //3.5 Typedef - type이 헷갈릴 때 alias 만들기. 
List<int> reverseListOfNumbers(List<int> list){
  var reversed = list.reversed;
  return reversed.toList();
}
//typedef ver.
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

void main(){
  print(reverseListOfNumbers([1,2,3])); 
}  //[3,2,1] 출력. 
typedef UserInfo = Map<String, String>;
String sayHi(Map<String, String> userInfo){ //와 같이 간단한 Map, Set에 이용. 복잡한건 class.
  return "Hi ${userInfo['name']};
}
void main() {
  sayHi({"name":'nico'});
}


  //4.0 Your First Dart Class
class Player { //class 내에선 타입을 명시한 parameter가 필요.
  final String  name = 'nico'; //name 못 바꾼다. 
  int xp = 1500;

  void sayhello(){
    print("Hi my name is $name"); //this.name은 겹치는거 없으면 안씀
  }
}

void main() {
  var player = Player(); //instance 형성
  print(player.name);
  player.name = 'lalalalala'; //로 수정 가능. (얜 final이라 불가)
  player.sayHello(); // Hi my name is ## 프린트. 
}


  //4.1 Constructors - argument로 이름과 xp 전달하기
class Player { 
  late final String  name;
  late int xp;
  
  Player(String name, int xp){
    this.name = name;
    this.xp = xp; //값들을 입력받을 것임을 알려줌. 
  }

void sayhello(){
    print("Hi my name is $name");씀
  }
}

void main() {
  var player = Player("nico", 1500); 
  player.sayHello(); 
  var player2 = Player("eunse", 2500); 
  player2.sayHello();
}

    //contructor version
class Player { 
  final String  name;
  int xp;
  
Player(this.name, this.xp); //이렇게 입력받을 것임을 알려줌. 

void sayhello(){
    print("Hi my name is $name"); 
  }
}

void main() {
  var player = Player("nico", 1500); 
  player.sayHello(); 
  var player2 = Player("eunse", 2500); 
  player2.sayHello();
}


  //4.2 Named Constructor Parameters
/* 위는 positional arguments 였다. arguments 많아지면 입력하기 복잡해!
중괄호로 감싸면 named로 만들 수 있음. */
class Player {
  final String name;
  int xp;
  String team;
  int age; //타입 선업

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age}); //make them "required"

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(
    name: "eunse",
    xp: 1200,
    team: 'blue',
    age: 21,
  );
}


  //4.3 Named Constructors
class Player {
  final String name, team;
  int xp, age; //타입 선업

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age}); //make them "required"

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
  //createBluePlayer은 named된 name, age parameter를 받음
  // ":"은 age, name은 constructor에서 입력받은 값을 가짐. team, xp는 초기화!!

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var bluePlayer = Player.createBluePlayer(
    name: "eunse",
    age: 21,
  );
  var redPlayer = Player.createRedPlayer(
    "eunse",
    21, //위에 만든 createRedPlayer은 positional 이므로
  );
}


  //4.4 Cascade Notation
class Player {
  final String name;
  String team;
  int xp, age; 

  Player.fromJson(Map<String, dynamic> playerJson) 
    : name = playerJson['name'], //class 내부 name을 key = 'name'인 값 가져와 넣음
      xp = playerJson['xp'],
      team = playerJson['team'];
  //player class 생성과 초기화

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name":"nico",
      "team":"red",
      "xp":0.
    },
      {
      "name":"eunse",
      "team":"red",
      "xp":0.
    },
      {
      "name":"lynn",
      "team":"red",
      "xp":0.
    },
  ];
  apiData.forEach((playerJson) { 
    var player = Player.formJson(playerJson);
    player.sayHello();
  })
}


  //4.5 Cascade Notation
class Player {
  String name;
  String team;
  int xp, age;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: 'red');
  nico.name = 'las';
  nico.xp = 120000;
  nico.team = 'blue'; //처럼 반복되는 nico들 대신 casade. 
}
//casade version 
void main() {
  var nico = Player(name: 'nico', xp: 1200, team: 'red') // ';' 삭제
  ..name = 'las' // '.' = nico! (바로 앞에 있는 녀석을 참조한다.)
  ..xp = 120000
  ..team = 'blue'; 
  ..sayHello(); //도 가능
}


  //4.6 Enums - 변수에 선택지 만들기
enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  Team team; //team은 이제 string이 아니라 red or blue
  XPLevel xp; 
  int age;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: XPLevel.beginner, team: Team.blue); //변경
  nico.name = 'las';
  nico.xp = 120000;
  nico.team = 'blue'; //처럼 반복되는 nico들 대신 casade.
}

//casade version
void main() {
  var nico = Player(name: 'nico', xp: 1200, team: 'red') // ';' 삭제
    ..name = 'las' 
    ..xp = XPLevel.pro //변경
    ..team = Team.red //변경
    ..sayHello(); 
}


  //4.7 Abstract Classes - 큰그림 미리 잡아놓고 class 만들기
abstract class Human {
  void walk();
}

enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player extends Human{
  String name;
  Team team; //team은 이제 string이 아니라 red or blue
  XPLevel xp;
  int age;

  Player({required this.name, required this.xp, required this.team});

  void walk() {
    print("I'm walking.");
  }
}


  //4.8 Inheritance
class Human {
  final String name;
  Human(this.name);
  void sayHello() {
    print("Hi I'm $name.");
  }
}

enum Team { blue, red }

class Player extends Human {
  //bring everything from human class
  final Team team;
  Player({
    required this.team,
    required String name, //를 human에게 전달. 

  })
}

void main() {
  var player = Player(team: Team.blue);
}