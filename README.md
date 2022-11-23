# Equinor Lithology Patterns

The repository is responsible for bundling the SVG lithology patterns. The
patterns themselves should be able to be used by any project. Initially only an
npm module is published to be consumed by a variety of Javascript projects,
however modules for other languages (such as NuGet) will also be placed inside
this repo.

The project is licensed under the [MIT
license](https://github.com/equinor/lithology-patterns/blob/main/LICENSE)
following [the open source strategy of Equinor](https://opensource.equinor.com).

## Overview

This repository hosts the lithology patterns inside the `assets/` folder. If
more patterns need to be added, these should be placed inside the `figma/`
folder and pre-process them by running `npm run patterns:process`.

### NPM

The `package.json` describes that these raw folders should be bundled within the
NPM package whenever the bundle gets published.

The library doesn't define how you need to bundle your application in order to
use the SVG's. The SVG's can simply be imported and it's up to the application
to decide how to handle the SVG's.

```javascript
import choosePatternName from 'lithology-patterns/assets/svg/30000.svg
```

### Adding new pattern
1. Place new pattern in `figma/`
2. Run `npm patterns:process`
3. Add new optimized pattern in `assets/`to git repository

### NuGet
TODO

### Others
TODO

## Patterns

- [sandstone](./patterns.md#sandstone)
- [siltstone](./patterns.md#siltstone)
- [mudstone](./patterns.md#mudstone)
- [claystone](./patterns.md#claystone)
- [shale](./patterns.md#shale)
- [limestone](./patterns.md#limestone)
- [marl](./patterns.md#marl)
- [gypsum](./patterns.md#gypsum)
- [dolostone](./patterns.md#dolostone)
- [conglomerate](./patterns.md#conglomerate)
