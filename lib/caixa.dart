library caixa;
import 'package:flutter/material.dart';

class Molde {
  final Widget? child;
  final Clip clipBehavior;
  final double? height;
  final double? width;
  final Color? color;
  final DecorationImage? backgroundImage;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  final BoxShape shape;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final Color? splashColor;

  const Molde({
    this.child,
    this.clipBehavior = Clip.none,
    this.height,
    this.width,
    this.color,
    this.backgroundImage,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape = BoxShape.rectangle,
    this.margin,
    this.padding,
    this.alignment,
    this.splashColor
  });
}

class Caixa extends StatelessWidget {
  final Molde? molde;
  final Widget? child;
  final Clip clipBehavior;
  final double? height;
  final double? width;
  final Color? color;
  final DecorationImage? backgroundImage;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  final BoxShape shape;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final VoidCallback? onTap; 
  final Color? splashColor;

  const Caixa({
    super.key, 
    this.molde,
    this.child,
    this.clipBehavior = Clip.none,
    this.height,
    this.width,
    this.color,
    this.backgroundImage,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape = BoxShape.rectangle,
    this.margin,
    this.padding,
    this.alignment,
    this.onTap, 
    this.splashColor
  });

  @override
  Widget build(BuildContext context) {
    final moldeChild = molde?.child ?? child;
    final moldeColor = molde?.color ?? color;
    final moldeclipBehavior = molde?.clipBehavior ?? clipBehavior;
    final moldeBackgroundImage = molde?.backgroundImage ?? backgroundImage;
    final moldeBorder = molde?.border ?? border;
    final moldeBorderRadius = molde?.borderRadius ?? borderRadius;
    final moldeBoxShadow = molde?.boxShadow ?? boxShadow;
    final moldeGradient = molde?.gradient ?? gradient;
    final moldeBackgroundBlendMode = molde?.backgroundBlendMode ?? backgroundBlendMode;
    final moldeShape = molde?.shape ?? shape;
    final moldeMargin = molde?.margin ?? margin;
    final moldePadding = molde?.padding ?? padding;
    final moldeAlignment = molde?.alignment ?? alignment;
    final moldeHeight = molde?.height ?? height;
    final moldeWidth = molde?.width ?? width;
    final moldeSplashColor = molde?.splashColor ?? splashColor;


    final inkWell = Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: moldeBorderRadius as BorderRadius?,
          splashColor: moldeSplashColor,         
          child: Padding(
            padding: moldePadding ?? EdgeInsets.zero,
            child: moldeChild,
          ) ,
        ),
    );

    return Container(
      height: moldeHeight,
      width: moldeWidth,
      clipBehavior: moldeclipBehavior,
      margin: moldeMargin,
      padding: onTap != null ? EdgeInsets.zero :  moldePadding,
      alignment: moldeAlignment,
      decoration: BoxDecoration(
        color: moldeColor,
        image: moldeBackgroundImage,
        border: moldeBorder,
        borderRadius: moldeBorderRadius,
        boxShadow: moldeBoxShadow,
        gradient: moldeGradient,
        backgroundBlendMode: moldeBackgroundBlendMode,
        shape: moldeShape,
      ),
      child: onTap != null ?  inkWell : moldeChild,
    );

  
  }
}