module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {},
  },
<<<<<<< HEAD

  extend: {
    colors: {
      gray: {
        300: 'rgb(209, 213, 219)',
      },
    },
  },

=======
>>>>>>> 1f4c43de2565a15b48feefa646368befaf4a5c08
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
