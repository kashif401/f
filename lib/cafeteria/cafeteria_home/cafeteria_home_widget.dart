import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/food_category_chip/food_category_chip_widget.dart';
import '/utils/food_item_card/food_item_card_widget.dart';
import '/utils/section_header/section_header_widget.dart';
import '/utils/text_field/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cafeteria_home_model.dart';
export 'cafeteria_home_model.dart';

class CafeteriaHomeWidget extends StatefulWidget {
  const CafeteriaHomeWidget({super.key});

  static String routeName = 'CafeteriaHome';
  static String routePath = '/cafeteriaHome';

  @override
  State<CafeteriaHomeWidget> createState() => _CafeteriaHomeWidgetState();
}

class _CafeteriaHomeWidgetState extends State<CafeteriaHomeWidget> {
  late CafeteriaHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CafeteriaHomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ordering for',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .onSurface,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Main Office - Cafeteria',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.mulish(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.shopping_bag_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.textFieldModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TextFieldWidget(
                              label: '',
                              labelPresent: false,
                              helper: '',
                              helperPresent: false,
                              hint: 'Search for dishes...',
                              value: '',
                              onChange: '',
                              onSubmit: '',
                              leadingIcon: Icon(
                                Icons.search_rounded,
                              ),
                              leadingIconPresent: true,
                              trailingIconPresent: false,
                              variant: 'outlined',
                              error: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.foodCategoryChipModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: FoodCategoryChipWidget(
                            dotColor: FlutterFlowTheme.of(context).primary,
                            label: 'All Items',
                            selected: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.foodCategoryChipModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: FoodCategoryChipWidget(
                            dotColor: FlutterFlowTheme.of(context).success,
                            label: 'Pure Veg',
                            selected: false,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.foodCategoryChipModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: FoodCategoryChipWidget(
                            dotColor: FlutterFlowTheme.of(context).error,
                            label: 'Non-Veg',
                            selected: false,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.foodCategoryChipModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: FoodCategoryChipWidget(
                            dotColor: FlutterFlowTheme.of(context).info,
                            label: 'Beverages',
                            selected: false,
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.sectionHeaderModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: SectionHeaderWidget(
                                title: 'Today\'s Specials',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.foodItemCardModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: FoodItemCardWidget(
                                description:
                                    'Fresh greens with lemon herb chicken',
                                imgDesc:
                                    'https://dimg.dreamflow.cloud/v1/image/healthy%20grilled%20chicken%20salad%20bowl',
                                name: 'Grilled Chicken Salad',
                                price: '₹240',
                                time: '15 mins',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.foodItemCardModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: FoodItemCardWidget(
                                description:
                                    'Whole wheat wrap with crunchy garden veggies',
                                imgDesc:
                                    'https://dimg.dreamflow.cloud/v1/image/fresh%20vegetable%20wrap%20cut%20in%20half',
                                name: 'Classic Veggie Wrap',
                                price: '₹180',
                                time: '10 mins',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.foodItemCardModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: FoodItemCardWidget(
                                description: 'Served with 2 parathas and salad',
                                imgDesc:
                                    'https://dimg.dreamflow.cloud/v1/image/indian%20bento%20box%20with%20paneer%20curry%20and%20flatbread',
                                name: 'Paneer Butter Masala Bento',
                                price: '₹210',
                                time: '20 mins',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.foodItemCardModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: FoodItemCardWidget(
                                description:
                                    'Premium roasted coffee with caramel drizzle',
                                imgDesc:
                                    'https://dimg.dreamflow.cloud/v1/image/iced%20coffee%20with%20caramel%20layers',
                                name: 'Iced Caramel Macchiato',
                                price: '₹150',
                                time: '5 mins',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.sectionHeaderModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: SectionHeaderWidget(
                                title: 'Quick Bites',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.foodItemCardModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: FoodItemCardWidget(
                                description:
                                    'Triple layered sandwich with fries',
                                imgDesc:
                                    'https://dimg.dreamflow.cloud/v1/image/club%20sandwich%20with%20golden%20fries',
                                name: 'Homestyle Club Sandwich',
                                price: '₹190',
                                time: '12 mins',
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Container(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_rounded,
                                color: FlutterFlowTheme.of(context).onSurface,
                                size: 20.0,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2 Items in Cart',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .onSurface,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.2,
                                        ),
                                  ),
                                  Text(
                                    '₹420.00',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.mulish(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .onSurface,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'View Cart',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.mulish(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onSurface,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                      lineHeight: 1.2,
                                    ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: FlutterFlowTheme.of(context).onSurface,
                                size: 14.0,
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
