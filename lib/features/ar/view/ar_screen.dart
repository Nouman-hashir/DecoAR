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
            child: Image.asset('assets/images/ar_bg.png', fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.25)),
          ),
          Center(
            child: SizedBox(
              width: size.width * 0.7,
              height: size.height * 0.6,
              child: const ModelViewer(
                src:
                    'assets/models/tripo_convert_329a8980-075b-47fc-bdd9-37a65ae81d58.glb',
                cameraControls: true,
                autoPlay: true,
                ar: true,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
