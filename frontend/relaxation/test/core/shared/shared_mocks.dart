import 'package:mockito/annotations.dart';
import 'package:relaxation/core/utils.dart';
import 'package:relaxation/features/data_query_feature/data/datasources/audio_query_datasource.dart';

import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';

//! important
@GenerateMocks([AudioQueryRepository])
@GenerateMocks([AudioQueryDataSource])
@GenerateMocks([Utils])
void main() {}
