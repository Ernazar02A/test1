# Calendar Events App

A minimal Flutter calendar application based on izde_business architecture. This app allows users to view events within a selected date range with proper error handling for date range validation.

## Features

- **Calendar View**: Interactive calendar with date range selection using `table_calendar`
- **Event Display**: Shows events fetched from API in a clean card-based UI
- **Date Range Validation**: Enforces minimum 7-day range requirement
- **Error Handling**: Comprehensive error handling for network, server, and validation errors
- **Clean Architecture**: Follows feature-first architecture with BLoC pattern

## Architecture

The app follows a clean architecture pattern inspired by izde_business:

```
lib/
├── core/
│   ├── api/              # API client (Retrofit)
│   ├── error/            # Error handling (Failures)
│   ├── models/           # Data models
│   └── di/               # Dependency injection
├── features/
│   └── calendar/
│       ├── data/
│       │   └── repositories/    # Data layer
│       └── presentation/
│           ├── bloc/            # Business logic
│           ├── pages/           # UI screens
│           └── widgets/         # Reusable widgets
└── main.dart
```

## API Requirements

The app connects to an API endpoint with the following specifications:

**Endpoint**: `/api/test-task`

**Query Parameters**:
- `start_date` (required): Start date in YYYY-MM-DD format
- `end_date` (optional): End date in YYYY-MM-DD format
  - If provided, must be at least 7 days after start_date

**Response**: JSON array of event objects

```json
[
  {
    "id": "string",
    "title": "string",
    "description": "string",
    "date": "ISO 8601 date string",
    "location": "string (optional)"
  }
]
```

## Error Handling

The app handles the following error scenarios:

1. **Date Range Validation**: Shows error if selected range is less than 7 days
2. **Network Errors**: Handles connection timeouts and network failures
3. **Server Errors**: Displays server error messages with status codes
4. **Unknown Errors**: Catches and displays any unexpected errors

## Tech Stack

- **Flutter** - UI framework
- **flutter_bloc** - State management
- **dio** & **retrofit** - HTTP client and API integration
- **freezed** - Code generation for models and states
- **get_it** - Dependency injection
- **table_calendar** - Calendar widget
- **dartz** - Functional programming (Either type)
- **talker** - Advanced logging and monitoring
  - **talker_flutter** - UI for viewing logs
  - **talker_dio_logger** - HTTP request/response logging
  - **talker_bloc_logger** - BLoC events/states logging

## Getting Started

### Prerequisites

- Flutter SDK (3.10.0 or higher)
- Dart SDK

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd test1
```

2. Install dependencies
```bash
flutter pub get
```

3. Run code generation
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Update API base URL in `lib/core/di/injection.dart`

5. Run the app
```bash
flutter run
```

## Usage

1. Open the app to see the calendar view
2. Select a date range by tapping on start and end dates
3. Click "Load Events" button to fetch events
4. If the range is less than 7 days, an error will be displayed
5. View the events in the list below the calendar
6. Tap the bug icon in the app bar to view detailed logs (Talker Logger)

## Development

To regenerate code after model changes:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## License

This project is a test implementation for educational purposes.
