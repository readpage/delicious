import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from "path"
import viteCompression from 'vite-plugin-compression'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue(), viteCompression()],
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
        additionalData: '@import "./src/assets/scss/index.scss";',
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
  },
})
