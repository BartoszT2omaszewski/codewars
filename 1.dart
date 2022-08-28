



String printerError(String s) => RegExp("[nopqrstuvwxyz]").allMatches(s).length.toString() + "/" + s.length.toString();
