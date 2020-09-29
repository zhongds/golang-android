#include <jni.h>
#include "libadd.h"

JNIEXPORT jint JNICALL
Java_acc_auth_MainActivity_add(JNIEnv *env, jclass clazz, jint x, jint y) {
    return add(x, y);
//    return x + y;
}
