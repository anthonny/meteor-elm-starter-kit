const path = require('path');

const defaultTheme = require("tailwindcss/defaultTheme");
const colors = require("tailwindcss/colors");

module.exports = {
    content: [path.join(__dirname, 'src/**/*.elm')],
    theme: {
        extend: {
            colors: {
                primary: colors.indigo,
                gray: colors.slate,
                orange: colors.orange,
            },
            fontFamily: {
                sans: ["Inter", ...defaultTheme.fontFamily.sans],
            },
            typography: (theme) => ({
                DEFAULT: {
                    css: {
                        code: {
                            backgroundColor: colors.blue[50],
                        },
                        "code::before": {
                            content: '""',
                        },
                        "code::after": {
                            content: '""',
                        },
                    },
                },
            }),
        },
    },
    variants: {
        extend: {},
    },
    plugins: [require('@tailwindcss/forms')]
};
