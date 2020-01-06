#!/bin/bash
yarn create react-app $1
projectName=$(basename $1)
cwd=$(pwd)
cd $1
yarn add eslint --dev
yarn eslint --init
yarn add prettier --dev
yarn add eslint-config-prettier --dev
yarn add eslint-plugin-prettier --dev
yarn add immutability-helper
yarn add babel-eslint --dev
yarn add prop-types
rm package-lock.json
yarn install
\cp -Rf $cwd/base.code-workspace $1/$projectName.code-workspace
\cp -Rf $cwd/base.eslintrc.js $1/.eslintrc.js
\cp -Rf $cwd/base.gitignore $1/.gitignore
\cp -Rf $cwd/base.prettierrc $1/.prettierrc
code .
