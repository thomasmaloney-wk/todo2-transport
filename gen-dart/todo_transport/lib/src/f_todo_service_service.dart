// Autogenerated by Frugal Compiler (3.9.5)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING



// ignore_for_file: unused_import
// ignore_for_file: unused_field
import 'dart:async';
import 'dart:typed_data' show Uint8List;

import 'package:collection/collection.dart';
import 'package:logging/logging.dart' as logging;
import 'package:thrift/thrift.dart' as thrift;
import 'package:frugal/frugal.dart' as frugal;
import 'package:w_common/disposable.dart' as disposable;

import 'package:todo_transport/todo_transport.dart' as t_todo_transport;


abstract class FTodoService {
  Future<t_todo_transport.Todo> createTodo(frugal.FContext ctx, t_todo_transport.Todo todo);

  Future deleteTodo(frugal.FContext ctx, String todoID);

  Future<List<t_todo_transport.Todo>> queryTodos(frugal.FContext ctx, t_todo_transport.TodoQueryParams params);

  Future<t_todo_transport.Todo> updateTodo(frugal.FContext ctx, t_todo_transport.Todo todo);
}

FTodoServiceClient fTodoServiceClientFactory(frugal.FServiceProvider provider, {List<frugal.Middleware> middleware}) =>
    FTodoServiceClient(provider, middleware);

class FTodoServiceClient extends disposable.Disposable implements FTodoService {
  static final logging.Logger _frugalLog = logging.Logger('TodoService');
  Map<String, frugal.FMethod> _methods;

  FTodoServiceClient(frugal.FServiceProvider provider, [List<frugal.Middleware> middleware])
      : this._provider = provider {
    _transport = provider.transport;
    _protocolFactory = provider.protocolFactory;
    var combined = middleware ?? [];
    combined.addAll(provider.middleware);
    this._methods = {};
    this._methods['createTodo'] = frugal.FMethod(this._createTodo, 'TodoService', 'createTodo', combined);
    this._methods['deleteTodo'] = frugal.FMethod(this._deleteTodo, 'TodoService', 'deleteTodo', combined);
    this._methods['queryTodos'] = frugal.FMethod(this._queryTodos, 'TodoService', 'queryTodos', combined);
    this._methods['updateTodo'] = frugal.FMethod(this._updateTodo, 'TodoService', 'updateTodo', combined);
  }

  frugal.FServiceProvider _provider;
  frugal.FTransport _transport;
  frugal.FProtocolFactory _protocolFactory;

  @override
  Future<Null> onDispose() async {
    if (_provider is disposable.Disposable && !_provider.isOrWillBeDisposed)  {
      return _provider.dispose();
    }
    return null;
  }

  @override
  Future<t_todo_transport.Todo> createTodo(frugal.FContext ctx, t_todo_transport.Todo todo) {
    return this._methods['createTodo']([ctx, todo]).then((value) => value as t_todo_transport.Todo);
  }

  Future<t_todo_transport.Todo> _createTodo(frugal.FContext ctx, t_todo_transport.Todo todo) async {
    var memoryBuffer = frugal.TMemoryOutputBuffer(_transport.requestSizeLimit);
    var oprot = _protocolFactory.getProtocol(memoryBuffer);
    oprot.writeRequestHeader(ctx);
    oprot.writeMessageBegin(thrift.TMessage('createTodo', thrift.TMessageType.CALL, 0));
    createTodo_args args = createTodo_args();
    args.todo = todo;
    args.write(oprot);
    oprot.writeMessageEnd();
    var response = await _transport.request(ctx, memoryBuffer.writeBytes);

    var iprot = _protocolFactory.getProtocol(response);
    iprot.readResponseHeader(ctx);
    thrift.TMessage msg = iprot.readMessageBegin();
    if (msg.type == thrift.TMessageType.EXCEPTION) {
      thrift.TApplicationError error = thrift.TApplicationError.read(iprot);
      iprot.readMessageEnd();
      if (error.type == frugal.FrugalTTransportErrorType.REQUEST_TOO_LARGE) {
        throw thrift.TTransportError(
            frugal.FrugalTTransportErrorType.RESPONSE_TOO_LARGE, error.message);
      }
      throw error;
    }

    createTodo_result result = createTodo_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.isSetSuccess()) {
      return result.success;
    }

    if (result.err != null) {
      throw result.err;
    }
    throw thrift.TApplicationError(
      frugal.FrugalTApplicationErrorType.MISSING_RESULT, 'createTodo failed: unknown result'
    );
  }
  @override
  Future deleteTodo(frugal.FContext ctx, String todoID) {
    return this._methods['deleteTodo']([ctx, todoID]);
  }

  Future _deleteTodo(frugal.FContext ctx, String todoID) async {
    var memoryBuffer = frugal.TMemoryOutputBuffer(_transport.requestSizeLimit);
    var oprot = _protocolFactory.getProtocol(memoryBuffer);
    oprot.writeRequestHeader(ctx);
    oprot.writeMessageBegin(thrift.TMessage('deleteTodo', thrift.TMessageType.CALL, 0));
    deleteTodo_args args = deleteTodo_args();
    args.todoID = todoID;
    args.write(oprot);
    oprot.writeMessageEnd();
    var response = await _transport.request(ctx, memoryBuffer.writeBytes);

    var iprot = _protocolFactory.getProtocol(response);
    iprot.readResponseHeader(ctx);
    thrift.TMessage msg = iprot.readMessageBegin();
    if (msg.type == thrift.TMessageType.EXCEPTION) {
      thrift.TApplicationError error = thrift.TApplicationError.read(iprot);
      iprot.readMessageEnd();
      if (error.type == frugal.FrugalTTransportErrorType.REQUEST_TOO_LARGE) {
        throw thrift.TTransportError(
            frugal.FrugalTTransportErrorType.RESPONSE_TOO_LARGE, error.message);
      }
      throw error;
    }

    deleteTodo_result result = deleteTodo_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.err != null) {
      throw result.err;
    }
  }
  @override
  Future<List<t_todo_transport.Todo>> queryTodos(frugal.FContext ctx, t_todo_transport.TodoQueryParams params) {
    return this._methods['queryTodos']([ctx, params]).then((value) => value as List<t_todo_transport.Todo>);
  }

  Future<List<t_todo_transport.Todo>> _queryTodos(frugal.FContext ctx, t_todo_transport.TodoQueryParams params) async {
    var memoryBuffer = frugal.TMemoryOutputBuffer(_transport.requestSizeLimit);
    var oprot = _protocolFactory.getProtocol(memoryBuffer);
    oprot.writeRequestHeader(ctx);
    oprot.writeMessageBegin(thrift.TMessage('queryTodos', thrift.TMessageType.CALL, 0));
    queryTodos_args args = queryTodos_args();
    args.params = params;
    args.write(oprot);
    oprot.writeMessageEnd();
    var response = await _transport.request(ctx, memoryBuffer.writeBytes);

    var iprot = _protocolFactory.getProtocol(response);
    iprot.readResponseHeader(ctx);
    thrift.TMessage msg = iprot.readMessageBegin();
    if (msg.type == thrift.TMessageType.EXCEPTION) {
      thrift.TApplicationError error = thrift.TApplicationError.read(iprot);
      iprot.readMessageEnd();
      if (error.type == frugal.FrugalTTransportErrorType.REQUEST_TOO_LARGE) {
        throw thrift.TTransportError(
            frugal.FrugalTTransportErrorType.RESPONSE_TOO_LARGE, error.message);
      }
      throw error;
    }

    queryTodos_result result = queryTodos_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.isSetSuccess()) {
      return result.success;
    }

    if (result.err != null) {
      throw result.err;
    }
    throw thrift.TApplicationError(
      frugal.FrugalTApplicationErrorType.MISSING_RESULT, 'queryTodos failed: unknown result'
    );
  }
  @override
  Future<t_todo_transport.Todo> updateTodo(frugal.FContext ctx, t_todo_transport.Todo todo) {
    return this._methods['updateTodo']([ctx, todo]).then((value) => value as t_todo_transport.Todo);
  }

  Future<t_todo_transport.Todo> _updateTodo(frugal.FContext ctx, t_todo_transport.Todo todo) async {
    var memoryBuffer = frugal.TMemoryOutputBuffer(_transport.requestSizeLimit);
    var oprot = _protocolFactory.getProtocol(memoryBuffer);
    oprot.writeRequestHeader(ctx);
    oprot.writeMessageBegin(thrift.TMessage('updateTodo', thrift.TMessageType.CALL, 0));
    updateTodo_args args = updateTodo_args();
    args.todo = todo;
    args.write(oprot);
    oprot.writeMessageEnd();
    var response = await _transport.request(ctx, memoryBuffer.writeBytes);

    var iprot = _protocolFactory.getProtocol(response);
    iprot.readResponseHeader(ctx);
    thrift.TMessage msg = iprot.readMessageBegin();
    if (msg.type == thrift.TMessageType.EXCEPTION) {
      thrift.TApplicationError error = thrift.TApplicationError.read(iprot);
      iprot.readMessageEnd();
      if (error.type == frugal.FrugalTTransportErrorType.REQUEST_TOO_LARGE) {
        throw thrift.TTransportError(
            frugal.FrugalTTransportErrorType.RESPONSE_TOO_LARGE, error.message);
      }
      throw error;
    }

    updateTodo_result result = updateTodo_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.isSetSuccess()) {
      return result.success;
    }

    if (result.err != null) {
      throw result.err;
    }
    throw thrift.TApplicationError(
      frugal.FrugalTApplicationErrorType.MISSING_RESULT, 'updateTodo failed: unknown result'
    );
  }
}

// ignore: camel_case_types
class createTodo_args implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('createTodo_args');
  static final thrift.TField _TODO_FIELD_DESC = thrift.TField('todo', thrift.TType.STRUCT, 1);

  t_todo_transport.Todo _todo;
  static const int TODO = 1;


  createTodo_args();

  t_todo_transport.Todo get todo => this._todo;

  set todo(t_todo_transport.Todo todo) {
    this._todo = todo;
  }

  bool isSetTodo() => this.todo != null;

  unsetTodo() {
    this.todo = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TODO:
        return this.todo;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TODO:
        if (value == null) {
          unsetTodo();
        } else {
          this.todo = value as t_todo_transport.Todo;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TODO:
        return isSetTodo();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case TODO:
          if (field.type == thrift.TType.STRUCT) {
            this.todo = t_todo_transport.Todo();
            todo.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.todo != null) {
      oprot.writeFieldBegin(_TODO_FIELD_DESC);
      this.todo.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('createTodo_args(');

    ret.write('todo:');
    if (this.todo == null) {
      ret.write('null');
    } else {
      ret.write(this.todo);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is createTodo_args) {
      return this.todo == o.todo;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.todo.hashCode;
    return value;
  }

  createTodo_args clone({
    t_todo_transport.Todo todo,
  }) {
    return createTodo_args()
      ..todo = todo ?? this.todo;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class createTodo_result implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('createTodo_result');
  static final thrift.TField _SUCCESS_FIELD_DESC = thrift.TField('success', thrift.TType.STRUCT, 0);
  static final thrift.TField _ERR_FIELD_DESC = thrift.TField('err', thrift.TType.STRUCT, 1);

  t_todo_transport.Todo _success;
  static const int SUCCESS = 0;
  t_todo_transport.WError _err;
  static const int ERR = 1;


  createTodo_result();

  t_todo_transport.Todo get success => this._success;

  set success(t_todo_transport.Todo success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  t_todo_transport.WError get err => this._err;

  set err(t_todo_transport.WError err) {
    this._err = err;
  }

  bool isSetErr() => this.err != null;

  unsetErr() {
    this.err = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      case ERR:
        return this.err;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case SUCCESS:
        if (value == null) {
          unsetSuccess();
        } else {
          this.success = value as t_todo_transport.Todo;
        }
        break;

      case ERR:
        if (value == null) {
          unsetErr();
        } else {
          this.err = value as t_todo_transport.WError;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return isSetSuccess();
      case ERR:
        return isSetErr();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case SUCCESS:
          if (field.type == thrift.TType.STRUCT) {
            this.success = t_todo_transport.Todo();
            success.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ERR:
          if (field.type == thrift.TType.STRUCT) {
            this.err = t_todo_transport.WError();
            err.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (isSetSuccess() && this.success != null) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      this.success.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetErr() && this.err != null) {
      oprot.writeFieldBegin(_ERR_FIELD_DESC);
      this.err.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('createTodo_result(');

    if (isSetSuccess()) {
      ret.write('success:');
      if (this.success == null) {
        ret.write('null');
      } else {
        ret.write(this.success);
      }
    }

    if (isSetErr()) {
      ret.write(', ');
      ret.write('err:');
      if (this.err == null) {
        ret.write('null');
      } else {
        ret.write(this.err);
      }
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is createTodo_result) {
      return this.success == o.success &&
        this.err == o.err;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.success.hashCode;
    value = (value * 31) ^ this.err.hashCode;
    return value;
  }

  createTodo_result clone({
    t_todo_transport.Todo success,
    t_todo_transport.WError err,
  }) {
    return createTodo_result()
      ..success = success ?? this.success
      ..err = err ?? this.err;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class deleteTodo_args implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('deleteTodo_args');
  static final thrift.TField _TODO_ID_FIELD_DESC = thrift.TField('todoID', thrift.TType.STRING, 1);

  String _todoID;
  static const int TODOID = 1;


  deleteTodo_args();

  String get todoID => this._todoID;

  set todoID(String todoID) {
    this._todoID = todoID;
  }

  bool isSetTodoID() => this.todoID != null;

  unsetTodoID() {
    this.todoID = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TODOID:
        return this.todoID;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TODOID:
        if (value == null) {
          unsetTodoID();
        } else {
          this.todoID = value as String;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TODOID:
        return isSetTodoID();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case TODOID:
          if (field.type == thrift.TType.STRING) {
            this.todoID = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.todoID != null) {
      oprot.writeFieldBegin(_TODO_ID_FIELD_DESC);
      oprot.writeString(this.todoID);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('deleteTodo_args(');

    ret.write('todoID:');
    if (this.todoID == null) {
      ret.write('null');
    } else {
      ret.write(this.todoID);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is deleteTodo_args) {
      return this.todoID == o.todoID;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.todoID.hashCode;
    return value;
  }

  deleteTodo_args clone({
    String todoID,
  }) {
    return deleteTodo_args()
      ..todoID = todoID ?? this.todoID;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class deleteTodo_result implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('deleteTodo_result');
  static final thrift.TField _ERR_FIELD_DESC = thrift.TField('err', thrift.TType.STRUCT, 1);

  t_todo_transport.WError _err;
  static const int ERR = 1;


  deleteTodo_result();

  t_todo_transport.WError get err => this._err;

  set err(t_todo_transport.WError err) {
    this._err = err;
  }

  bool isSetErr() => this.err != null;

  unsetErr() {
    this.err = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ERR:
        return this.err;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ERR:
        if (value == null) {
          unsetErr();
        } else {
          this.err = value as t_todo_transport.WError;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ERR:
        return isSetErr();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case ERR:
          if (field.type == thrift.TType.STRUCT) {
            this.err = t_todo_transport.WError();
            err.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (isSetErr() && this.err != null) {
      oprot.writeFieldBegin(_ERR_FIELD_DESC);
      this.err.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('deleteTodo_result(');

    if (isSetErr()) {
      ret.write('err:');
      if (this.err == null) {
        ret.write('null');
      } else {
        ret.write(this.err);
      }
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is deleteTodo_result) {
      return this.err == o.err;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.err.hashCode;
    return value;
  }

  deleteTodo_result clone({
    t_todo_transport.WError err,
  }) {
    return deleteTodo_result()
      ..err = err ?? this.err;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class queryTodos_args implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('queryTodos_args');
  static final thrift.TField _PARAMS_FIELD_DESC = thrift.TField('params', thrift.TType.STRUCT, 1);

  t_todo_transport.TodoQueryParams _params;
  static const int PARAMS = 1;


  queryTodos_args();

  t_todo_transport.TodoQueryParams get params => this._params;

  set params(t_todo_transport.TodoQueryParams params) {
    this._params = params;
  }

  bool isSetParams() => this.params != null;

  unsetParams() {
    this.params = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case PARAMS:
        return this.params;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case PARAMS:
        if (value == null) {
          unsetParams();
        } else {
          this.params = value as t_todo_transport.TodoQueryParams;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case PARAMS:
        return isSetParams();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case PARAMS:
          if (field.type == thrift.TType.STRUCT) {
            this.params = t_todo_transport.TodoQueryParams();
            params.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.params != null) {
      oprot.writeFieldBegin(_PARAMS_FIELD_DESC);
      this.params.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('queryTodos_args(');

    ret.write('params:');
    if (this.params == null) {
      ret.write('null');
    } else {
      ret.write(this.params);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is queryTodos_args) {
      return this.params == o.params;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.params.hashCode;
    return value;
  }

  queryTodos_args clone({
    t_todo_transport.TodoQueryParams params,
  }) {
    return queryTodos_args()
      ..params = params ?? this.params;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class queryTodos_result implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('queryTodos_result');
  static final thrift.TField _SUCCESS_FIELD_DESC = thrift.TField('success', thrift.TType.LIST, 0);
  static final thrift.TField _ERR_FIELD_DESC = thrift.TField('err', thrift.TType.STRUCT, 1);

  List<t_todo_transport.Todo> _success;
  static const int SUCCESS = 0;
  t_todo_transport.WError _err;
  static const int ERR = 1;


  queryTodos_result();

  List<t_todo_transport.Todo> get success => this._success;

  set success(List<t_todo_transport.Todo> success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  t_todo_transport.WError get err => this._err;

  set err(t_todo_transport.WError err) {
    this._err = err;
  }

  bool isSetErr() => this.err != null;

  unsetErr() {
    this.err = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      case ERR:
        return this.err;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case SUCCESS:
        if (value == null) {
          unsetSuccess();
        } else {
          this.success = value as List<t_todo_transport.Todo>;
        }
        break;

      case ERR:
        if (value == null) {
          unsetErr();
        } else {
          this.err = value as t_todo_transport.WError;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return isSetSuccess();
      case ERR:
        return isSetErr();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case SUCCESS:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem0 = iprot.readListBegin();
            this.success = List<t_todo_transport.Todo>();
            for(int elem2 = 0; elem2 < elem0.length; ++elem2) {
              t_todo_transport.Todo elem1 = t_todo_transport.Todo();
              elem1.read(iprot);
              this.success.add(elem1);
            }
            iprot.readListEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ERR:
          if (field.type == thrift.TType.STRUCT) {
            this.err = t_todo_transport.WError();
            err.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (isSetSuccess() && this.success != null) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.STRUCT, this.success.length));
      for(var elem3 in this.success) {
        elem3.write(oprot);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    if (isSetErr() && this.err != null) {
      oprot.writeFieldBegin(_ERR_FIELD_DESC);
      this.err.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('queryTodos_result(');

    if (isSetSuccess()) {
      ret.write('success:');
      if (this.success == null) {
        ret.write('null');
      } else {
        ret.write(this.success);
      }
    }

    if (isSetErr()) {
      ret.write(', ');
      ret.write('err:');
      if (this.err == null) {
        ret.write('null');
      } else {
        ret.write(this.err);
      }
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is queryTodos_result) {
      return DeepCollectionEquality().equals(this.success, o.success) &&
        this.err == o.err;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.success.hashCode;
    value = (value * 31) ^ this.err.hashCode;
    return value;
  }

  queryTodos_result clone({
    List<t_todo_transport.Todo> success,
    t_todo_transport.WError err,
  }) {
    return queryTodos_result()
      ..success = success ?? this.success
      ..err = err ?? this.err;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class updateTodo_args implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('updateTodo_args');
  static final thrift.TField _TODO_FIELD_DESC = thrift.TField('todo', thrift.TType.STRUCT, 1);

  t_todo_transport.Todo _todo;
  static const int TODO = 1;


  updateTodo_args();

  t_todo_transport.Todo get todo => this._todo;

  set todo(t_todo_transport.Todo todo) {
    this._todo = todo;
  }

  bool isSetTodo() => this.todo != null;

  unsetTodo() {
    this.todo = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TODO:
        return this.todo;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TODO:
        if (value == null) {
          unsetTodo();
        } else {
          this.todo = value as t_todo_transport.Todo;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TODO:
        return isSetTodo();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case TODO:
          if (field.type == thrift.TType.STRUCT) {
            this.todo = t_todo_transport.Todo();
            todo.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.todo != null) {
      oprot.writeFieldBegin(_TODO_FIELD_DESC);
      this.todo.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('updateTodo_args(');

    ret.write('todo:');
    if (this.todo == null) {
      ret.write('null');
    } else {
      ret.write(this.todo);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is updateTodo_args) {
      return this.todo == o.todo;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.todo.hashCode;
    return value;
  }

  updateTodo_args clone({
    t_todo_transport.Todo todo,
  }) {
    return updateTodo_args()
      ..todo = todo ?? this.todo;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
// ignore: camel_case_types
class updateTodo_result implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('updateTodo_result');
  static final thrift.TField _SUCCESS_FIELD_DESC = thrift.TField('success', thrift.TType.STRUCT, 0);
  static final thrift.TField _ERR_FIELD_DESC = thrift.TField('err', thrift.TType.STRUCT, 1);

  t_todo_transport.Todo _success;
  static const int SUCCESS = 0;
  t_todo_transport.WError _err;
  static const int ERR = 1;


  updateTodo_result();

  t_todo_transport.Todo get success => this._success;

  set success(t_todo_transport.Todo success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  t_todo_transport.WError get err => this._err;

  set err(t_todo_transport.WError err) {
    this._err = err;
  }

  bool isSetErr() => this.err != null;

  unsetErr() {
    this.err = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      case ERR:
        return this.err;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case SUCCESS:
        if (value == null) {
          unsetSuccess();
        } else {
          this.success = value as t_todo_transport.Todo;
        }
        break;

      case ERR:
        if (value == null) {
          unsetErr();
        } else {
          this.err = value as t_todo_transport.WError;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return isSetSuccess();
      case ERR:
        return isSetErr();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case SUCCESS:
          if (field.type == thrift.TType.STRUCT) {
            this.success = t_todo_transport.Todo();
            success.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ERR:
          if (field.type == thrift.TType.STRUCT) {
            this.err = t_todo_transport.WError();
            err.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (isSetSuccess() && this.success != null) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      this.success.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetErr() && this.err != null) {
      oprot.writeFieldBegin(_ERR_FIELD_DESC);
      this.err.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('updateTodo_result(');

    if (isSetSuccess()) {
      ret.write('success:');
      if (this.success == null) {
        ret.write('null');
      } else {
        ret.write(this.success);
      }
    }

    if (isSetErr()) {
      ret.write(', ');
      ret.write('err:');
      if (this.err == null) {
        ret.write('null');
      } else {
        ret.write(this.err);
      }
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is updateTodo_result) {
      return this.success == o.success &&
        this.err == o.err;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.success.hashCode;
    value = (value * 31) ^ this.err.hashCode;
    return value;
  }

  updateTodo_result clone({
    t_todo_transport.Todo success,
    t_todo_transport.WError err,
  }) {
    return updateTodo_result()
      ..success = success ?? this.success
      ..err = err ?? this.err;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
