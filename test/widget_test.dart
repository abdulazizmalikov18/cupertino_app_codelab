import 'package:cupertino_app_codelab/app.dart';
import 'package:cupertino_app_codelab/model/app_state_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('App start test', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider<AppStateModel>(
        create: (context) => AppStateModel()..loadProducts(),
        child: const CupertinoStoreApp(),
      ),
    );
    expect(find.text('Products'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Cart'), findsOneWidget);
  });
}