# 🖥️ omarcuellar.co — Sitio con Astro + Docker

Sitio web estático moderno, minimalista y ultra-liviano para compartir diagnósticos electrónicos con agentes virtuales de televisores TRC y LCD.

## 🎨 Paleta de colores

| Color | Hex | Uso |
|-------|-----|-----|
| Institutional Blue | `#123A63` | Botones primarios, títulos |
| Deep Blue | `#0B223D` | Header, footer, fondos oscuros |
| Accent Orange | `#E85D04` | CTAs, acentos, iconos ✓ |
| White | `#FFFFFF` | Fondos, texto sobre oscuro |
| Light Gray | `#D9DDE3` | Fondos alternos, bordes |

## 📁 Estructura del proyecto

```
omarcuellar-site/
├── public/
│   └── favicon.svg
├── src/
│   ├── components/
│   │   ├── Header.astro
│   │   ├── Footer.astro
│   │   ├── Hero.astro
│   │   └── AgentCard.astro
│   ├── layouts/
│   │   └── Layout.astro
│   ├── pages/
│   │   ├── index.astro          (Inicio)
│   │   ├── agente-trc.astro     (Agente TRC)
│   │   ├── agente-lcd.astro     (Agente LCD)
│   │   └── guia.astro           (Guía de uso)
│   └── styles/
│       └── global.css
├── Dockerfile
├── .dockerignore
├── astro.config.mjs
├── package.json
└── README.md
```

## 🚀 Paso a paso: desde cero hasta producción

### Paso 1: Requisitos previos

- **Node.js** 18 o superior instalado en tu PC
- **VS Code** instalado
- **Cuenta en GitHub**
- **VPS con Coolify** funcionando
- **Dominio** configurado (omarcuellar.co)

Verifica Node.js:
```bash
node -v
```

### Paso 2: Preparar el proyecto en tu PC

1. Descomprime esta carpeta en tu PC (ej: `C:\Proyectos\omarcuellar-site`)
2. Abre VS Code y selecciona **File → Open Folder** → elige la carpeta del proyecto
3. Abre una terminal en VS Code (**Ctrl + `** o **Terminal → New Terminal**)

### Paso 3: Instalar dependencias

En la terminal de VS Code:

```bash
npm install
```

Esto descarga Astro y todo lo necesario (~1 minuto).

### Paso 4: Editar los enlaces a tus agentes

Antes de compilar, edita estos archivos para poner los dominios reales de tus agentes en Coolify:

**En `src/pages/agente-trc.astro`:**
Busca `https://agente-trc.tudominio.com` y cámbialo por tu dominio real del agente TRC.

**En `src/pages/agente-lcd.astro`:**
Busca `https://agente-lcd.tudominio.com` y cámbialo por tu dominio real del agente LCD.

### Paso 5: Probar localmente

```bash
npm run dev
```

Abre tu navegador en `http://localhost:4321`

Navega por todas las páginas. Si todo se ve bien, presiona **Ctrl + C** en la terminal para detener.

### Paso 6: Compilar para producción

```bash
npm run build
```

Esto crea la carpeta `dist/` con archivos HTML, CSS y JS planos listos para servir.

### Paso 7: Subir a GitHub

1. Ve a [github.com](https://github.com) y crea un nuevo repositorio público llamado `omarcuellar-site`
2. En VS Code, en la terminal:

```bash
git init
git add .
git commit -m "Primer commit: sitio Astro base con Dockerfile"
git branch -M main
git remote add origin https://github.com/TUUSUARIO/omarcuellar-site.git
git push -u origin main
```

(Reemplaza `TUUSUARIO` con tu nombre de usuario de GitHub)

### Paso 8: Desplegar en Coolify con Dockerfile (IMPORTANTE)

1. Entra a tu panel de Coolify en el VPS
2. Ve a tu aplicación `omarcuellar-site`
3. Busca la sección **Build** o **Configuration**
4. Cambia **Build Pack** de `nixpacks` a **`dockerfile`**
5. Asegúrate de que Coolify detecte el `Dockerfile` en la raíz del repo
6. Configura el dominio: `omarcuellar.co`
7. Presiona **Deploy**

Coolify usará el Dockerfile para:
- Compilar Astro con Node.js
- Generar los archivos estáticos en `dist/`
- Servirlos con Nginx (ultra-liviano)

### Paso 9: Verificar

- Visita tu dominio en el navegador
- Revisa que los enlaces a los agentes funcionen
- Prueba en el celular con datos móviles

---

## 📝 Cómo hacer cambios futuros

1. Edita los archivos `.astro` en VS Code
2. Guarda (Ctrl + S)
3. En la terminal:
```bash
git add .
git commit -m "Descripción del cambio"
git push origin main
```
4. Coolify detecta el push y redeploya automáticamente

---

## ⚡ Optimizaciones incluidas

- ✅ HTML estático puro (output: static)
- ✅ Compresión Gzip en Nginx
- ✅ Fuente del sistema (sin descargas de Google Fonts)
- ✅ Sin imágenes pesadas (solo SVG inline)
- ✅ Botones táctiles de 56px mínimo
- ✅ Contraste alto para lectura fácil
- ✅ Skip link para accesibilidad
- ✅ Reduce motion para usuarios sensibles
- ✅ Meta theme-color para navegadores móviles

---

## 🔗 Enlaces importantes a editar

| Archivo | Qué cambiar | Por qué |
|---------|-------------|---------|
| `src/pages/agente-trc.astro` | `https://agente-trc.tudominio.com` | Tu agente TRC real |
| `src/pages/agente-lcd.astro` | `https://agente-lcd.tudominio.com` | Tu agente LCD real |
| `src/components/Footer.astro` | Texto del footer | Personalización |
| `src/pages/index.astro` | Texto "Sobre Omar Cuellar" | Tu biografía |

---

Hecho con ❤️ para reparadores electrónicos.
