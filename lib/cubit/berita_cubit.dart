import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:uasbanguns/model/berita_model.dart';
import 'package:uasbanguns/request/berita_request.dart';

part 'berita_state.dart';

class BeritaCubit extends Cubit<BeritaState> {
  BeritaCubit() : super(BeritaInitial());

  final BeritaRequest beritaRequest = BeritaRequest();

  BeritaModel beritaModel = BeritaModel();

  getDataBerita() async {
    emit(BeritaInitial());
    beritaModel = await beritaRequest.getBerita();
    emit(DataBerita(beritaModel));
  }
}
