import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://omarcuellar.co',
  output: 'static',
  compressHTML: true,
  build: {
    format: 'directory'
  }
});
export default defineConfig({
  site: "https://omarcuellar.co",
  trailingSlash: "ignore", // no fuerza redirect, acepta ambas formas
});