#!/bin/bash
APP=$1
PACKAGING_MODULE=$APP-app

mvn -U clean install -DskipTests
if [ $? -ne 0 ]; then
  echo "compile error!"
  exit 2
fi
rm -rf output
mkdir -p output/$APP/lib

mv $APP/target/$APP*.jar $APP/target/$PACKAGING_MODULE.jar
cp $APP/target/$PACKAGING_MODULE.jar output/$APP/lib
# 如果有bin/setenv.sh 或其他文件 则注释调下一行 将bin复制到output目录进行打包
cp -r $APP/bin output/$APP/bin

tar zcf output/$APP.tar.gz -C output/$APP .
rm -rf output/$APP