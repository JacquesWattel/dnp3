/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class com_automatak_dnp3_impl_ManagerImpl */

#ifndef _Included_com_automatak_dnp3_impl_ManagerImpl
#define _Included_com_automatak_dnp3_impl_ManagerImpl
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     com_automatak_dnp3_impl_ManagerImpl
 * Method:    create_native_manager
 * Signature: (ILcom/automatak/dnp3/LogHandler;)J
 */
JNIEXPORT jlong JNICALL Java_com_automatak_dnp3_impl_ManagerImpl_create_1native_1manager
  (JNIEnv *, jobject, jint, jobject);

/*
 * Class:     com_automatak_dnp3_impl_ManagerImpl
 * Method:    shutdown_native_manager
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_automatak_dnp3_impl_ManagerImpl_shutdown_1native_1manager
  (JNIEnv *, jobject, jlong);

/*
 * Class:     com_automatak_dnp3_impl_ManagerImpl
 * Method:    get_native_channel_tcp_client
 * Signature: (JLjava/lang/String;IJJLjava/lang/String;I)J
 */
JNIEXPORT jlong JNICALL Java_com_automatak_dnp3_impl_ManagerImpl_get_1native_1channel_1tcp_1client
  (JNIEnv *, jobject, jlong, jstring, jint, jlong, jlong, jstring, jint);

/*
 * Class:     com_automatak_dnp3_impl_ManagerImpl
 * Method:    get_native_channel_tcp_server
 * Signature: (JLjava/lang/String;IJJLjava/lang/String;I)J
 */
JNIEXPORT jlong JNICALL Java_com_automatak_dnp3_impl_ManagerImpl_get_1native_1channel_1tcp_1server
  (JNIEnv *, jobject, jlong, jstring, jint, jlong, jlong, jstring, jint);

/*
 * Class:     com_automatak_dnp3_impl_ManagerImpl
 * Method:    get_native_channel_serial
 * Signature: (JLjava/lang/String;IJJLjava/lang/String;IIIII)J
 */
JNIEXPORT jlong JNICALL Java_com_automatak_dnp3_impl_ManagerImpl_get_1native_1channel_1serial
  (JNIEnv *, jobject, jlong, jstring, jint, jlong, jlong, jstring, jint, jint, jint, jint, jint);

#ifdef __cplusplus
}
#endif
#endif
