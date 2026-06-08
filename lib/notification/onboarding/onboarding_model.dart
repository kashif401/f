import '/flutter_flow/flutter_flow_util.dart';
import '/utils/onboarding_slide/onboarding_slide_widget.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OnboardingSlide component.
  late OnboardingSlideModel onboardingSlideModel;

  @override
  void initState(BuildContext context) {
    onboardingSlideModel = createModel(context, () => OnboardingSlideModel());
  }

  @override
  void dispose() {
    onboardingSlideModel.dispose();
  }
}
