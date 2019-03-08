class Arrays {
    static public function main() {
        var arrayOfStrings:Array<String> = ["Apple", "Pear", "Banana"];
        trace(arrayOfStrings);

        var arrayOfFloats = [10.2, 40.5, 60.3];
        trace(arrayOfFloats);

        trace([for(i in 1...6) i]);
        trace([for(i in 0...5) i*2]);
        trace([for(c in 65...70) String.fromCharCode(c)]);

        var x = 1;
        trace([while(x < 128) x = x * 2]);
        //////////////////////////////////
        var arrayOfStrings:Array<String> = [];
        // Adds "Hello" at index 0,
        // offsetting elements to the right by one position
        arrayOfStrings.insert(0, "Hello");
        // Prepends "Haxe" to the start of the array
        arrayOfStrings.unshift("Haxe");
        // Appends "World" to the end of the array 
        arrayOfStrings.push("World");
        // Appends "foo", "bar" elements to the end of a copy of the array
        arrayOfStrings = arrayOfStrings.concat(["foo", "bar"]);
        arrayOfStrings.insert(3, "Example");
        trace(arrayOfStrings);
        //////////////////////////////////
        var arrayOfStrings2:Array<String> = ["first", "foo", "middle", "foo", "last"];
        trace(arrayOfStrings2);
        // Removes first occurence of "middle" in the array
        arrayOfStrings2.remove("middle");
        // Removes and returns three elements beginning with (and including) index 0
        arrayOfStrings2.splice(0, 3);
        // Removes and returns first element of the array
        arrayOfStrings2.shift();
        // Removes and returns last element of the array
        arrayOfStrings2.pop();
        trace(arrayOfStrings2);
        ////////////////////////////////////
        var arrayOfStrings3:Array<String> = ["first", "foo", "middle", "foo", "last"];
        trace(arrayOfStrings3);
        // Retrieves first array element
        var first = arrayOfStrings3[0];
        // Retrieves last array element
        var last = arrayOfStrings3[arrayOfStrings3.length - 1];
        // Retrieves first occurrence of "foo" string
        var firstOccurrence = arrayOfStrings3[arrayOfStrings3.indexOf("foo")];
        // Retrieves last occurrence of "foo" string
        var lastOccurrence = arrayOfStrings3[arrayOfStrings3.lastIndexOf("foo")];
        trace(first, last, firstOccurrence, lastOccurrence);

        for (item in arrayOfStrings3) {
            trace(item);
        }
        /////////////////////////////////////
        var list:Array<String> = ["first", "second", "last"];
        var copiedList = list.copy();
        var assignedList = copiedList;

        copiedList.push("best"); // add extra value to the copied list

        trace(list); // ["first", "second", "last"];
        trace(copiedList); // ["first", "second", "last", "best"];
        trace(assignedList); // => copiedList
        
        var filteredList = list.filter(function (v) return v == "second");
        trace(filteredList);

        var list2:Array<String> = ["apple", "pear", "banana"];
        var filteredList2 = [for (v in list2 ) if (v == "banana") v];
        trace(filteredList2); // banana
        ///////////////////////////////////////////
        var list3:Array<String> = ["first", "second", "last"];
        var importantList3 = list3.map(function (v) return v.toUpperCase());
        trace(importantList3); // ["FIRST","SECOND","LAST"]
        ///////////////////////////////////////
        list2.reverse();
        trace(list2);

        trace(list2.slice(1,3));
        //////////////////////////////////////////////
        var arrayOfInts:Array<Int> = [1,5,2,4,3];
        arrayOfInts.sort(function (a, b) return a - b);
        trace(arrayOfInts); // [1,2,3,4,5]

        var arrayOfStrings4:Array<String> = ["c", "a", "b"];
        arrayOfStrings4.sort(function (a, b) return if (a < b) -1 else 1);
        trace(arrayOfStrings4); // ["a","b","c"]
        ///////////////////////////////////////////////
        // Returns a string of array elements concatenated by separator string
        var listJoined:String = list3.join(" / ");
        trace(listJoined);
    
        // Returns a string representation of the array structure
        var listAsString:String = list3.toString();
        trace(listAsString);
    }
}

