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
* [OctoImage](https://github.com/Baseflow/octo_image)

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
|- bindings/
|- common/
    |- storage/
    |- styles/
    |- utils/
    |- values/
|- controller/
|- data/
    |- models/
    |- provider/
    |- repositories/
|- routes/
|- ui/
    |- views/
    |- widgets/
|- main.dart
```


Now, lets dive into the lib folder which has the main code for the application.

```
1- bindings - Contains all GetX controller bindings.
2- common - Contains all the utilities/common functions  which are using throughout the app. This directory contains `constants`. `utilities`, `theme`, `strings`, `dimensions`, `storage`, `text styles`, `colors` and `path`.
3- controller - Contains all GetX controller.
4- data - Contains the data layer of your project, includes models, api providers, and repositories.
5- routes - Contains the files for routes for your application.
6- ui - Contains all the ui of your project, contains sub directory for each screen and custom widgets as per the need.
7- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```
**NOTE**: You can use [Get Cli](https://github.com/jonataslaw/get_cli) to auto generate ui pages, controllers and routes.

## Conclusion

This boilerplate template maybe seen over-architectured for what it is - but it is an example only. You can always customize it as per your preferences and need. All the issues/pull requests are welcome to make this boilerplate project more easy-to-use.