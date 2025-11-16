import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class DraggableTalkerButton extends StatefulWidget {
  final Talker talker;
  final GlobalKey<NavigatorState> navigatorKey;

  const DraggableTalkerButton({
    super.key,
    required this.talker,
    required this.navigatorKey,
  });

  @override
  State<DraggableTalkerButton> createState() => _DraggableTalkerButtonState();
}

class _DraggableTalkerButtonState extends State<DraggableTalkerButton> {
  Offset? position;
  Offset? startPosition;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (position == null) {
      final padding = MediaQuery.of(context).padding;
      position = Offset(padding.left + 20, padding.top + 100);
    }
  }

  void _openTalkerScreen() {
    final navigator = widget.navigatorKey.currentState;
    if (navigator != null) {
      navigator.push(
        MaterialPageRoute(
          builder: (context) => TalkerScreen(talker: widget.talker),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (position == null) return const SizedBox.shrink();

    return Positioned(
      left: position!.dx,
      top: position!.dy,
      child: GestureDetector(
        onDoubleTap: () {
          _openTalkerScreen();
        },
        onPanStart: (details) {
          startPosition = details.globalPosition;
        },
        onPanUpdate: (details) {
          setState(() {
            position = Offset(
              position!.dx + details.delta.dx,
              position!.dy + details.delta.dy,
            );
          });
        },
        onPanEnd: (details) {
          setState(() {
            final screenSize = MediaQuery.of(context).size;
            final padding = MediaQuery.of(context).padding;
            const buttonSize = 56.0;

            double newX = position!.dx;
            double newY = position!.dy;

            if (newX < padding.left) {
              newX = padding.left;
            }
            if (newY < padding.top) {
              newY = padding.top;
            }
            if (newX > screenSize.width - buttonSize - padding.right) {
              newX = screenSize.width - buttonSize - padding.right;
            }
            if (newY > screenSize.height - buttonSize - padding.bottom) {
              newY = screenSize.height - buttonSize - padding.bottom;
            }

            position = Offset(newX, newY);
            startPosition = null;
          });
        },
        child: Material(
          elevation: 4,
          shape: const CircleBorder(),
          color: Colors.blue,
          child: Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.bug_report,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
