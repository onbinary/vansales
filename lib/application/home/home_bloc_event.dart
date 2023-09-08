part of 'home_bloc_bloc.dart';

@freezed
class HomeBlocEvent with _$HomeBlocEvent {
  const factory HomeBlocEvent.initialize() = Initialize;
  const factory HomeBlocEvent.fetchUser(
      {required String userId,
      required String businessId,
      required String bearerToken}) = FetchUser;
}
