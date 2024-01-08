import { fileURLToPath, URL } from "node:url";
import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
const { createProxyMiddleware } = require("http-proxy-middleware");

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },
  server: {
    proxy: {
      "/api": {
        target: "http://127.0.0.1:8000", // Remove extra spaces
        changeOrigin: true,
        pathRewrite: {
          "^/api": "", // Rewrite the path: remove '/api'
        },
        secure: false,
      },
    },
  },
});
