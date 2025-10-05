import '../../../decoar.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 80.h),
                      Text(
                        "Discover your Dream \n      furniture here",
                        style: AppTextStyles.poppins(
                          color: AppColors.green,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 50.h),
                child: AuthSwitchButton(
                  onRegister: () {
                    context.push('/signup');
                  },
                  onSignIn: () {
                    context.push('/login');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
