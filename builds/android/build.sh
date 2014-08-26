#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
APP_ROOT="$DIR/../.."
APP_ANDROID_ROOT="$DIR"

echo "- config:"
echo "  ANDROID_NDK_ROOT    = $ANDROID_NDK_ROOT"
echo "  APP_ROOT            = $APP_ROOT"
echo "  APP_ANDROID_ROOT    = $APP_ANDROID_ROOT"

# if dont use DEBUG, comments out line below
#NDK_DEBUG=1

# build
echo "Using prebuilt externals"
"$ANDROID_NDK_ROOT"/ndk-build $ANDROID_NDK_BUILD_FLAGS NDK_DEBUG=$NDK_DEBUG APP_ROOT=$APP_ROOT -C "$APP_ANDROID_ROOT" $* \
"NDK_MODULE_PATH=${APP_ANDROID_ROOT}"
