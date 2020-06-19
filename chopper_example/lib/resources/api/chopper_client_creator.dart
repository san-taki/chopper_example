import 'package:chopper/chopper.dart';
import 'package:chopper_example/resources/api/model_converter.dart';

class ChopperClientCreator {
  static final String baseUrl = "https://api.openbd.jp";

  static ChopperClient create() {
    return ChopperClient(
      baseUrl: ChopperClientCreator.baseUrl,
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
    );
  }
}