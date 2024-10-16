module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {},
  },

  extend: {
    colors: {
      gray: {
        300: 'rgb(209, 213, 219)',
      },
    },
  },

  plugins: [
    require('@tailwindcss/typography'),
  ],
}
