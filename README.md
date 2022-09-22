# GetX Boilerplate Template

A boilerplate project created in flutter using GetX and Flutter version 2.5.3.

## Getting Started

The boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components and utilities like basic app architecture, initializer, app theme, linting, constants, **api error handling** with proper errors display using `GetConnect` along with a `**retry button**` and storage using `get_storage`. Some 3rd party dependencies required to create a new project as per your preference. By using boilerplate code as standard initializer, we can have same patterns in all the projects that will inherit it if you're using GetX. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/trinhcd17/getx_boilerplate.git
```

Or simply click on the **Use this template** button and make your own repository using this template.

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**NOTE**: Don't forget to change the 'app name' and 'package name' in android, ios, pubspec and strings files.

## Boilerplate Features:

* Initializer - to intialize dependencies on startup
* Home
* Routing
* Theme
* Dynamic UI support
* GetConnect with custom retry button and error handling
* GetStorage
* GetX (State Management and Naviagtion)
* Custom Validations, widgets, dialogs, extensions and much more

### Libraries & Tools Used

* [GetX](https://github.com/jonataslaw/getx)
* [Storage](https://github.com/jonataslaw/get_storage)
* [ScreenUtil](https://github.com/OpenFlutter/flutter_screenutil/)
* [Intl](https://github.com/dart-lang/intl)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- app/
    |- config/
    |- routes/
    |- services/
    |- utils/
|- data/
    |- models/
    |- provider/
        |- api/
        |- firebase/
    |- respositories/
|- ui/
    |- controllers/
    |- views/
    |- widgets/
|- main.dart
```


## Code Standards and Best Practices

### Naming convention

- Classes, enums, typedefs, and extensions: ``UpperCamelCase``
- Libraries, packages, directories, and source files: ``lowercase_with_underscores``
- Variables, constants, parameters, and named parameters: ``lowerCamelCase``

### Use relative imports for files in lib


```diff
- DONT
import 'package:demo/src/utils/dialog_utils.dart';


+ DO
import '../../../utils/dialog_utils.dart';
```
### Specify types for class member

```diff
- DON'T
var item = 10;
final car = Car();
const timeOut = 2000;


+ DO
int item = 10;
final Car bar = Car();
String name = 'john';
const int timeOut = 20;
```

### Avoid using as instead, use is operator

```diff
- DON'T
(item as Animal).name = 'Lion';


+ DO
if (item is Animal)
  item.name = 'Lion';
```

### Use if condition instead of conditional expression

```diff
- DON'T
  return Row(
    children: [
      Text("Hello"),
      Platform.isAndroid ? Text("Android") : null,
      Platform.isAndroid ? Text("Android") : SizeBox(),
      Platform.isAndroid ? Text("Android") : Container(),
    ]
);

+ DO
return Row(
      children: 
      [
        Text("Hello"), 
        if (Platform.isAndroid) Text("Android")
      ]
);
```

### Use ?? and ?. operators

```diff
- DON'T
v = a == null ? b : a;

+ DO
v = a ?? b;


- DON'T
v = a == null ? null : a.b;

+ DO
v = a?.b;
```

### Use spread collections

```diff
- DON'T
var y = [4,5,6];
var x = [1,2];
x.addAll(y);


+ DO
var y = [4,5,6];
var x = [1,2,...y];
```

### Use Cascades Operator
```diff
- DON'T
var path = Path();
path.lineTo(0, size.height);
path.lineTo(size.width, size.height);
path.lineTo(size.width, 0);
path.close();  


+ DO
var path = Path()
..lineTo(0, size.height)
..lineTo(size.width, size.height)
..lineTo(size.width, 0)
..close(); 
```
### Use raw string
```diff
- DON'T
var s = 'This is demo string \\ and \$';


+ DO
var s = r'This is demo string \ and $';
```
### Don’t explicitly initialize variables null
```diff
- DON'T
int _item = null;


+ DO
int _item;
```
### Use expression function bodies
### Split widget into different Widgets.
### Use ListView.builder for a long list
### Use Const in Widgets