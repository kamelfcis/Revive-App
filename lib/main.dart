import 'package:flutter/material.dart';
import 'package:revive/app/my_app.dart';
import 'package:revive/core/di/dependancy_injection.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://pjektumcffxavlogaqaw.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBqZWt0dW1jZmZ4YXZsb2dhcWF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwNzQxNDksImV4cCI6MjA1NjY1MDE0OX0.BvfqncE8bT2fME6968HevdDT_HsrbZ7CXHyS3t4xVZw",
  );
  setupDI();
  runApp(const MyApp());
}
