import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem({super.key});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  String _selectedItem = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
                                scale: 100,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 1,
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Monirul Islam",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              height: 0.85,
                            ),
                          ),
                          Text(
                            "@monirulislam.mobileappdeveloper",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "1,297",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " Followers",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "297",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " Following",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Remix.facebook_box_fill,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Monirul Islam",
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "200+ Friends",
                                style: TextStyle(
                                  fontSize: 6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Remix.github_fill,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Monirul Islam",
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "100+ Repository",
                                style: TextStyle(
                                  fontSize: 6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Remix.linkedin_box_fill,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Monirul Islam",
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "500+ Connections",
                                style: TextStyle(
                                  fontSize: 6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Residence",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Present";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              _selectedItem == "Present" ? Colors.orange : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: _selectedItem == "Present" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Present"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Present",
                            style: TextStyle(
                              color: _selectedItem == "Present"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Permanent";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "Permanent"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  _selectedItem == "Permanent" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Permanent"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Permanent",
                            style: TextStyle(
                              color: _selectedItem == "Permanent"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Education",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Secondary School Certificate";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "Secondary School Certificate"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: _selectedItem ==
                                      "Secondary School Certificate"
                                  ? 20
                                  : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color:
                                _selectedItem == "Secondary School Certificate"
                                    ? Colors.white.withOpacity(0.95)
                                    : null,
                          ),
                          child: Text(
                            "Secondary School Certificate",
                            style: TextStyle(
                              color: _selectedItem ==
                                      "Secondary School Certificate"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Higher Secondary Certificate";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "Higher Secondary Certificate"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: _selectedItem ==
                                      "Higher Secondary Certificate"
                                  ? 20
                                  : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color:
                                _selectedItem == "Higher Secondary Certificate"
                                    ? Colors.white.withOpacity(0.95)
                                    : null,
                          ),
                          child: Text(
                            "Higher Secondary Certificate",
                            style: TextStyle(
                              color: _selectedItem ==
                                      "Higher Secondary Certificate"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Bachelor of Science";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "Bachelor of Science"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: _selectedItem == "Bachelor of Science"
                                  ? 20
                                  : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Bachelor of Science"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Bachelor of Science",
                            style: TextStyle(
                              color: _selectedItem == "Bachelor of Science"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "View Profile";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "View Profile"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  _selectedItem == "View Profile" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "View Profile"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "View Profile",
                            style: TextStyle(
                              color: _selectedItem == "View Profile"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Change Password";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "Change Password"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  _selectedItem == "Change Password" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Change Password"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                              color: _selectedItem == "Change Password"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Settings";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _selectedItem == "Settings"
                              ? Colors.orange
                              : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  _selectedItem == "Settings" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Settings"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Settings",
                            style: TextStyle(
                              color: _selectedItem == "Settings"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Communicate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Share";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              _selectedItem == "Share" ? Colors.orange : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: _selectedItem == "Share" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Share"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Share",
                            style: TextStyle(
                              color: _selectedItem == "Share"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedItem = "Rate Us";
                        });
                      },
                      child: Container(
                        // duration: const Duration(milliseconds: 150),
                        height: 35,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              _selectedItem == "Rate Us" ? Colors.orange : null,
                        ),
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              horizontal: _selectedItem == "Rate Us" ? 20 : 12),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: _selectedItem == "Rate Us"
                                ? Colors.white.withOpacity(0.95)
                                : null,
                          ),
                          child: Text(
                            "Rate Us",
                            style: TextStyle(
                              color: _selectedItem == "Rate Us"
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
