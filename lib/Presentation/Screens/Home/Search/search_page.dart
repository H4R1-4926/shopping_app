// ignore_for_file: constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/Core/colors.dart';

import 'search_result.dart';

const S_P_Key = 'recent_search';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _recentSearches = [];

  @override
  void initState() {
    super.initState();
    _loadRecentSearches();
  }

  Future<void> _loadRecentSearches() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      _recentSearches = sp.getStringList(S_P_Key) ?? [];
    });
  }

  Future<void> _saveSearch(String search) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      _recentSearches.remove(search);
      _recentSearches.insert(0, search);
      sp.setStringList(S_P_Key, _recentSearches);
    });
  }

  Future<void> _clearRecentSearches() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.remove(S_P_Key);
    setState(() {
      _recentSearches = [];
    });
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 43, right: 5, top: 10, bottom: 10),
              child: SearchBar(
                controller: _searchController,
                autoFocus: true,
                elevation: const WidgetStatePropertyAll(0),
                leading: const Icon(
                  Icons.search_outlined,
                  color: Color.fromARGB(255, 195, 195, 195),
                ),
                trailing: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune_outlined,
                      )),
                ],
                onSubmitted: (value) {
                  _saveSearch(value);
                  _loadRecentSearches();
                },
                onChanged: (value) {
                  _loadRecentSearches();
                },
              ),
            ),
          ),
        ),
        body: Builder(builder: (context) {
          if (_recentSearches.isEmpty) {
            return Center(
              child: Text(
                'search.norecentSearch'.tr(),
                style: GoogleFonts.lato(color: Colors.grey),
              ),
            );
          } else if (_searchController.text.isNotEmpty) {
            return SearchResultPage(
              searchBarText: _searchController.text,
              searchResultLength: 15.toString(),
            );
          }
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('search.recentSearch'.tr(),
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                context.locale.languageCode == 'en' ? 16 : 12)),
                    TextButton(
                        onPressed: () {
                          _clearRecentSearches();
                        },
                        child: Text(
                          'search.clearall'.tr(),
                          style: GoogleFonts.montserrat(
                              fontSize:
                                  context.locale.languageCode == 'en' ? 14 : 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                  ],
                ),
              ),
              Expanded(
                  child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: ListView.builder(
                  itemCount: _recentSearches.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.north_east_outlined,
                        color: kGrey,
                      ),
                      title: Text(
                        _recentSearches[index],
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        _searchController.text = _recentSearches[index];
                      },
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              _recentSearches.removeAt(index);
                              SharedPreferences.getInstance().then((sp) {
                                sp.setStringList(S_P_Key, _recentSearches);
                              });
                            });
                          },
                          icon: const Icon(
                            Icons.close,
                            color: kGrey,
                          )),
                    );
                  },
                ),
              ))
            ],
          );
        }));
  }
}
