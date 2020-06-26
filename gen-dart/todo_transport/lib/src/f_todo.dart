// Autogenerated by Frugal Compiler (3.9.5)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

// ignore_for_file: unused_import
// ignore_for_file: unused_field
import 'dart:typed_data' show Uint8List;

import 'package:collection/collection.dart';
import 'package:thrift/thrift.dart' as thrift;
import 'package:todo_transport/todo_transport.dart' as t_todo_transport;

class Todo implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('Todo');
  static final thrift.TField _USER_ID_FIELD_DESC = thrift.TField('userID', thrift.TType.STRING, 1);
  static final thrift.TField _DESCRIPTION_FIELD_DESC = thrift.TField('description', thrift.TType.STRING, 2);
  static final thrift.TField _DUE_DATE_FIELD_DESC = thrift.TField('dueDate', thrift.TType.I64, 3);
  static final thrift.TField _ID_FIELD_DESC = thrift.TField('id', thrift.TType.STRING, 4);
  static final thrift.TField _IS_COMPLETED_FIELD_DESC = thrift.TField('isCompleted', thrift.TType.BOOL, 5);
  static final thrift.TField _IS_PUBLIC_FIELD_DESC = thrift.TField('isPublic', thrift.TType.BOOL, 6);
  static final thrift.TField _NOTES_FIELD_DESC = thrift.TField('notes', thrift.TType.STRING, 7);
  static final thrift.TField _ACCOUNT_ID_FIELD_DESC = thrift.TField('accountID', thrift.TType.STRING, 8);

  String _userID;
  static const int USERID = 1;
  String _description;
  static const int DESCRIPTION = 2;
  int _dueDate = 0;
  static const int DUEDATE = 3;
  String _id;
  static const int ID = 4;
  bool _isCompleted = false;
  static const int ISCOMPLETED = 5;
  bool _isPublic = false;
  static const int ISPUBLIC = 6;
  String _notes;
  static const int NOTES = 7;
  String _accountID;
  static const int ACCOUNTID = 8;

  bool __isset_dueDate = false;
  bool __isset_isCompleted = false;
  bool __isset_isPublic = false;

  Todo();

  String get userID => this._userID;

  set userID(String userID) {
    this._userID = userID;
  }

  bool isSetUserID() => this.userID != null;

  unsetUserID() {
    this.userID = null;
  }

  String get description => this._description;

  set description(String description) {
    this._description = description;
  }

  bool isSetDescription() => this.description != null;

  unsetDescription() {
    this.description = null;
  }

  int get dueDate => this._dueDate;

  set dueDate(int dueDate) {
    this._dueDate = dueDate;
    this.__isset_dueDate = true;
  }

  bool isSetDueDate() => this.__isset_dueDate;

  unsetDueDate() {
    this.__isset_dueDate = false;
  }

  String get id => this._id;

  set id(String id) {
    this._id = id;
  }

  bool isSetId() => this.id != null;

  unsetId() {
    this.id = null;
  }

  bool get isCompleted => this._isCompleted;

  set isCompleted(bool isCompleted) {
    this._isCompleted = isCompleted;
    this.__isset_isCompleted = true;
  }

  bool isSetIsCompleted() => this.__isset_isCompleted;

  unsetIsCompleted() {
    this.__isset_isCompleted = false;
  }

  bool get isPublic => this._isPublic;

  set isPublic(bool isPublic) {
    this._isPublic = isPublic;
    this.__isset_isPublic = true;
  }

  bool isSetIsPublic() => this.__isset_isPublic;

  unsetIsPublic() {
    this.__isset_isPublic = false;
  }

  String get notes => this._notes;

  set notes(String notes) {
    this._notes = notes;
  }

  bool isSetNotes() => this.notes != null;

  unsetNotes() {
    this.notes = null;
  }

  String get accountID => this._accountID;

  set accountID(String accountID) {
    this._accountID = accountID;
  }

  bool isSetAccountID() => this.accountID != null;

  unsetAccountID() {
    this.accountID = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case USERID:
        return this.userID;
      case DESCRIPTION:
        return this.description;
      case DUEDATE:
        return this.dueDate;
      case ID:
        return this.id;
      case ISCOMPLETED:
        return this.isCompleted;
      case ISPUBLIC:
        return this.isPublic;
      case NOTES:
        return this.notes;
      case ACCOUNTID:
        return this.accountID;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case USERID:
        if (value == null) {
          unsetUserID();
        } else {
          this.userID = value as String;
        }
        break;

      case DESCRIPTION:
        if (value == null) {
          unsetDescription();
        } else {
          this.description = value as String;
        }
        break;

      case DUEDATE:
        if (value == null) {
          unsetDueDate();
        } else {
          this.dueDate = value as int;
        }
        break;

      case ID:
        if (value == null) {
          unsetId();
        } else {
          this.id = value as String;
        }
        break;

      case ISCOMPLETED:
        if (value == null) {
          unsetIsCompleted();
        } else {
          this.isCompleted = value as bool;
        }
        break;

      case ISPUBLIC:
        if (value == null) {
          unsetIsPublic();
        } else {
          this.isPublic = value as bool;
        }
        break;

      case NOTES:
        if (value == null) {
          unsetNotes();
        } else {
          this.notes = value as String;
        }
        break;

      case ACCOUNTID:
        if (value == null) {
          unsetAccountID();
        } else {
          this.accountID = value as String;
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
      case USERID:
        return isSetUserID();
      case DESCRIPTION:
        return isSetDescription();
      case DUEDATE:
        return isSetDueDate();
      case ID:
        return isSetId();
      case ISCOMPLETED:
        return isSetIsCompleted();
      case ISPUBLIC:
        return isSetIsPublic();
      case NOTES:
        return isSetNotes();
      case ACCOUNTID:
        return isSetAccountID();
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
        case USERID:
          if (field.type == thrift.TType.STRING) {
            this.userID = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DESCRIPTION:
          if (field.type == thrift.TType.STRING) {
            this.description = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DUEDATE:
          if (field.type == thrift.TType.I64) {
            this.dueDate = iprot.readI64();
            this.__isset_dueDate = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ID:
          if (field.type == thrift.TType.STRING) {
            this.id = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ISCOMPLETED:
          if (field.type == thrift.TType.BOOL) {
            this.isCompleted = iprot.readBool();
            this.__isset_isCompleted = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ISPUBLIC:
          if (field.type == thrift.TType.BOOL) {
            this.isPublic = iprot.readBool();
            this.__isset_isPublic = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NOTES:
          if (field.type == thrift.TType.STRING) {
            this.notes = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ACCOUNTID:
          if (field.type == thrift.TType.STRING) {
            this.accountID = iprot.readString();
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
    if (this.userID != null) {
      oprot.writeFieldBegin(_USER_ID_FIELD_DESC);
      oprot.writeString(this.userID);
      oprot.writeFieldEnd();
    }
    if (this.description != null) {
      oprot.writeFieldBegin(_DESCRIPTION_FIELD_DESC);
      oprot.writeString(this.description);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_DUE_DATE_FIELD_DESC);
    oprot.writeI64(this.dueDate);
    oprot.writeFieldEnd();
    if (this.id != null) {
      oprot.writeFieldBegin(_ID_FIELD_DESC);
      oprot.writeString(this.id);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IS_COMPLETED_FIELD_DESC);
    oprot.writeBool(this.isCompleted);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_IS_PUBLIC_FIELD_DESC);
    oprot.writeBool(this.isPublic);
    oprot.writeFieldEnd();
    if (this.notes != null) {
      oprot.writeFieldBegin(_NOTES_FIELD_DESC);
      oprot.writeString(this.notes);
      oprot.writeFieldEnd();
    }
    if (this.accountID != null) {
      oprot.writeFieldBegin(_ACCOUNT_ID_FIELD_DESC);
      oprot.writeString(this.accountID);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('Todo(');

    ret.write('userID:');
    if (this.userID == null) {
      ret.write('null');
    } else {
      ret.write(this.userID);
    }

    ret.write(', ');
    ret.write('description:');
    if (this.description == null) {
      ret.write('null');
    } else {
      ret.write(this.description);
    }

    ret.write(', ');
    ret.write('dueDate:');
    ret.write(this.dueDate);

    ret.write(', ');
    ret.write('id:');
    if (this.id == null) {
      ret.write('null');
    } else {
      ret.write(this.id);
    }

    ret.write(', ');
    ret.write('isCompleted:');
    ret.write(this.isCompleted);

    ret.write(', ');
    ret.write('isPublic:');
    ret.write(this.isPublic);

    ret.write(', ');
    ret.write('notes:');
    if (this.notes == null) {
      ret.write('null');
    } else {
      ret.write(this.notes);
    }

    ret.write(', ');
    ret.write('accountID:');
    if (this.accountID == null) {
      ret.write('null');
    } else {
      ret.write(this.accountID);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is Todo) {
      return this.userID == o.userID &&
        this.description == o.description &&
        this.dueDate == o.dueDate &&
        this.id == o.id &&
        this.isCompleted == o.isCompleted &&
        this.isPublic == o.isPublic &&
        this.notes == o.notes &&
        this.accountID == o.accountID;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.userID.hashCode;
    value = (value * 31) ^ this.description.hashCode;
    value = (value * 31) ^ this.dueDate.hashCode;
    value = (value * 31) ^ this.id.hashCode;
    value = (value * 31) ^ this.isCompleted.hashCode;
    value = (value * 31) ^ this.isPublic.hashCode;
    value = (value * 31) ^ this.notes.hashCode;
    value = (value * 31) ^ this.accountID.hashCode;
    return value;
  }

  Todo clone({
    String userID,
    String description,
    int dueDate,
    String id,
    bool isCompleted,
    bool isPublic,
    String notes,
    String accountID,
  }) {
    return Todo()
      ..userID = userID ?? this.userID
      ..description = description ?? this.description
      ..dueDate = dueDate ?? this.dueDate
      ..id = id ?? this.id
      ..isCompleted = isCompleted ?? this.isCompleted
      ..isPublic = isPublic ?? this.isPublic
      ..notes = notes ?? this.notes
      ..accountID = accountID ?? this.accountID;
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
