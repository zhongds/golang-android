#!/bin/sh
JNI_LIBS=./app/src/main/jniLibs

rm -rf $JNI_LIBS
mkdir $JNI_LIBS
mkdir $JNI_LIBS/arm64-v8a
mkdir $JNI_LIBS/armeabi-v7a
mkdir $JNI_LIBS/x86

cp ../golang/output/android/arm64-v8a/libadd.so $JNI_LIBS/arm64-v8a/libadd.so
cp ../golang/output/android/armeabi-v7a/libadd.so $JNI_LIBS/armeabi-v7a/libadd.so
cp ../golang/output/android/x86/libadd.so $JNI_LIBS/x86/libadd.so
