rm -rf mlibs/*
rm -rf mods/*
echo "javac -d mods/com.logger 'find src/com.logger -name *.java'"
javac -d mods/com.logger `find src/com.logger -name '*.java'`
echo "javac -mp mods -d mods/com.message 'find src/com.message -name *.java'"
javac -mp mods -d mods/com.message `find src/com.message -name '*.java'`
echo "java -mp mods -m com.message/com.message.app.Application"
java -mp mods -m com.message/com.message.app.Application

