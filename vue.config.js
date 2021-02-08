const { GenerateSW } = require("workbox-webpack-plugin");

module.exports = {
  publicPath: process.env.NODE_ENV === "development" ? "/pwa-primeira/" : "",

  configureWebpack: {
    plugins: [new GenerateSW()]
  }
};