// config/webpack/environment.js
const { environment } = require('@rails/webpacker');

const postcssLoader = environment.loaders.get('css').use.find(el => el.loader === 'postcss-loader');

if (postcssLoader) {
  postcssLoader.options.postcssOptions = {
    config: './postcss.config.js',
  };
}

module.exports = environment;
