import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget implements PreferredSizeWidget {
  final double height = 56.0;
  final ValueChanged<String> onSearch;

  const MySearchBar({super.key, required this.onSearch});

  @override
  _MySearchBarState createState() => _MySearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: TextField(
        controller: _searchController,
        onChanged: (value) {
          setState(() {
            _searchText = value;
          });
          widget.onSearch(value);
        },
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: "Search...",
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: _searchText.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _searchController.clear();
                      _searchText = "";
                    });
                    widget.onSearch("");
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
