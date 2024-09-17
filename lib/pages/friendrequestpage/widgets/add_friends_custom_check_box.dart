

import 'package:flutter/material.dart';

class AddFriendsCustomCheckBox extends StatefulWidget {
  const AddFriendsCustomCheckBox({super.key});

  @override
  State<AddFriendsCustomCheckBox> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<AddFriendsCustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {

      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
        WidgetState.hovered,
        WidgetState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(

      checkColor: Colors.white,
      fillColor:  MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return Colors.blue;
        }
        return Colors.white;
      }),
       activeColor: Colors.yellow,


      side: BorderSide(
        color: Colors.blue
      ),
      value: isChecked,

      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
