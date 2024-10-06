import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mini_shop/model/model.dart';
import 'package:mini_shop/service/api_service.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<FetchAllNotificationEvent>(fetchNotificationAll);
  }

  FutureOr<void> fetchNotificationAll(
      FetchAllNotificationEvent event, Emitter<NotificationState> emit) async {
    emit(NotificationLoadingState());
    try {
      final result = await ApiService().getNotification();
      if (result.isNotEmpty) {
        emit(NotificationLoadedState(result));
      } else {
        emit(NotificationFaliureState('No data available'));
      }
    } catch (e) {
      log(e.toString());
      emit(NotificationFaliureState('Error loading Notification data'));
    }
  }
}
