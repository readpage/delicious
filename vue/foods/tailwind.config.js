module.exports = {
  mode: "jit",
  // darkMode: false, // or 'media' or 'class'
  content: [
    "./index.html",
    "./src/**/*.{js,ts,vue}"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
  corePlugins: {
   preflight: false,
  }
}
