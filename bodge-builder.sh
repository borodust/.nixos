source $stdenv/setup

TARGET_DIR="$out/bin"
RUNNER=$TARGET_DIR/${appName}-bodged
LIB_PATH="$TARGET_DIR/lib:$libPath"

mkdir -p $TARGET_DIR

echo "#!/usr/bin/env sh" >> $RUNNER
echo "export LD_LIBRARY_PATH=\"$LIB_PATH\"\${LD_LIBRARY_PATH:+\":\"}\$LD_LIBRARY_PATH" >> $RUNNER
echo "exec -a \"\$0\" \"$appPath\" \"\$@\"" >> $RUNNER
chmod +x $RUNNER
