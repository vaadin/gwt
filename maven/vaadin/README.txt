Script for building javadoc/sources and pom files for already built GWT jars

Depends on jars being available in build/lib in the project root

Processes
* gwt-codeserver
* gwt-dev
* gwt-servlet
* gwt-user

Output files are placed in the "out" directory

Run as
> ant -Dgwt.version=1.2.3

where the version (1.2.3) is used for pom files and jar names. It should
match the version used when building the GWT jars.
