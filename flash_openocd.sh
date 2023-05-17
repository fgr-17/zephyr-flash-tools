OPENOCD_CONFIG_FILE=$1
BINARY_PATH=$2
openocd -f $OPENOCD_CONFIG_FILE -c "program ${BINARY_PATH} verify reset exit"

