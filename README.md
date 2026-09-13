# QR Forge

A free, fast QR code generator. Paste any URL (or plain text), customize the size, colors, and error-correction level, and download the result as PNG or SVG. Everything runs client-side in the browser — no data is sent to a server.

## Features

- Generate a QR code from any URL or text
- Adjustable size (150–1000px)
- Custom foreground/background colors
- Optional center logo overlay (auto-switches to High error correction so the code stays scannable)
- Selectable error-correction level (L / M / Q / H)
- Download as PNG or SVG
- Copy the generated code straight to your clipboard
- Recent-codes history (stored locally in your browser)
- Light/dark theme, responsive layout
- Shareable links: `index.html?url=https://example.com` prefills and auto-generates

## Tech

Single static `index.html` file. Uses the [qrcodejs](https://github.com/davidshimjs/qrcodejs) library via CDN for QR rendering (canvas for the on-screen/PNG output, with a small custom routine that reads the same QR matrix to produce a true vector SVG). No build step, no backend.

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
