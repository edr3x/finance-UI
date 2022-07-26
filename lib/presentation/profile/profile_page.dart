import 'package:finance/presentation/profile/widgets/menu_items.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile-page';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 18, right: 20, left: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF2C2C2C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(7),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.cancel_outlined,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Hero(
                  tag: 'profile-hero',
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/fa/cf/10/facf10980b28a60c9f755c59aba40d39.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const ListTile(
                title: Text(
                  "Edr3xx",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Flutter Dev.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: const <ProfileMenuItems>[
                    ProfileMenuItems(
                      title: "Corporate App",
                      icon: Icons.business_outlined,
                    ),
                    ProfileMenuItems(
                      title: "Security Settings",
                      icon: Icons.person_sharp,
                    ),
                    ProfileMenuItems(
                      title: "Online Shopping",
                      icon: Icons.shopping_cart,
                    ),
                    ProfileMenuItems(
                      title: "Groceris",
                      icon: Icons.local_convenience_store,
                    ),
                    ProfileMenuItems(
                      title: "Utilities",
                      icon: Icons.settings_sharp,
                    ),
                    ProfileMenuItems(
                      title: "Thumb Scanner",
                      icon: Icons.thumb_up_rounded,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
