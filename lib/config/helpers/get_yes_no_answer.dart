import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    
    // respuesta original del get
    /* 
      {
        "answer": "yes",
        "forced": false,
        "image": "https://yesno.wtf/assets/yes/2.gif"
      }
    */

    // Se retorna de manera mapeada
    /* return Message(
      text: response.data['answer'], 
      fromWho: FromWho.hers,
      imageUrl: response.data['image']
    ); */


    // Respuesta utilizando conversion de data a Json con modelos
    final yesNoModel = YesNoModel.fromJson(response.data);

    // Retorno usando propiedades
    // return Message(
    //   text: yesNoModel.answer, 
    //   fromWho: FromWho.hers,
    //   imageUrl: yesNoModel.image
    // );

    // Retorno con funcion de mapa a objeto
    return yesNoModel.toMessageEntity();

    
  }

}