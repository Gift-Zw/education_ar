import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';
import 'package:eden_learning_app/app/modules/ar%20viewer/ar_viewer.dart';
import 'package:eden_learning_app/app/modules/course_detail/components/geo_model_body_info.dart';
import 'package:eden_learning_app/app/modules/home/components/flexible_header.dart';
import 'package:eden_learning_app/app/modules/home/flexible_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class ModelDetailView extends StatefulWidget {
  final GeoModel model;
  const ModelDetailView({required this.model, super.key});

  @override
  State<ModelDetailView> createState() => _CourseDetailViewState();
}

class _CourseDetailViewState extends State<ModelDetailView> {
  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features

    // if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.white,
        child: GestureDetector(
          onTap: () {
            Get.to<Widget>(() => ARViewer(
                  src: 'assets/Astronaut.glb',
                  title: 'Hime',
                  alt: 'Demo',
                ));
          },
          child: const Icon(
            Icons.view_in_ar_rounded,
            color: AppColors.kPrimary,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          FlexibleHeader(model: widget.model),
          SliverToBoxAdapter(
            child: ModelBodyInfo(
              model: widget.model,
            ),
          ),
        ],
      ),
    );
  }
}
