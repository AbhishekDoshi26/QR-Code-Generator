# QR Forge

A free, fast QR code generator. Paste any URL (or plain text), customize the size, colors, and error-correction level, and download the result as PNG or SVG. Everything runs client-side in the browser — no data is sent to a server.

## Features

- Generate a QR code from any URL or text
- Adjustable size (150–1000px)
- Custom foreground/background colors
- Selectable error-correction level (L / M / Q / H)
- Download as PNG or SVG
- Copy the generated code straight to your clipboard
- Recent-codes history (stored locally in your browser)
- Light/dark theme, responsive layout
- Shareable links: `index.html?url=https://example.com` prefills and auto-generates

## Tech

Single static `index.html` file. Uses the [qrcode](https://github.com/soldair/node-qrcode) JS library via CDN for QR rendering. No build step, no backend.

## Running locally

Just open `index.html` in a browser, or serve the folder:

```bash
python3 -m http.server 8000
```

Then visit `http://localhost:8000`.

## Deployment

This site is deployed with GitHub Pages directly from the `main` branch.

## License

MIT

