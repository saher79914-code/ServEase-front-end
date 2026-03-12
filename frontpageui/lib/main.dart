import 'package:flutter/material.dart';

void main() {
  runApp(const ServEaseApp());
}

class ServEaseApp extends StatelessWidget {
  const ServEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ServEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: const Color(0xFFF6F7F9),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF358D8A),
        ),
      ),
      home: const GetStartedScreen(),
    );
  }
}

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  static const Color primary = Color(0xFF358D8A);
  static const Color background = Color(0xFFF6F7F9);

  // Network image URLs from the original HTML
  static const String _contractorImg =
      'https://lh3.googleusercontent.com/aida-public/AB6AXuDn2yoA8rPC9Yc_14PtTqDdWovmmeB16lWCohdBW0Sd3uOzCJ3HS_DZP3mu5mVLV-Ywtf2DuHUu4cAwAtA8peeFAIDd5C1VDc_eabPiTKkhX-ZppZD_1YU6UxCwdzsb2rPmXUz6I2aVDXUxr1KnzLTfGOYrx1IEcN0oW1-a2uN-KAP1Q1mNcwwXXYc2R_OdGp3-GrOP0hcIYvEs-gZWkQVOfqZYT8QNULHmie_RsD0mWwh9PwjbKMxwi3gMB5P5zs_cd-9fh0z14B0';
  static const String _gardenImg =
      'https://lh3.googleusercontent.com/aida-public/AB6AXuACME6tIO3OSfFt4TExLLNQY5nuOUiPeHeyp6hTOG50gKrQ4dfkFoixEDLLvMvPGD3Mma_iJExr2Op4XgjxmI8heX28UXY5tmhicDyRAaoaCKvpSJsRJoGvNJZTP-tRstoImgFPtAFlnzcze34f6CTb4pOrtQR1tjLyXtgrLpAOwWtIyq2jlwKR0iiUMzIHpAInGO96xF0A_Ahp_O1iml9QlHkPrq0rcOn_J4hBmf8cdXs3MqC3uoR7vVT4s_MyVPWKdLZ-oapunWo';
  static const String _electricianImg =
      'https://lh3.googleusercontent.com/aida-public/AB6AXuDUC1NFrNJmhxPGio6ylZBs7JZUNhDj87KlV3CVksr94S5E_d9tj6LPCRMHQNbX4h8eSjNrBI-NT34h_5THik0-ul9DPAxfFBCIUjN6lwxmWeEfpyhty_KsjYTAeXf2T0eHxEovg62I2jLwBqRKxrq7fhgfXFkdpKRc03o-2ZYxe2Qs-HsON23BaMACDblqjMSe0-ux5SeyifShojmRZny6_cWK94iL3nF7a_lRHVGIMQaPcaGN0FjqyrGqs78e3vO9bDWPRi1ehgo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Stack(
          children: [
            // Background glow effects
            Positioned(
              top: -80,
              right: -60,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary.withOpacity(0.08),
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: -100,
              child: Container(
                width: 240,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary.withOpacity(0.05),
                ),
              ),
            ),

            // Main content
            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 32),

                          // Logo
                          _buildLogo(),

                          const SizedBox(height: 32),

                          // Image grid
                          _buildImageGrid(),

                          const SizedBox(height: 32),

                          // Headline
                          _buildHeadline(),

                          const SizedBox(height: 16),

                          // Subtitle
                          _buildSubtitle(),

                          const SizedBox(height: 40),

                          // Buttons
                          _buildGetStartedButton(),

                          const SizedBox(height: 16),

                          _buildLoginButton(),

                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: primary.withOpacity(0.3),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(
            Icons.handyman_rounded,
            color: Colors.white,
            size: 22,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'ServEase',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }

  Widget _buildImageGrid() {
    return SizedBox(
      height: 360,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left column - tall contractor image
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: _buildRoundedNetworkImage(
                url: _contractorImg,
                borderRadius: 24,
                height: double.infinity,
                hasOverlay: true,
              ),
            ),
          ),

          const SizedBox(width: 12),

          // Right column - two stacked images
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // Garden tools (square)
                _buildRoundedNetworkImage(
                  url: _gardenImg,
                  borderRadius: 16,
                  height: 160,
                ),

                const SizedBox(height: 12),

                // Electrician (taller)
                Expanded(
                  child: _buildRoundedNetworkImage(
                    url: _electricianImg,
                    borderRadius: 16,
                    height: double.infinity,
                    hasColorOverlay: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoundedNetworkImage({
    required String url,
    required double borderRadius,
    required double height,
    bool hasOverlay = false,
    bool hasColorOverlay = false,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              url,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: primary.withOpacity(0.1),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: primary,
                      strokeWidth: 2,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) => Container(
                color: primary.withOpacity(0.1),
                child: const Icon(Icons.image_not_supported, color: primary),
              ),
            ),
            if (hasOverlay)
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Color(0x33000000)],
                  ),
                ),
              ),
            if (hasColorOverlay)
              Container(
                color: primary.withOpacity(0.2),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadline() {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Your business,\n',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Color(0xFF111827),
              height: 1.1,
              letterSpacing: -1.0,
            ),
          ),
          TextSpan(
            text: 'simplified.',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: primary,
              height: 1.1,
              letterSpacing: -1.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubtitle() {
    return const Text(
      'Manage bookings, payments, and clients all in one place. Focus on your craft, we\'ll handle the rest.',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: Color(0xFF6B7280),
        height: 1.6,
      ),
    );
  }

  Widget _buildGetStartedButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          shadowColor: primary.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ).copyWith(
          elevation: WidgetStateProperty.all(8),
          shadowColor: WidgetStateProperty.all(primary.withOpacity(0.3)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get Started',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward_rounded, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF9CA3AF),
            ),
            children: [
              TextSpan(text: 'Already have an account? '),
              TextSpan(
                text: 'Log In',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFD1D5DB),
                  color: Color(0xFF6B7280),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}