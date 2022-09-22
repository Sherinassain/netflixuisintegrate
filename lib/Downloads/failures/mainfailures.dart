import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainfailures.freezed.dart';

@freezed
class Mainfailures with _$Mainfailures{
  const factory Mainfailures.clientfailure() = _Clientfailure;
  const factory Mainfailures.serverfailure() = _Serverfailure;
  
}