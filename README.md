# toggle_icon_button

An Icon button which can toggle between two given icons.

## Getting Started

Add dependency in your pubspec.yaml file as given below:-
```
dependencies:
  flutter:
    sdk: flutter
  toggle_icon_button:
    git:
      url: https://github.com/MAHakeem-MK/flutter_toggle_icon_button.git
```    
 Then,import to your page by :-
``` 
 import 'package:toggle_icon_button/toggle_icon_button.dart';
``` 
 you can use this button as:-
``` 
 ToggleIconButton(
          icon1: Icons.wb_sunny,
          icon2: Icons.cloud,
          backgroundColor: Colors.red,
          onPressed: () {
            print("You've clicked!");
          },
        ),
```


[![Demo](https://j.gifs.com/wV8NgJ.gif)]

