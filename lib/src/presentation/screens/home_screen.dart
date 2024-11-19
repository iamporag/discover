import 'package:discover/src/presentation/widgets/browse_all_image.dart';
import 'package:discover/src/presentation/widgets/custom_list_tile.dart';
import 'package:discover/src/presentation/widgets/full_width_button.dart';
import 'package:discover/src/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              _topArea(),
              _newToday(context),
              _browseAll(),
              const SizedBox(
                height: 10,
              ),
              const FullWidthButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _topArea() {
    return CustomListTile(
      title: "Discover",
      style: GoogleFonts.comfortaa().copyWith(
        color: Colors.black,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _newToday(context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomListTile(
          title: "What’s new today".toUpperCase(),
          style: GoogleFonts.roboto().copyWith(
            fontSize: 13,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              width: screenWidth,
              height: 387,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: ClipRRect(
                child: Image.asset(
                  AssetsManager.IMAGE_1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CustomListTile(
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    AssetsManager.PROFILE,
                  ),
                ),
              ),
              title: "Username",
              style: GoogleFonts.roboto().copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
              subTitle: Text(
                "username@email.com",
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _browseAll() {
    return Column(
      children: [
        CustomListTile(
          title: "Browse all",
          style: GoogleFonts.comfortaa().copyWith(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
        ),
        const BrowseAllImageArea(),
      ],
    );
  }
}
