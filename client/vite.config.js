import react from '@vitejs/plugin-react';
import { defineConfig } from 'vite'

export default defineConfig({
  server: {
    proxy: {
      "/api": {
        target: "http://localhost:8800",
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, ""),
      },
      "/auth": {  // เพิ่ม proxy สำหรับ auth
        target: "http://localhost:8800",
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/auth/, ""),
      },
    },
  },
  plugins: [react()],
});