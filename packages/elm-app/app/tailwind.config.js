const path = require("path");
module.exports = {
  purge: [path.join(__dirname, "src/**/*.elm")],
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
};
