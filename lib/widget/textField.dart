import 'package:flutter/material.dart';

import '../constant/ui_constant.dart';

class IdeaTextField extends StatefulWidget {
  const IdeaTextField({Key? key, required this.controller, this.label})
      : super(key: key);
  final TextEditingController controller;
  final String? label;
  @override
  State<IdeaTextField> createState() => _IdeaTextFieldState();
}

class _IdeaTextFieldState extends State<IdeaTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 10),
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.teal, width: 0.5)),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
          hintText: widget.label,
          //labelText: lable,
          // alignLabelWithHint: true,
          labelStyle: AppTextStyle.secondary2,
          hintMaxLines: 4,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}

class IdeaTextField2 extends StatefulWidget {
  const IdeaTextField2(
      {Key? key,
      required this.controller,
      required this.label,
      required this.color})
      : super(key: key);
  final TextEditingController controller;
  final String label;
  final Color color;
  @override
  State<IdeaTextField2> createState() => _IdeaTextFieldState2();
}

class _IdeaTextFieldState2 extends State<IdeaTextField2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(color: color, width: 0.5),
      //   borderRadius: BorderRadius.circular(6),
      // ),
      child: TextField(
        controller: widget.controller,
        maxLength: 2,
        // cursorHeight: 30,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderSide: BorderSide(
                // color: color == 1 ? AppColors.teal : AppColors.orange,
                color: widget.color,
                width: 0.5),
          ),
          // border: const OutlineInputBorder(),

          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3.0),
            borderRadius: BorderRadius.circular(6.0),
          ),
          //border: InputBorder.none,
          label: Center(
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(color: Colors.black, fontSize: 8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IdeaTextField3 extends StatefulWidget {
  const IdeaTextField3(
      {Key? key,
      required this.controller,
      this.onChanged,
      required this.label,
      required this.color})
      : super(key: key);
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String label;
  final Color color;
  @override
  State<IdeaTextField3> createState() => _IdeaTextField3State();
}

class _IdeaTextField3State extends State<IdeaTextField3> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(color: color, width: 0.5),
      //   borderRadius: BorderRadius.circular(6),
      // ),
      child: TextField(
        onChanged: widget.onChanged,
        controller: widget.controller,
        maxLength: 7,
        // cursorHeight: 30,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderSide: BorderSide(color: widget.color, width: 0.5),
          ),
          // border: const OutlineInputBorder(),

          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3.0),
            borderRadius: BorderRadius.circular(6.0),
          ),
          //border: InputBorder.none,
          label: Center(
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(color: Colors.black, fontSize: 8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget label(String txt) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Expanded(
        child: Text(txt,
            style: TextStyle(
              color: AppColors.teal, fontSize: 16,
              // fontWeight: FontWeight.bold
            )),
      )
    ],
  );
}

Widget label2(String txt1) {
  return Wrap(
    children: [
      Text(txt1,
          style: TextStyle(
            color: Colors.teal, fontSize: 16,
            // fontWeight: FontWeight.bold
          ))
    ],
  );
}
