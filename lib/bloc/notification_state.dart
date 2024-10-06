part of 'notification_bloc.dart';

@immutable
abstract class NotificationState {}

final class NotificationInitial extends NotificationState {}

class NotificationLoadedState extends NotificationState {
  final List<NotificationModel> data;
  NotificationLoadedState(this.data);
}

class NotificationLoadingState extends NotificationState {}

class NotificationFaliureState extends NotificationState {
  final String error;
  NotificationFaliureState(this.error);
}
