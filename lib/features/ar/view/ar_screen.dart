import 'package:deco_ar/decoar.dart';

class ARScreen extends StatelessWidget {
  const ARScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/ar_bg.jpg', fit: BoxFit.fill),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.25)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.00),
              child: SizedBox(
                width: size.width * 0.7,
                height: size.height * 0.65,
                child: const ModelViewer(
                  src:
                      'assets/models/tripo_pbr_model_360c7081-45ca-42a6-b3b5-d743a9177cd1.glb',
                  cameraControls: true,
                  autoPlay: true,
                  ar: true,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
