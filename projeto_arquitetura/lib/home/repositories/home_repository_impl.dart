import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projeto_arquitetura/home/repositories/home_repositories.dart';

class HomeRepositoryImpl implements HomeRepository {
  CollectionReference get tarefas =>
      FirebaseFirestore.instance.collection('/tarefas');

  @override
  Future getTarefas() async {
    return await tarefas.get();
  }

  @override
  Stream streamTarefas() {
    return tarefas.snapshots();
  }
}
