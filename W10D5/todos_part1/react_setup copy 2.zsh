
touch node_module

npm init --yes 

npm install --prefix ./ -D webpack-cli
npm install --prefix ./ @babel/core
npm install --prefix ./ @babel/preset-env
npm install --prefix ./ @babel/preset-react
npm install --prefix ./ babel-loader
npm install --prefix ./ react
npm install --prefix ./ react-dom
npm install --prefix ./ react redux
npm install --prefix ./ webpack@4.46.0

touch .gitignore
echo "node_modules
bundle.js
bundle.js.map" >> .gitignore

touch webpack.config.js
echo "const path = require('path');

module.exports = {
  context: __dirname,
  entry: './frontend/entry.jsx',
  output: {
    path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
    filename: 'bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: {
          loader: 'babel-loader',
          query: {
            presets: ['@babel/env', '@babel/react']
          }
        },
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ['.js', '.jsx', '*']
  }
};
" >> webpack.config.js

mkdir "frontend"