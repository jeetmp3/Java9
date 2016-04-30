echo "rm -rf mlibs/*"
echo "rm -rf mods/*"
echo "rm -rf jmod-files/*"

rm -rf mlibs/*
rm -rf mods/*
rm -rf jmod-files/*

echo "javac -d mods/com.foo.two 'find src/com.foo.two -name *.java'"
javac -d mods/com.foo.two `find src/com.foo.two -name '*.java'`

echo "javac -d mods/com.foo.one -mp mods 'find src/com.foo.one -name *.java'"
javac -d mods/com.foo.one -mp mods `find src/com.foo.one -name '*.java'`

echo "javac -d mods/com.app -mp mods 'find src/com.app -name *.java'"
javac -d mods/com.app -mp mods `find src/com.app -name '*.java'`

echo "java -mp mods -m com.app/com.app.Application"
java -mp mods -m com.app/com.app.Application

echo "jar --create --file=mlibs/com.foo.two.jar -C mods/com.foo.two ."
jar --create --file=mlibs/com.foo.two.jar -C mods/com.foo.two .
echo "jar --create --file=mlibs/com.foo.one.jar -C mods/com.foo.one ."
jar --create --file=mlibs/com.foo.one.jar -C mods/com.foo.one .
echo "jar --create --file=mlibs/com.app.jar -e com.app.Application -C mods/com.app ."
jar --create --file=mlibs/com.app.jar -e com.app.Application -C mods/com.app .

echo "java -mp mlibs -m com.app"
java -mp mlibs -m com.app

echo "jmod create --class-path mods/com.foo.two/ jmod-files/com.foo.two.jmod"
jmod create --class-path mods/com.foo.two/ jmod-files/com.foo.two.jmod

echo "jmod create --class-path mods/com.foo.one/ jmod-files/com.foo.one.jmod"
jmod create --class-path mods/com.foo.one/ jmod-files/com.foo.one.jmod

echo "jmod create --class-path mods/com.app/ jmod-files/com.app.jmod"
jmod create --class-path mods/com.app/ jmod-files/com.app.jmod
