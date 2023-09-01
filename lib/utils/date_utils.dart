import 'package:intl/intl.dart';

class DateUtils {
  // AD
  getMonth(DateTime date) {
    try {
      return DateFormat('MMMM').format(date);
    } catch (e) {
      return "";
    }
    // return date.month;
  }

  getYear(DateTime date) {
    try {
      return DateFormat('yyyy').format(date);
    } catch (e) {
      return "";
    }
    // return date.month;
  }

  getDay(DateTime date) {
    try {
      return date.day.toString();
    } catch (e) {
      return "";
    }
  }

  getWeekDay(DateTime date) {
    try {
      return DateFormat('EEEE').format(date);
    } catch (e) {
      return "";
    }
  }

  getTimeInHHMMA(DateTime date) {
    try {
      return DateFormat('h:mm a').format(date);
    } catch (e) {
      return "";
    }
  }

  getDateMonthYear(DateTime date) {
    try {
      return DateFormat("MMM d, y").format(date);
    } catch (e) {
      return "";
    }
  }

  // Bikram Samwant BS



  getDayInBS(DateTime date) {
    // var nt = date.toNepaliDateTime();
    try {
      return date.day.toString();
    } catch (e) {
      return "";
    }
  }


}

DateUtils dateUtils = DateUtils();
