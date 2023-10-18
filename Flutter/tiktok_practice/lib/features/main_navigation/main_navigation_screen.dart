import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:TikTok/constants/gaps.dart';
import 'package:TikTok/constants/sizes.dart';
import 'package:TikTok/features/discover/discover_screen.dart';
import 'package:TikTok/features/main_navigation/widgets/nav_tab.dart';
import 'package:TikTok/features/main_navigation/widgets/post_video_button.dart';
import 'package:TikTok/features/videos/video_timeline_screen.dart';

class MainNavitationScreen extends StatefulWidget {
  const MainNavitationScreen({super.key});

  @override
  State<MainNavitationScreen> createState() => _MainNavitationScreenState();
}

class _MainNavitationScreenState extends State<MainNavitationScreen> {
  int _selectedIndex = 1;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Record video"),
          ),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: _selectedIndex == 0 ? Colors.black : Colors.white,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const VideoTimelineScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const DiscoverScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: Container(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: Container(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: Container(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: _selectedIndex == 0 ? Colors.black54 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: Sizes.size16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: "Home",
                isSelected: _selectedIndex == 0,
                icon: FontAwesomeIcons.house,
                selectedIcon: FontAwesomeIcons.house,
                onTap: () => _onTap(0),
                selectedIndex: _selectedIndex,
              ),
              NavTab(
                text: "Discover",
                isSelected: _selectedIndex == 1,
                icon: FontAwesomeIcons.eye,
                selectedIcon: FontAwesomeIcons.solidEye,
                onTap: () => _onTap(1),
                selectedIndex: _selectedIndex,
              ),
              Gaps.h24,
              GestureDetector(
                child: PostVideoButton(
                  onTap: _onPostVideoButtonTap,
                ),
              ),
              Gaps.h24,
              NavTab(
                text: "Clip",
                isSelected: _selectedIndex == 2,
                icon: FontAwesomeIcons.paperclip,
                selectedIcon: FontAwesomeIcons.paperclip,
                onTap: () => _onTap(2),
                selectedIndex: _selectedIndex,
              ),
              NavTab(
                text: "My",
                isSelected: _selectedIndex == 3,
                icon: FontAwesomeIcons.faceSmile,
                selectedIcon: FontAwesomeIcons.faceSmile,
                onTap: () => _onTap(3),
                selectedIndex: _selectedIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
