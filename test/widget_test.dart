// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:forum/app.dart';
import 'package:forum/core/auth/auth_session.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Forum launches to welcome screen when signed out',
    (WidgetTester tester) async {
      // Make sure the Forum session has been initialized.
      await AuthSession.instance.initialize();

      // Make sure the test starts with the user signed out.
      await AuthSession.instance.signOut();

      // Build the Forum app and trigger a frame.
      await tester.pumpWidget(
        const ForumApp(),
      );

      // Allow navigation, animations, and asynchronous UI work to settle.
      await tester.pumpAndSettle();

      // Verify that the welcome screen is displayed.
      expect(
        find.text('Create Account'),
        findsOneWidget,
      );

      expect(
        find.text('Sign In'),
        findsOneWidget,
      );
    },
  );
}