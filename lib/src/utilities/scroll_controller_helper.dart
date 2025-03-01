import 'package:flutter/widgets.dart';

class ScrollControllerHelper {
  final ScrollController _controller;

  ScrollControllerHelper({ScrollController? controller})
      : _controller = controller ?? ScrollController();

  ScrollController get controllerInstance => _controller;

  void scrollToTop({Duration? duration, Curve? curve}) {
    if (_controller.hasClients) {
      _controller.animateTo(
        0.0,
        duration: duration ?? Duration(milliseconds: 500),
        curve: curve ?? Curves.easeInOut,
      );
    }
  }

  void scrollToBottom({Duration? duration, Curve? curve}) {
    if (_controller.hasClients) {
      _controller.animateTo(
        _controller.position.maxScrollExtent,
        duration: duration ?? Duration(milliseconds: 500),
        curve: curve ?? Curves.easeInOut,
      );
    }
  }

  void dispose() {
    _controller.dispose();
  }
}
