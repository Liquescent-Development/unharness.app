# unharness.app

The website for [unharness](https://github.com/Liquescent-Development/unharness),
served at <https://unharness.app> by GitHub Pages.

Plain HTML and CSS, no build step. Every push to `main` deploys through
`.github/workflows/pages.yml`. To preview locally:

```bash
python3 -m http.server 8000
```

`assets/demo.gif` and the logos are copies of the ones in the main repository's
`assets/`; when the demo is re-recorded there (`vhs assets/demo.tape`), copy it
here too.
