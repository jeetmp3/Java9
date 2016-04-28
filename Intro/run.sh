rm -rf mlibs/*
rm -rf mods/*
echo "[INFO  ] Compiling.............."
javac -d mods/demo.hello.world `find src/ -name '*.java'`
echo "[INFO  ] Done"
echo "[INFO  ] java -modulepath mods -m demo.hello.world/demo.HelloWorld"
java -modulepath mods -m demo.hello.world/demo.HelloWorld
echo "[INFO  ] Creating jar"
echo "[INFO  ] jar --create --file=mlibs/demo.hello.world.jar -e demo.HelloWorld -C mods/demo.hello.world/ ."
jar --create --file=mlibs/demo.hello.world.jar -e demo.HelloWorld -C mods/demo.hello.world .
echo "[INFO  ] Running JAR..."
echo "[INFO  ] java -mp mlibs -m demo.hello.world"
java -mp mlibs -m demo.hello.world
