const path = require('path');

const defaultTheme = require("tailwindcss/defaultTheme");
const colors = require("tailwindcss/colors");

module.exports = {
    content: [path.join(__dirname, 'src/**/*.elm')],
    theme: {
        extend: {
            colors: {
                primary: colors.indigo,
                gray: colors.slate
            }
        },
    },
    variants: {
        extend: {},
    },
    plugins: [require('@tailwindcss/forms')]
};
