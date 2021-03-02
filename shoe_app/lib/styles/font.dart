part of styles;
class AppFont {
  static TextStyle getAppFont({
    FontWeight fontWeight,
    double fontSize,
    Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}

class HeaderFonts{
  static final primaryText = AppFont.getAppFont(
    color:TextColor.primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final secondaryText = AppFont.getAppFont(
    color:TextColor.primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.bold
  ); 
  static final ternaryText = AppFont.getAppFont(
    color:TextColor.primaryColor,
    fontSize: 24,
  ); 
}

class TextFonts{
  static final primaryText=AppFont.getAppFont(
    color:TextColor.primaryColor,
    fontSize: 16,
  );
  static final secondaryText=AppFont.getAppFont(
    color:TextColor.secondaryColor,
    fontSize: 16,
    fontWeight: FontWeight.bold
  );
   static final ternaryText=AppFont.getAppFont(
    color:TextColor.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.bold
  );
}

class HintFonts{
  static final primaryText=AppFont.getAppFont(
    color:TextColor.primaryColor,
    fontSize:12
  );
}