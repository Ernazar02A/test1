import 'package:test1/core/model/base_paging_model.dart';

import '../error/error_entity.dart';
import 'either.dart';

typedef RemoteWrapper<T> = Future<Either<ErrorEntity, T>>;
typedef RemotePagingWrapper<T>
    = Future<Either<ErrorEntity, BasePagingModel<T>>>;
