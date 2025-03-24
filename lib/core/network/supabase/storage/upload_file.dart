import 'dart:developer';
import 'dart:io';
import 'package:revive/core/di/dependancy_injection.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> uploadFileToSupabaseStorage({required File file}) async {
  // todo : corretc name
  try {
    String fileName = "images/${"Uuid().v4()"}.jpg";
    await getIt<SupabaseClient>().storage.from('images').upload(fileName, file);
    return getIt<SupabaseClient>()
        .storage
        .from('images')
        .getPublicUrl(fileName);
  } on Exception catch (e) {
    log(e.toString());
  }
}
