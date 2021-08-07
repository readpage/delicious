import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from "path"

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: [
      {
        find: "@",
        replacement: path.resolve("./src")
      }
    ]
  },
  server: {
    host: '0.0.0.0',
    proxy: {
      "/api": {
        target: "http://localhost/",
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
  }
})
