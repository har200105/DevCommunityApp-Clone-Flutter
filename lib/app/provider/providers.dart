import 'package:devapp/core/viewmodels/login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers=[
  ...remoteProviders
];


List<SingleChildWidget> remoteProviders=[
  ChangeNotifierProvider(create: (_)=>LoginViewModel())
];