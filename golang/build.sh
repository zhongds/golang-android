export GOARCH=arm
export GOOS=android
export CGO_ENABLED=1
export CC=$NDK_HOME/toolchains/llvm/prebuilt/darwin-x86_64/bin/armv7a-linux-androideabi21-clang
go build -buildmode=c-shared -o output/android/armeabi-v7a/libadd.so main.go

echo "Build armeabi-v7a success"

export GOARCH=arm64
export GOOS=android
export CGO_ENABLED=1
export CC=$NDK_HOME/toolchains/llvm/prebuilt/darwin-x86_64/bin/aarch64-linux-android21-clang
go build -buildmode=c-shared -o output/android/arm64-v8a/libadd.so main.go

echo "Build arm64-v8a success"

# export GOARCH=amd64
export GOARCH=386
export GOOS=android
export CGO_ENABLED=1
export CC=$NDK_HOME/toolchains/llvm/prebuilt/darwin-x86_64/bin/i686-linux-android21-clang
go build -buildmode=c-shared -o output/android/x86/libadd.so main.go

echo "Build x86 success"

export GOARCH=amd64
export GOOS=android
export CGO_ENABLED=1
export CC=$NDK_HOME/toolchains/llvm/prebuilt/darwin-x86_64/bin/x86_64-linux-android21-clang
go build -buildmode=c-shared -o output/android/x86_64/libadd.so main.go

echo "Build x86_64 success"
