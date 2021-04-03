import 'package:cloud_firestore/cloud_firestore.dart';

Timestamp? dateTimeToTimestamp(DateTime? dateTime) =>
    dateTime != null ? Timestamp.fromDate(dateTime) : null;
DateTime timestampToDateTime(Timestamp timestamp) => timestamp.toDate();
