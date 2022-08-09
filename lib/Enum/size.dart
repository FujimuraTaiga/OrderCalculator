enum WidgetSize{
  amountColumn,
  amountForm,
  salesForm,
  salesField,
}

extension SizeExtension on WidgetSize{

  static final widgetHeight = {
    WidgetSize.amountColumn : 500.0,
    WidgetSize.amountForm   : 20.0,
    WidgetSize.salesForm    : 40.0,
    WidgetSize.salesField   : 30.0,
  };

  static final widgetWidth = {
    WidgetSize.amountForm : 70.0,
    WidgetSize.salesField : 55.0,
  };

  static final textFontSize = {
    WidgetSize.amountForm : 17.0,
  };

  double get height => widgetHeight[this]!;
  double get width => widgetWidth[this]!;
  double get fontSize => textFontSize[this]!;
}