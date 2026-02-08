import 'package:flutter/material.dart';
import 'questionnaire_screen.dart';

/// Authentication screen with OTP-based login.
///
/// Collects user's name and phone number, sends OTP (mock),
/// and verifies before allowing access to the app.
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  /// Whether to show OTP field
  bool showOtpField = false;

  /// Sends OTP to the user's phone (mock implementation)
  void _sendOtp() {
    if (_formKey.currentState!.validate()) {
      // Here you would call your Backend API to trigger SMS
      setState(() {
        showOtpField = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("OTP sent to your mobile number")),
      );
    }
  }

  /// Verifies OTP and navigates to questionnaire
  void _verifyOtpAndLogin() {
    // Mock Verification: Accept any 4 digit OTP
    if (_otpController.text.length == 4) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DynamicQuestionnaireScreen(userName: _nameController.text),
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Invalid OTP. Try 1234.")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(
                Icons.school_rounded,
                size: 80,
                color: Color(0xFF1E88E5),
              ),
              const SizedBox(height: 20),
              const Text(
                "RoadAhead",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E88E5),
                ),
              ),
              const Text(
                "Your Career. Your Future.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name Field
                    TextFormField(
                      controller: _nameController,
                      enabled: !showOtpField,
                      decoration: const InputDecoration(
                        labelText: "Your Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (v) => v!.isEmpty ? "Required" : null,
                    ),
                    const SizedBox(height: 16),

                    // Phone Field
                    TextFormField(
                      controller: _phoneController,
                      enabled: !showOtpField,
                      decoration: const InputDecoration(
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone_android),
                        hintText: "For SMS Notifications",
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (v) =>
                          (v!.length < 10) ? "Enter valid mobile" : null,
                    ),
                    const SizedBox(height: 16),

                    // OTP Field (Conditional)
                    if (showOtpField)
                      TextFormField(
                        controller: _otpController,
                        decoration: const InputDecoration(
                          labelText: "Enter OTP",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock_clock),
                          helperText: "Mock OTP: Enter 1234",
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                      ),

                    const SizedBox(height: 30),

                    // Button Logic
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: showOtpField ? _verifyOtpAndLogin : _sendOtp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E88E5),
                          foregroundColor: Colors.white,
                        ),
                        child: Text(
                          showOtpField ? "Verify & Enter" : "Get OTP",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
