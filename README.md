# Calendar Events App

A simple Flutter calendar application for viewing events.

## Features

- Interactive calendar with date range selection
- Events list from API
- Date range validation (minimum 7 days)
- Error handling

## Tech Stack

- Flutter
- BLoC (state management)
- Dio + Retrofit (API)
- Freezed (code generation)
- GetIt (DI)
- Table Calendar

## Setup

1. Install dependencies:
```bash
flutter pub get
```

2. Generate code:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

3. Run:
```bash
flutter run
```

## API

**Endpoint**: `https://test-task-app-alpha.vercel.app/api/test-task`

**Query Params**:
- `start_date` (required): YYYY-MM-DD
- `end_date` (optional): YYYY-MM-DD

## Usage

1. Select date range on calendar
2. View events in the list
3. Tap bug icon to view logs
