library toggle_icon_button;

import 'package:flutter/material.dart';

class ToggleIconButton extends StatefulWidget {
  final IconData icon1;
  final IconData icon2;
  final Function onPressed;
  final TextDirection textDirection;
  final Color backgroundColor;
  ToggleIconButton(
      {@required IconData this.icon1,
      @required IconData this.icon2,
      TextDirection this.textDirection = TextDirection.ltr,
      Color this.backgroundColor,
      @required this.onPressed});
  _ToggleIconButtonState createState() => _ToggleIconButtonState();
}

class _ToggleIconButtonState extends State<ToggleIconButton> {
  IconData _currentIcon;

  @override
  void initState() {
    _currentIcon = widget.icon1;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Material(
          color: widget.backgroundColor??Theme.of(context).primaryColor,
          child: IconButton(icon: Icon(_currentIcon), onPressed: toggle)),
      textDirection: widget.textDirection,
    );
  }

  void toggle() {
    widget.onPressed();
    setState(() => _currentIcon =
        (_currentIcon == widget.icon1) ? widget.icon2 : widget.icon1);
  }
}
