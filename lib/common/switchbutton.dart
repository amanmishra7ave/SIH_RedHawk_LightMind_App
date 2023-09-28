import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Track color when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.purple;
        }
        // Otherwise return null to set default track color
        // for remaining states such as when the switch is
        // hovered, focused, or disabled.
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Material color when switch is selected.
        if (states.contains(MaterialState.selected)) {
          // return Colors.amber.withOpacity(0.54);
        }
        // Material color when switch is disabled.
        if (states.contains(MaterialState.disabled)) {
          return Color.fromARGB(255, 31, 29, 29);
        }
        // Otherwise return null to set default material color
        // for remaining states such as when the switch is
        // hovered, or focused.
        return null;
      },
    );

    return Transform.scale(
      scale: 0.80, // Adjust the scale factor to change the size of the switch
      child: Switch(
        // This bool value toggles the switch.
        value: light,
        overlayColor: overlayColor,
        trackColor: trackColor,
        thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            light = value;
          });
        },
      ),
    );
  }
}






















// import 'package:flutter/material.dart';

// /// Flutter code sample for [Switch].

// class SwitchExample extends StatefulWidget {
//   const SwitchExample({super.key});

//   @override
//   State<SwitchExample> createState() => _SwitchExampleState();
// }

// class _SwitchExampleState extends State<SwitchExample> {
//   bool light = true;

//   @override
//   Widget build(BuildContext context) {
//     final MaterialStateProperty<Color?> trackColor =
//         MaterialStateProperty.resolveWith<Color?>(
//       (Set<MaterialState> states) {
//         // Track color when the switch is selected.
//         if (states.contains(MaterialState.selected)) {
//           return Colors.blue;
//         }
//         // Otherwise return null to set default track color
//         // for remaining states such as when the switch is
//         // hovered, focused, or disabled.
//         return null;
//       },
//     );
//     final MaterialStateProperty<Color?> overlayColor =
//         MaterialStateProperty.resolveWith<Color?>(
//       (Set<MaterialState> states) {
//         // Material color when switch is selected.
//         if (states.contains(MaterialState.selected)) {
//           // return Colors.amber.withOpacity(0.54);
//         }
//         // Material color when switch is disabled.
//         if (states.contains(MaterialState.disabled)) {
//           return Color.fromARGB(255, 31, 29, 29);
//         }
//         // Otherwise return null to set default material color
//         // for remaining states such as when the switch is
//         // hovered, or focused.
//         return null;
//       },
//     );

//     return Switch(
//       // This bool value toggles the switch.
//       value: light,
//       overlayColor: overlayColor,
//       trackColor: trackColor,
//       thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
//       onChanged: (bool value) {
//         // This is called when the user toggles the switch.
//         setState(() {
//           light = value;
//         });
//       },
//     );
//   }
// }
