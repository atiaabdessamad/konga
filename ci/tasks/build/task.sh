#bin#bash
set -xe 
ls
ls konga-dependencies
mkdir -p konga-resource-git/node_modules
unzip -q  konga-dependencies/konga-dependencies-*.zip -d konga-resource-git/node_modules
pushd konga-resource-git
npm install
popd