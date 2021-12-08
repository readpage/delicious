import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from "path"
import viteCompression from 'vite-plugin-compression'
import externalGlobals from "rollup-plugin-external-globals"

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(), 
    viteCompression(),
  ],
  resolve: {
    alias: [
      {
        find: "@",
        replacement: path.resolve("./src")
      }
    ]
  },
  css: {
    preprocessorOptions: {
      scss: {
        additionalData: '@use "./src/assets/scss/index.scss";',
      }
    }
  },
  server: {
    host: '0.0.0.0',
    port: 3000,
    proxy: {
      "/api": {
        target: "http://localhost:8081/",
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '')
      }
    }
  },
  // 打包
  build: {
    // 指定输出路径 (相对于 项目根目录).
    outDir: "admin",
    assetsDir: "assets",
    rollupOptions: {
      external: ['vue', 'ElementPlus', 'vue-router', 'vuex', 'axios'],
      plugins: [
        externalGlobals({
          vue: "Vue",
          'element-plus': "ElementPlus",
          'vue-router': 'VueRouter',
          vuex: 'Vuex',
          axios: 'axios',
        })
      ]
    }
  }
})
