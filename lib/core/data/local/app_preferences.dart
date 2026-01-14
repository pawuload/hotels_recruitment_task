import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  factory AppPreferences() => _singleton;

  AppPreferences._();

  static final AppPreferences _singleton = AppPreferences._();

  bool _isInitialized = false;
  SharedPreferences? _appPrefs;
  Future<void>? _initializationFuture;

  Future<void> initialize() async {
    if (_isInitialized) return;
    if (_initializationFuture != null) {
      await _initializationFuture;
      return;
    }
    _initializationFuture = _loadData();
    await _initializationFuture;
  }

  Future<void> _loadData() async {
    _appPrefs = await SharedPreferences.getInstance();
    _loadFavoriteHotels();
    _loadLocale();
    _isInitialized = true;
  }

  Future<void> _ensureInitialized() async {
    if (!_isInitialized) {
      await initialize();
    }
  }

  // Favorite Hotels
  static const _favoriteHotels = 'favoriteHotels';

  final favoriteHotelsValueNotifier = ValueNotifier<Set<String>>({});

  Set<String> get favoriteHotels => favoriteHotelsValueNotifier.value;

  bool isFavorite(String hotelId) {
    return favoriteHotelsValueNotifier.value.contains(hotelId);
  }

  void _loadFavoriteHotels() {
    final favoriteIds = _appPrefs?.getStringList(_favoriteHotels) ?? [];
    favoriteHotelsValueNotifier.value = favoriteIds.toSet();
  }

  Future<void> _addFavorite(String hotelId) async {
    await _ensureInitialized();
    final currentFavorites = Set<String>.from(
      favoriteHotelsValueNotifier.value,
    );
    if (currentFavorites.add(hotelId)) {
      await _appPrefs!.setStringList(
        _favoriteHotels,
        currentFavorites.toList(),
      );
      favoriteHotelsValueNotifier.value = currentFavorites;
    }
  }

  Future<void> _removeFavorite(String hotelId) async {
    await _ensureInitialized();
    final currentFavorites = Set<String>.from(
      favoriteHotelsValueNotifier.value,
    );
    if (currentFavorites.remove(hotelId)) {
      await _appPrefs!.setStringList(
        _favoriteHotels,
        currentFavorites.toList(),
      );
      favoriteHotelsValueNotifier.value = currentFavorites;
    }
  }

  Future<void> toggleFavorite(String hotelId) async {
    if (isFavorite(hotelId)) {
      await _removeFavorite(hotelId);
    } else {
      await _addFavorite(hotelId);
    }
  }

  // Locale Management
  static const _localeKey = 'locale';

  final localeValueNotifier = ValueNotifier<Locale?>(null);

  Locale? get locale => localeValueNotifier.value;

  void _loadLocale() {
    final localeCode = _appPrefs?.getString(_localeKey);
    if (localeCode != null) {
      localeValueNotifier.value = Locale(localeCode);
    }
  }

  Future<void> setLocale(Locale locale) async {
    await _ensureInitialized();
    await _appPrefs!.setString(_localeKey, locale.languageCode);
    localeValueNotifier.value = locale;
  }

  // Test-only method to reset state
  // ignore: avoid_private_typedef_functions
  void resetForTesting() {
    _isInitialized = false;
    _appPrefs = null;
    _initializationFuture = null;
    favoriteHotelsValueNotifier.value = {};
    localeValueNotifier.value = null;
  }
}
