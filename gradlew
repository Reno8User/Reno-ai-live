#!/bin/sh
# Gradle startup script for UN*X
# Licensed under Apache License 2.0

APP_BASE_NAME=`basename "$0"`
APP_HOME="`dirname "$0"`"
[ "$APP_HOME" = "" ] && APP_HOME="."

# Check java
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

if ! command -v "$JAVACMD" >/dev/null 2>&1; then
    echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH." >&2
    exit 1
fi

CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# If gradle-wrapper.jar is missing, download it or execute gradle directly
if [ ! -f "$CLASSPATH" ]; then
    echo "Downloading Gradle Wrapper Jar..."
    mkdir -p "$APP_HOME/gradle/wrapper"
    curl -sLo "$CLASSPATH" "https://raw.githubusercontent.com/gradle/gradle/v8.7.0/gradle/wrapper/gradle-wrapper.jar" || true
fi

exec "$JAVACMD" "-Dorg.gradle.appname=$APP_BASE_NAME" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
