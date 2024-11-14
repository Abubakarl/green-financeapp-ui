import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'package:invoice_app/widgets/gradient_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientScreen(),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=300&h=300&dpr=1'),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Arina Grey',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Professional Freelancer',
                          style: TextStyle(
                            color: GlobalTheme.secondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  _buildProfileSection(
                    'Account',
                    [
                      _buildProfileTile(
                        'Personal Information',
                        Icons.person_outline,
                        onTap: () {},
                      ),
                      _buildProfileTile(
                        'Payment Methods',
                        Icons.credit_card,
                        onTap: () {},
                      ),
                      _buildProfileTile(
                        'Notifications',
                        Icons.notifications_none,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildProfileSection(
                    'Business',
                    [
                      _buildProfileTile(
                        'Business Profile',
                        Icons.business,
                        onTap: () {},
                      ),
                      _buildProfileTile(
                        'Invoice Templates',
                        Icons.description_outlined,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  _buildProfileSection(
                    'Other',
                    [
                      _buildProfileTile(
                        'Help & Support',
                        Icons.help_outline,
                        onTap: () {},
                      ),
                      _buildProfileTile(
                        'Terms & Privacy Policy',
                        Icons.privacy_tip_outlined,
                        onTap: () {},
                      ),
                      _buildProfileTile(
                        'Log Out',
                        Icons.logout,
                        textColor: Colors.red,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: GlobalTheme.secondaryTextColor,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: GlobalTheme.backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileTile(
    String title,
    IconData icon, {
    Color? textColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
