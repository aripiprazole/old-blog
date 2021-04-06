const path = require('path');

const withPlugins = require('next-compose-plugins');
const withTM = require('next-transpile-modules');

module.exports = withPlugins([[withTM, {
  transpileModules: ['bs-platform', 'bs-css'],
}]], {
  cssModules: false,

  pageExtensions: ['bs.js', 'jsx', 'tsx'],

  resolve: {
    modules: ['sass_loader'],
    cssModules: false
  },

  webpack: (config) => {
    config.node = {fs: 'empty'};

    config.module.rules.push({
      test: /\.s[ac]ss$/i,
      use: ['style-loader','css-loader', 'sass-loader'],
    });

    return config;
  },
});
