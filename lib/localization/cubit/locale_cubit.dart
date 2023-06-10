import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit()
      : super(
          const SelectedLocale(Locale('ar')),
        );

  void toEnglish() {
    emit(const SelectedLocale(Locale('en')));
  }

  void toArabic() {
    emit(const SelectedLocale(Locale('ar')));
  }

  void toggleLocale() {
    if (state.locale.toString() == 'en') {
      emit(const SelectedLocale(Locale('ar')));
    } else {
      emit(const SelectedLocale(Locale('en')));
    }
  }

  String getOtherLanguage() {
    return state.locale.toString() == 'ar' ? 'English' : "العربيه";
  }
}
