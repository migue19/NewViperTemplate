XCODE_PATH="${HOME}/Library/Developer/Xcode"
cd $XCODE_PATH

TEMPLATES_PATH=${HOME}/Library/Developer/Xcode/Templates
FILE_TEMPLATES_PATH="${TEMPLATES_PATH}/File Templates"

if [[ ! -e $TEMPLATES_PATH ]]; then
    echo "Creating Templates directory $TEMPLATES_PATH"
    mkdir $TEMPLATES_PATH
fi

if [[ ! -e $FILE_TEMPLATES_PATH ]]; then
    echo "Creating File Templates directory $FILE_TEMPLATES_PATH"
    mkdir -p "${FILE_TEMPLATES_PATH}"
fi

echo "Copying the templates into the directory $FILE_TEMPLATES_PATH"
cd "$FILE_TEMPLATES_PATH"
SOURCE_FILE="${FILE_TEMPLATES_PATH}/ViperTemplate"

if [[ ! -e $SOURCE_FILE ]]; then
  echo "Cloning the directory "
  git clone https://github.com/migue19/NewViperTemplate.git
else
    cd "$SOURCE_FILE"
    echo "updating the directory "
    git pull
fi



