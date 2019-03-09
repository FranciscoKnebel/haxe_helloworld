package src.beginner;

class UsingFileSystem {
  static public function main() {
    #if sys

    trace("file system can be accessed");
    
    
    
    var content:String = sys.io.File.getContent('src/files/example.txt');
    trace(content);

    var user = {name:"Mark", age:31};
    var content:String = haxe.Json.stringify(user);
    sys.io.File.saveContent('src/files/file.json',content);


    var location = "path/to/file.txt";
    var path = new haxe.io.Path(location);
    trace(path.dir); // path/to
    trace(path.file); // file
    trace(path.ext); // txt


    var directory = "path/to/";
    var file = "./file.txt";
    trace(haxe.io.Path.join([directory, file])); // path/to/file.txt

    
    function recursiveLS(directory:String = "path/to/", tab: Int = 0) {
      var tabs: String = "";
      var inserted = 0;

      while(inserted < tab) {
        tabs += '\t';
        inserted += 1;
      }
      
      if (sys.FileSystem.exists(directory)) {
        for (file in sys.FileSystem.readDirectory(directory)) {
          var path = haxe.io.Path.join([directory, file]);
          if (!sys.FileSystem.isDirectory(path)) {
            trace(tabs + "file found: " + path);
            // do something with file
          } else {
            var directory = haxe.io.Path.addTrailingSlash(path);
            trace(tabs + "directory found: " + directory);
            recursiveLS(directory, tab + 1);
          }
        }
      } else {
        trace(tabs + '"$directory" does not exists');
      }
    }
    recursiveLS(".");



    var y = new haxe.io.Path('src/files/file.json'); 
    // var stat:sys.FileStat = sys.FileSystem.stat(y);
    // trace("Last access time: " + stat.atime);
    // trace("Last modification time: " + stat.mtime);
    // trace("Last status change time: " + stat.ctime);
    // trace("The user id: " + stat.uid);
    // trace("File size: " + stat.size);



    #else
    trace("sys not supported.");
    #end
  }
}