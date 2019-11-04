FreeBSD
-------
use gmake to build

Centos mono
-----------
sudo yum install yum-utils
sudo rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
yum-config-manager --add-repo http://download.mono-project.com/repo/centos7/

sudo yum install mono

Centos .net core
----------------
dotnet new sln --name FooBar
dotnet new console --name Foo --output Foo
dotnet new console --name Bar --output Bar
dotnet sln add .\Foo\Foo.csproj
dotnet sln add .\Bar\Bar.csproj
dotnet restore
dotnet build FooBar.sln

dotnet sln leap_year.sln add leap_year.csproj


http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpref/html/cpref_start.asp
http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpref/html/frlrfsystemnetsockets.asp

make sure mono version 1.0 is installed
-L <lib path>
-lib:<comma list to path to libs>
MONOARGS= Test.cs -r System.Data.dll
MONO_BASEPATH=d:\mono-0.21\install
MONO_CFG_DIR=D:\mono-0.21\install\etc\mono
MONO_PATH=D:\mono-0.21\install\lib


.net
resgen MyStrings.txt MyStrings.resources

      #if (DEBUG)
csc  /define:TEST MyClass.java
