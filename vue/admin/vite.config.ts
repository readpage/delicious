import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import path from "path"
import viteCompression from 'vite-plugin-compression'
import externalGlobals from "rollup-plugin-external-globals"

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue({
      template: {
        compilerOptions:{
          // 如果不想让编译器解析这个自定义标签
          isCustomElement: tag => tag.startsWith('lottie-player')
        }
      }
    }), 
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
      // 如果您想过滤掉包导入，例如import {rollup} from 'rollup'
      external: ['vue', 'element-plus', 'vue-router', 'vuex', 'axios', 'vue-echarts', 'echarts'],
      //CDN引入的话，使用这个插件做配置。但是这里引入的文件要是遵循umd格式的，
      //此项只会在打包的文件中使用，未打包状态下的dev模式中不会走这里
      plugins: [
        //其中key就是你引入的时候的名字，value就是引入的那个第三方库的全局变量名字
        externalGlobals({
          vue: "Vue",
          'element-plus': "ElementPlus",
          'element-plus/dist/index.css': 'element-plus/dist/index.css',
          'vue-router': 'VueRouter',
          vuex: 'Vuex',
          axios: 'axios',
          'vue-echarts': 'VueECharts',
          echarts: 'echarts',
          pinia: 'Pinia',
          '@lottiefiles/lottie-player': "@lottiefiles/lottie-player"
        })
      ]
    }
  }
})
