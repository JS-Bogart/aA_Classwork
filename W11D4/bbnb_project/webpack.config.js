const path = require('path');
module.exports = {
    context: __dirname,
    entry: './frontend/bench_bnb.jsx',
    output: {
        path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: [/\.jsx?$/],
                exclude: /node_modules/,
                loader: 'babel-loader',
                options: {
                    presets: ['env', 'react']
                }
            }
        ]
    },
    devtool: 'source-map',
    resolve: {
        extensions: ['.js', '.jsx', '*']
    }
}