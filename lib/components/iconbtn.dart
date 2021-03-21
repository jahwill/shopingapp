import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Custombtn extends StatelessWidget {
  ///custom Icon Button                   /
  final Widget icon;
  final iconColor;
  Color hoverColor;
  Color focusColor;
  var focusNode;
  Color highlightColor;
  Color splashColor;
  VisualDensity visualDensity;
  double splashRadius;
  Function onPressed;
  final bool autofocus;
  final double iconSize;
  Color disabledColor;
  String title;

  Custombtn({
    Key key,
    this.icon,
    this.disabledColor,
    this.iconColor,
    this.hoverColor,
    this.focusColor,
    this.highlightColor = Colors.grey,
    this.splashColor = Colors.blueGrey,
    this.visualDensity,
    this.focusNode,
    this.autofocus = false,
    this.splashRadius,
    this.onPressed,
    this.iconSize,
    this.title,
  })  : assert(autofocus != null),
        assert(icon != null),
        assert(splashRadius == null || splashRadius > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    final ThemeData theme = Theme.of(context);
    Color currentColor;
    if (onPressed != null)
      currentColor = iconColor;
    else
      currentColor = disabledColor ?? theme.disabledColor;

    return Semantics(
      button: true,
      enabled: onPressed != null,
      child: InkResponse(
        focusNode: focusNode,
        autofocus: false,
        canRequestFocus: onPressed != null,
        onTap: onPressed,
        mouseCursor: SystemMouseCursors.click,
        enableFeedback: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              constraints: BoxConstraints(
                  minHeight: 20, minWidth: 20, maxHeight: 40, maxWidth: 40),
              child: IconTheme.merge(
                data: IconThemeData(
                  size: iconSize,
                  color: currentColor,
                ),
                child: icon,
              ),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: iconColor),
            )
          ],
        ),
        focusColor: focusColor ?? Theme.of(context).colorScheme.primaryVariant,
        hoverColor: hoverColor ?? Colors.blueGrey[900],
        highlightColor: highlightColor,
        splashColor: splashColor ?? Theme.of(context).splashColor,
        radius: splashRadius,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<FocusNode>('focusNode', focusNode,
        defaultValue: null));
  }
}
