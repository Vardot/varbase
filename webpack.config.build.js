const { merge } = require('webpack-merge');
const webpackConfig = require('./webpack.config');
const TerserPlugin = require('terser-webpack-plugin');

module.exports = merge(webpackConfig, {
  mode: 'development',
  devtool: false,
  optimization: {
    minimize: true,
    minimizer: [
      new TerserPlugin({
        terserOptions: {
          compress: {},
          mangle: false,
          module: true,
          format: {
            beautify: true,
            comments: false,
            indent_level: 2,
          },
        },
        extractComments: false,
      })
    ],
  }
});
