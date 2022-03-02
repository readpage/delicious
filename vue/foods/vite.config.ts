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
    port: 3001,
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
    outDir: "foods",
    assetsDir: "assets",
    rollupOptions: {
      plugins: [
        //此项只会在打包的文件中使用，未打包状态下的dev模式中不会走这里
        externalGlobals({
          // 如果您想过滤掉包导入，例如import ElementPlus from 'element-plus'
          //其中key就是你引入的时候的名字，value就是引入的那个第三方库的全局变量名字
          vue: "Vue",
          'vue-router': 'VueRouter',
          axios: 'axios',
          pinia: 'Pinia',
          'element-plus': "ElementPlus",
          'element-plus/dist/index.css': 'element-plus/dist/index.css',
        })
      ]
    }
  },
})
