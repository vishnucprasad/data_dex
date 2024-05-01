# data_dex

data_dex is a Flutter application designed to streamline the management of vehicle loan details for customers. Leveraging Firebase for authentication and database functionality, data_dex provides a comprehensive solution for handling applicant information, loan particulars, and related data. The app simplifies the process of adding applicant details, co-applicant details, guarantor details, loan specifics, and various miscellaneous information.

## Features

- **Firebase Integration**: Utilizes Firebase for seamless authentication and database management.
- **Applicant Management**: Easily add and manage applicant details, including co-applicants and guarantors.
- **Loan Calculation**: Automatically calculates the down payment and DD based on the provided details.
- **Image Capture**: Allows capturing images of applicants and guarantors' homes for documentation purposes.
- **Home Page Tabs**:
  - **Completed Loans**: Displays loans that have been disbursed to customers.
  - **Pending Loans**: Lists loans that are still in processing; upon completion, loans can be disbursed with a disbursement date, automatically moving them to the completed loans list.
  - **Dropped Loans**: Shows loans that have been dropped during the loan process; users can choose to restore or permanently delete these loans.
  - **Follow Up**: Provides follow-up details on EMIs for upcoming payment dates.
- **Loan Details Page**: Offers a comprehensive view of all loan details, including options to call or copy phone numbers and share house images and locations of applicants and guarantors.

## Usage

1. **Authentication**: Users can sign in securely using Firebase authentication.
2. **Adding Loan Details**: Easily input applicant, co-applicant, and guarantor details along with loan particulars and miscellaneous information.
3. **Managing Loans**: Navigate through tabs to view completed, pending, and dropped loans, as well as follow-up details.
4. **Loan Disbursement**: Move loans from pending to completed status upon completion of processing.
5. **Restoring Dropped Loans**: Choose to restore or permanently delete dropped loans as needed.

## Installation

### Prerequisites

- Flutter SDK installed on your system. If not, follow the [Flutter Installation Guide](https://flutter.dev/docs/get-started/install).
- Firebase project set up with authentication and Firestore database. Follow the [Firebase Setup Guide](https://firebase.google.com/docs/flutter/setup).
- Git installed on your system for cloning the repository.

### Steps

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/your_username/data_dex.git
   ```

2. **Navigate to Project Directory**:

   ```bash
   cd data_dex
   ```

3. **Update Firebase Configuration**:

   - Install the FlutterFire CLI:

     ```bash
     flutter pub global activate flutterfire_cli
     ```

   - Navigate to Your Project Directory & Run the Configuration Update Command:

     ```bash
     flutterfire configure
     ```

     This command will guide you through the process of configuring Firebase for your Flutter app. It will prompt you to select the Firebase services you want to use (such as Authentication, Firestore, etc.) and will automatically update the necessary configuration files for both Android and iOS platforms.

     Simply follow the on-screen instructions provided by the FlutterFire CLI to complete the configuration process. You'll need to provide your Firebase project ID and other relevant information when prompted.

     Once the configuration is complete, you should see the updated Firebase configuration files (google-services.json for Android and GoogleService-Info.plist for iOS) in your project's respective directories (android/app for Android and ios/Runner for iOS).

     With the Firebase configuration updated, you're ready to use Firebase services in the app seamlessly.

4. **Install Dependencies**:

   ```bash
   flutter pub get
   ```

5. **Run the App**:
   ```bash
   flutter run
   ```

## Debugging

To debug the application, you can use Flutter's built-in debugging tools:

- **Flutter DevTools**: Run `flutter pub global activate devtools` to install DevTools globally. Then, run your app and execute `flutter pub global run devtools` in another terminal window to open DevTools. Here, you can inspect UI layout, performance, network requests, and more.
- **Logging**: Utilize `print()` statements in your code to log messages to the console. This can help you track the flow of execution and identify any issues.

## Changelog

For a detailed list of changes, see the [CHANGELOG](CHANGELOG.md).

## Support

For any inquiries or assistance, please contact [mail@vishnucprasad.in](mailto:mail@vishnucprasad.in).

## License

This project is licensed under the [MIT License](LICENSE).
