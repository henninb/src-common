echo create a junction (hard link) run as admin
mklink /J C:\Java "C:\Program Files\Java"

# Centos openjava
sudo yum install java-1.8.0-openjdk

java -verbose <class_name>

java -version

javac ExampleMain.java
jar cmf manifest.txt ExampleMain.jar *.class

# define something
java -DAPPL=ExampleMain -jar ExampleMain.jar

java -jar ExampleMain.jar

gcj --version
gcj --main=Example -o Example Example.java
gcj --main=package.name.helloworld helloworld.java

Example 1: to archive two class files into an archive called classes.jar:
       jar cvf classes.jar Foo.class Bar.class
Example 2: use an existing manifest file 'mymanifest' and archive all the
           files in the foo/ directory into 'classes.jar':
       jar cvfm classes.jar mymanifest -C foo/ .

For JDK 9
javac --add-modules java.xml.bind <java file name>
java --add-modules java.xml.bind <class file>