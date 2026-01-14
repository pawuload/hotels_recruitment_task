# Hotels Flutter App

![App Walkthrough](assets/readme/presentation.gif)

A Flutter hotel booking application built with clean architecture principles, featuring a bottom navigation bar with
four tabs (Overview, Hotels, Favorites, and Account), state management using BLoC, and comprehensive error handling.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Configuration & Setup](#configuration--setup)
- [Running the Project](#running-the-project)
- [Architecture](#architecture)
- [Key Functions](#key-functions)
- [Key Design Decisions](#key-design-decisions)
- [Testing](#testing)
- [Localization](#localization)
- [Project Structure](#project-structure)
- [API Configuration](#api-configuration)

---

## Features

### Core Features

1. **Bottom Navigation Bar**
    - Four tabs: Overview, Hotels, Favorites, and Account
    - Smooth tab-based navigation using Auto Route

2. **Hotels Tab**
    - Displays hotel cards with comprehensive information
    - Loading spinner while fetching data from API
    - Error state handling for failed API calls
    - Hotel details page with full information

3. **Favorites Tab**
    - Add/remove hotels to favorites using heart icon
    - Persistent local storage of favorite hotels
    - Display list of favorited hotels

4. **Error Handling**
    - Comprehensive error states for API failures
    - User-friendly error messages

5. **Localization**
    - Support for multiple languages (English, German, Polish)
    - Dynamic locale switching
    - Persistent locale preference

### Technical Features

- **State Management**: BLoC pattern for predictable state management
- **Navigation**: Auto Route for type-safe navigation
- **Local Storage**: SharedPreferences for favorite hotels persistence
- **Code Generation**: Freezed for immutable data classes, JSON serialization
- **Testing**: Comprehensive unit and widget tests

---

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK**: Version 3.35.0 or higher
- **Dart SDK**: Version 3.9.0 or higher
- **IDE** with Flutter extensions (ex. VS Code, IntelliJ)
- **Xcode** (for iOS development on macOS)
- **Git** for version control

### Verify Installation

```sh
flutter --version
dart --version
```

---

## Configuration & Setup

### 1. Clone the Repository

```sh
git clone <repository-url>
cd hotels
```

### 2. Install Dependencies

```sh
flutter pub get
```

### 3. Generate Code

The project uses code generation for:

- Auto Route navigation (`app_router.gr.dart`)
- Freezed data classes
- JSON serialization

Generate the required code:

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

Or use the watch mode for continuous generation during development:

```sh
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 4. Generate Localizations

Localization files are automatically generated when you run the app, but you can generate them manually:

```sh
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

### 5. Platform-Specific Setup

#### iOS Setup

1. Navigate to the `ios` directory
2. Run `pod install` (if needed):
   ```sh
   cd ios
   pod install
   cd ..
   ```

#### Android Setup

- Minimum SDK: 21 (Android 5.0)
- The project is configured with flavors (development, staging, production)

---

## Running the Project

This project contains **3 flavors** for different environments:

- **development** - Development environment
- **staging** - Staging environment
- **production** - Production environment

### Using Command Line

```sh
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

### Using IDE

#### VS Code / IntelliJ

Use the launch configurations provided in `.vscode/launch.json` or run configurations in IntelliJ to select the desired
flavor.

### Platform-Specific Commands

```sh
# Run on specific device
flutter run --flavor development --target lib/main_development.dart -d <device-id>

# List available devices
flutter devices

# Run on iOS Simulator
flutter run --flavor development --target lib/main_development.dart -d ios

# Run on Android Emulator
flutter run --flavor development --target lib/main_development.dart -d android
```

---

## Architecture

The project follows **Clean Architecture** principles with clear separation of concerns across three main layers:

### Layer Structure

```
lib/
├── core/                  # Shared core functionality
│   ├── data/              # Core data layer (API config, local storage)
│   └── presentation/      # Core presentation (theme, router, widgets)
├── features/              # Feature modules
│   ├── hotels/            # Hotels feature
│   │   ├── data/          # Data layer (API, DTOs, repositories)
│   │   ├── domain/        # Domain layer (entities, repositories)
│   │   └── presentation/  # Presentation layer (UI, BLoC)
│   ├── favorites/         # Favorites feature
│   ├── overview/          # Overview feature
│   └── account/           # Account feature
└── l10n/                  # Localization files
```

### Architecture Layers

#### 1. **Domain Layer** (`features/*/domain/`)

- **Entities**: Pure Dart classes representing business objects
- **Repository Interfaces**: Abstract contracts for data operations
- **Business Logic**: Core business rules (independent of frameworks)

**Example**: `Hotel` entity, `HotelsRepository` interface

#### 2. **Data Layer** (`features/*/data/`)

- **Data Sources**: API clients, local storage implementations
- **DTOs (Data Transfer Objects)**: JSON serializable models
- **Repository Implementations**: Concrete implementations of domain repositories
- **Mappers**: Convert DTOs to entities

**Example**: `HotelsApi`, `HotelDto`, `ApiHotelsRepository`

#### 3. **Presentation Layer** (`features/*/presentation/`)

- **BLoC/Cubit**: State management (HotelsCubit)
- **Pages**: Screen widgets
- **Views**: UI composition
- **Widgets**: Reusable UI components

**Example**: `HotelsPage`, `HotelsCubit`, `HotelCard`

### Data Flow

```
UI (Widget) 
  → BLoC/Cubit (State Management)
    → Repository Interface (Domain)
      → Repository Implementation (Data)
        → Data Source (API/Local Storage)
          → DTO → Entity → State → UI
```

### Key Architectural Patterns

1. **Dependency Inversion**: Domain layer defines interfaces, data layer implements them
2. **Separation of Concerns**: Each layer has a single responsibility
3. **BLoC Pattern**: Predictable state management with clear event/state flow
4. **Repository Pattern**: Abstraction over data sources
5. **Dependency Injection**: Manual dependency injection through constructors

---

## Key Functions

### State Management

#### `HotelsCubit.fetchHotels()`

- Fetches hotels from the repository
- Manages loading, success, and error states
- Emits appropriate states for UI updates

**Location**: `lib/features/hotels/presentation/cubit/hotels_cubit.dart`

### Data Persistence

#### `AppPreferences.toggleFavorite(String hotelId)`

- Toggles favorite status of a hotel
- Persists changes to SharedPreferences
- Updates ValueNotifier for reactive UI updates

**Location**: `lib/core/data/local/app_preferences.dart`

#### `AppPreferences.setLocale(Locale locale)`

- Sets and persists user's preferred locale
- Updates app locale dynamically

### API Communication

#### `HotelsApi.getHotels()`

- Fetches hotel data from remote API
- Returns DTOs for conversion to domain entities
- Handles HTTP errors

**Location**: `lib/features/hotels/data/data_sources/api/hotels_api.dart`

### Navigation

#### `AppRouter`

- Type-safe navigation using Auto Route
- Handles tab-based navigation

**Location**: `lib/core/presentation/router/app_router.dart`

### Bootstrap

#### `bootstrap()`

- Initializes app-wide services
- Sets up BLoC observer for debugging
- Initializes AppPreferences
- Precaches SVG icons for performance

**Location**: `lib/core/presentation/bootstrap.dart`

---

## Key Design Decisions

### 1. **Clean Architecture**

**Decision**: Implemented clean architecture with clear layer separation.

**Rationale**:

- Maintainability: Easy to locate and modify code
- Testability: Each layer can be tested independently
- Scalability: Easy to add new features without affecting existing code
- Framework Independence: Domain layer is pure Dart

### 2. **BLoC Pattern for State Management**

**Decision**: Used BLoC (Business Logic Component) pattern with Cubit for state management.

**Rationale**:

- Predictable state flow
- Easy to test business logic
- Separation of UI and business logic
- Built-in support for async operations

**Implementation**: `HotelsCubit` manages hotel list state (loading, success, error)

### 3. **Auto Route for Navigation**

**Decision**: Used Auto Route instead of Navigator 2.0 or go_router.

**Rationale**:

- Type-safe navigation (compile-time route checking)
- Code generation reduces boilerplate
- Built-in support for nested navigation (tabs)
- Easy to extend for deep linking

### 4. **SharedPreferences for Local Storage**

**Decision**: Used SharedPreferences instead of SQLite or Hive for favorites storage.

**Rationale**:

- Simple key-value storage is sufficient for favorites (Set<String>)
- No complex queries needed
- Lightweight and fast
- Easy to implement and test

**Trade-off**: If favorites needed complex data, SQLite would be better.

### 5. **Freezed for Immutable Data Classes**

**Decision**: Used Freezed for entity and DTO classes.

**Rationale**:

- Immutability prevents bugs
- Built-in `copyWith`, `==`, `hashCode`
- Pattern matching support
- JSON serialization integration

### 6. **Fast Immutable Collections**

**Decision**: Used `fast_immutable_collections` for immutable lists.

**Rationale**:

- Performance: Faster than standard immutable collections
- Type safety: `IList` provides compile-time guarantees
- Better for BLoC state (immutable states)

### 7. **Feature-Based Organization**

**Decision**: Organized code by features rather than by layers.

**Rationale**:

- Easier to locate feature-specific code
- Better scalability (add new features without touching existing ones)
- Clear feature boundaries
- Easier for team collaboration

### 8. **ValueNotifier for Reactive Preferences**

**Decision**: Used ValueNotifier for favorite hotels and locale changes.

**Rationale**:

- Simple reactive updates without full BLoC overhead
- Efficient for simple state (Set<String>, Locale)
- Easy to listen in widgets

### 9. **Code Generation Strategy**

**Decision**: Used code generation for routes, serialization, and immutable classes.

**Rationale**:

- Reduces boilerplate code
- Type safety at compile time
- Less runtime errors
- Easier maintenance

### 10. **Multi-Flavor Support**

**Decision**: Implemented three flavors (development, staging, production).

**Rationale**:

- Different API endpoints per environment
- Different configurations
- Easy to test in different environments
- Industry best practice

### 11. **Localization Implementation**

**Decision**: Implemented full localization support with three languages.

**Rationale**:

- Bonus requirement from assignment
- Better user experience
- Easy to add more languages
- Follows Flutter best practices

### 12. **Widget Composition**

**Decision**: Created reusable widgets (LoadingStateWidget, ErrorStateWidget, etc.).

**Rationale**:

- DRY principle (Don't Repeat Yourself)
- Consistent UI across the app
- Easier to maintain and update
- Better testability

### 13. **Error Handling Strategy**

**Decision**: Comprehensive error handling at multiple levels.

**Rationale**:

- User-friendly error messages
- Proper error states in UI
- Logging for debugging
- Graceful degradation

---

## Testing

### Running Tests

Run all tests with coverage:

```sh
very_good test --coverage --test-randomize-ordering-seed random
```

Or using Flutter directly:

```sh
flutter test --coverage
```

### Viewing Coverage Report

```sh
# Generate HTML coverage report
genhtml coverage/lcov.info -o coverage/

# Open coverage report (macOS)
open coverage/index.html

# Open coverage report (Linux)
xdg-open coverage/index.html

# Open coverage report (Windows)
start coverage/index.html
```

### Test Structure

```
test/
├── app/                  # App-level tests
├── core/                 # Core functionality tests
│   ├── data/             # Data layer tests
│   └── presentation/     # Presentation layer tests
├── features/             # Feature tests
│   └── hotels/           # Hotels feature tests
│       ├── data/         # Repository tests
│       └── presentation/ # BLoC and widget tests
└── helpers/              # Test helpers and mocks
```

### Test Types

1. **Unit Tests**: Test business logic, repositories, data sources
    - Example: `hotels_cubit_test.dart`, `api_hotels_repository_test.dart`

2. **Widget Tests**: Test UI components and user interactions
    - Example: `hotel_card_test.dart`, `error_state_widget_test.dart`

### Test Helpers

- `pump_app.dart`: Helper for widget testing with proper localization setup
- `mocks.dart`: Mock objects for testing
- `helpers.dart`: Common test utilities

---

## Localization

The app supports multiple languages:

- **English** (en) - Default
- **German** (de)
- **Polish** (pl)

### Adding New Strings

1. Open `lib/l10n/arb/app_en.arb`
2. Add a new key-value pair:

```arb
{
    "@@locale": "en",
  "hotelName": "Hotel Name",
  "@hotelName": {
    "description": "Label for hotel name"
    }
}
```

3. Add translations to other language files (`app_de.arb`, `app_pl.arb`)
4. Generate localizations:

```sh
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

### Using Localizations

```dart
import 'package:hotels/l10n/l10n.dart';

  final l10n = context.l10n;
Text(l10n.hotelName);
```

### Adding New Locales

1. Create new ARB file: `lib/l10n/arb/app_<locale>.arb`
2. Update `Info.plist` for iOS (if needed)
3. Generate localizations

---

## Project Structure

```
lib/
├── core/
│   ├── data/
│   │   ├── api/
│   │   │   └── api_config.dart          # API configuration
│   │   └── local/
│   │       └── app_preferences.dart      # Local storage (favorites, locale)
│   └── presentation/
│       ├── app.dart                      # Main app widget
│       ├── bootstrap.dart                # App initialization
│       ├── extension/                    # Extension methods
│       ├── images/                       # Icon management
│       ├── router/
│       │   ├── app_router.dart          # Route definitions
│       │   └── app_router.gr.dart       # Generated routes
│       ├── theme/                        # App theming
│       └── widgets/                      # Reusable widgets
│           ├── empty_state_widget.dart
│           ├── error_state_widget.dart
│           ├── favorite_icon_button.dart
│           ├── loading_state_widget.dart
│           └── ...
├── features/
│   ├── hotels/
│   │   ├── data/
│   │   │   ├── data_sources/
│   │   │   │   └── api/                 # API client, DTOs
│   │   │   └── repositories/
│   │   │       └── api_hotels_repository.dart
│   │   ├── domain/
│   │   │   ├── entities/                # Domain models
│   │   │   └── repositories/
│   │   │       └── hotels_repository.dart
│   │   └── presentation/
│   │       ├── cubit/                   # State management
│   │       ├── hotels_page.dart         # Main page
│   │       ├── view/                    # UI views
│   │       └── widgets/                 # Feature widgets
│   ├── favorites/
│   ├── overview/
│   └── account/
├── l10n/                                 # Localization files
│   ├── arb/                            # Source ARB files
│   └── gen/                             # Generated localizations
├── main_development.dart
├── main_staging.dart
└── main_production.dart
```

---

## API Configuration

### API Endpoint

The app fetches hotel data from:

```
https://d3ttsq6u5udup6.cloudfront.net/hotels.json
```

**Configuration Location**: `lib/core/data/api/api_config.dart`

### API Response Structure

The API returns a JSON object with:

- `hotels`: Array of hotel objects
- `hotelCount`: Total number of hotels

Each hotel object contains:

- Basic info (name, destination, hotelId)
- Images (small, large URLs)
- Rating information
- Best offer (price, dates, rooms)
- Location (latitude, longitude)
- And more...

See `source/hotel_card_design_mapping.md` for detailed entity mapping.

---

## Dependencies

### Main Dependencies

- **auto_route** (^9.1.0): Type-safe navigation
- **bloc** (^9.0.1): State management
- **flutter_bloc** (^9.1.1): BLoC Flutter integration
- **http** (^1.2.2): HTTP client
- **shared_preferences** (^2.3.2): Local storage
- **freezed_annotation** (^2.4.4): Immutable classes
- **json_annotation** (^4.9.0): JSON serialization
- **google_fonts** (^6.2.1): Custom fonts
- **flutter_svg** (^2.0.10+1): SVG support
- **fast_immutable_collections** (^11.1.0): Immutable collections
- **intl** (^0.20.2): Internationalization

### Dev Dependencies

- **auto_route_generator**: Route code generation
- **build_runner**: Code generation runner
- **bloc_test**: BLoC testing utilities
- **mocktail**: Mocking for tests
- **freezed**: Freezed code generation
- **json_serializable**: JSON code generation
- **very_good_analysis**: Linting rules

---

## Contributing

1. Follow the existing code structure and patterns
2. Write tests for new features
3. Ensure all tests pass
4. Follow the linting rules (very_good_analysis)
5. Update documentation as needed

---

## Acknowledgments

- Built with [Very Good CLI](https://github.com/VeryGoodOpenSource/very_good_cli)
- Design reference: [Figma Design](https://www.figma.com/design/VD6TGKHyZaMR3roR7VLbZW/Interview)

---

[coverage_badge]: coverage_badge.svg

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg

[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg

[license_link]: https://opensource.org/licenses/MIT
