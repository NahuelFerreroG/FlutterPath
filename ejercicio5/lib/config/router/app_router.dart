


import 'package:ejercicio5/presentation/screens/favorites_screen.dart';
import 'package:ejercicio5/presentation/screens/home_screen.dart';
import 'package:ejercicio5/presentation/screens/image_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()
    ),

    GoRoute(
      path: '/image_screen',
      name: ImageScreen.name,
      builder: (context, state) { 
        
        return ImageScreen(imageUrl: state.queryParameters['imageUrl']!,);
        }
    ),

    GoRoute(
      path: '/',
      name: FavoriteScreen.name,
      builder: (context, state) => const FavoriteScreen()
    ),



    ]
  );