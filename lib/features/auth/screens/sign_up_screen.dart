import 'package:deco_ar/decoar.dart';

class SiugnUpScreen extends StatelessWidget {
  const SiugnUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            colors: [AppColors.bgColor, AppColors.black],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Text(
                "Create Account",
                style: AppTextStyles.poppins(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Create your account to get started",
                style: AppTextStyles.poppins(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 70),
              CustomTextField(hintText: "Name"),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: "Password",
                obscureText: true,
                suffixIcon: const Icon(Icons.visibility_off),
              ),

              const SizedBox(height: 20),
              CustomTextField(
                hintText: "Phone Number",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 40),
              CustomButton(text: "Sign Up", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
