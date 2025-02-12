import { defineConfig } from "vite";
import type { ProxyOptions } from 'vite'

interface ProxyConfig {
  [key: string]: ProxyOptions
}

const proxy: ProxyConfig = {
  '/local-rpc': {
    target: 'http://127.0.0.1:8545',
    changeOrigin: true,
    rewrite: (path: string) => path.replace(/^\/local-rpc/, '')
  },
  '/local-ws': {
    target: 'ws://127.0.0.1:8545',
    ws: true,
    rewrite: (path: string) => path.replace(/^\/local-ws/, '')
  }
}

export default defineConfig({
  server: {
    proxy,
    port: 3000,
    fs: {
      strict: false,
    },
  },
  build: {
    target: "es2022",
    minify: true,
    sourcemap: true,  
  },
});
