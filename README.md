# HAXE Hello World

### Initial Setup:

```
sudo add-apt-repository ppa:haxe/releases -y
sudo apt-get update
sudo apt-get install haxe -y
mkdir ~/haxelib && haxelib setup ~/haxelib
```

### Compile

##### to JS
```
haxe -cp src -main HelloWorld -js HelloWorld.js
```

#### and interpret
```
haxe -cp src -main HelloWorld --interp
```
