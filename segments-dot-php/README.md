# segments.php

## Simulate segmented displays with a single PHP file.

### Customizable Colors

`f` - Sets the face color.

`b` - Sets the blank color.

`l` - Sets the lamp color.

You may use CSS color names or hex values. Hex values need the `#` prefix, escaped using `%23` in URL encoding.

| `segments.php?b=%23DDD&l=%23F00` | `segments.php?f=%23DDD&b=%23DDD&l=%23000` | `segments.php?f=%23000&b=%23333&l=%230F0` |
| -------------------------------- | ----------------------------------------- | ----------------------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?b=%23DDD&l=%23F00&d=0x6D) | ![](http://www.kreativekorp.com/lib/segments.php?f=%23DDD&b=%23DDD&l=%23000&d=0x6D) | ![](http://www.kreativekorp.com/lib/segments.php?f=%23000&b=%23333&l=%230F0&d=0x6D) |

### 7-Segment

Specify segment designators:

| `segments.php?s=7&d=abcdef` | `segments.php?s=7&d=bc` | `segments.php?s=7&d=abdeg` | `segments.php?s=7&d=abcdg` | `segments.php?s=7&d=bcfg` |
| --------------------------- | ----------------------- | -------------------------- | -------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=abcdef) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=bc) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=abdeg) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=abcdg) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=bcfg) |

Or hex values:

| `segments.php?s=7&d=0x6D` | `segments.php?s=7&d=0x7D` | `segments.php?s=7&d=0x07` | `segments.php?s=7&d=0x7F` | `segments.php?s=7&d=0x6F` |
| --------------------------- | ----------------------- | -------------------------- | -------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=0x6D) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=0x7D) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=0x07) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=0x7F) | ![](http://www.kreativekorp.com/lib/segments.php?s=7&d=0x6F) |

### 14-Segment

Specify segment designators:

| `segments.php?s=14&d=abcefg1g2` | `segments.php?s=14&d=efg1kn` | `segments.php?s=14&d=ajm` | `segments.php?s=14&d=hkm` | `segments.php?s=14&d=adkl` |
| --------------------------- | ----------------------- | -------------------------- | -------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=abcefg1g2) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=efg1kn) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=ajm) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=hkm) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=adkl) |

Or hex values:

| `segments.php?s=14&d=0x00F7` | `segments.php?s=14&d=0x2470` | `segments.php?s=14&d=0x1201` | `segments.php?s=14&d=0x1500` | `segments.php?s=14&d=0x0C09` |
| --------------------------- | ----------------------- | -------------------------- | -------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=0x00F7) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=0x2470) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=0x1201) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=0x1500) | ![](http://www.kreativekorp.com/lib/segments.php?s=14&d=0x0C09) |

### 16-Segment

Specify segment designators:

| `segments.php?s=16&d=d1eg1mn` | `segments.php?s=16&d=a2g1g2jm` | `segments.php?s=16&d=a1d2jm` | `segments.php?s=16&d=d2g1g2jm` | `segments.php?s=16&d=d1g1l` |
| --------------------------- | ----------------------- | -------------------------- | -------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=d1eg1mn) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=a2g1g2jm) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=a1d2jm) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=d2g1g2jm) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=d1g1l) |

Or hex values:

| `segments.php?s=16&d=0xC150` | `segments.php?s=16&d=0x4B02` | `segments.php?s=16&d=0x4821` | `segments.php?s=16&d=0x4B20` | `segments.php?s=16&d=0x2110` |
| --------------------------- | ----------------------- | -------------------------- | -------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=0xC150) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=0x4B02) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=0x4821) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=0x4B20) | ![](http://www.kreativekorp.com/lib/segments.php?s=16&d=0x2110) |

### 8-Segment

Add `h`, `j`, `k`, `l`, `m`, or `n` to the `s` parameter:

| `segments.php?s=8h&d=cdegh` | `segments.php?s=8j&d=cegj` | `segments.php?s=8k&d=bck` | `segments.php?s=8l&d=abfgl` | `segments.php?s=8m&d=abdfgm` | `segments.php?s=8n&d=abefgn` |
| --------------------------- | -------------------------- | ------------------------- | --------------------------- | ---------------------------- | ---------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=8h&d=cdegh) | ![](http://www.kreativekorp.com/lib/segments.php?s=8j&d=cegj) | ![](http://www.kreativekorp.com/lib/segments.php?s=8k&d=bck) | ![](http://www.kreativekorp.com/lib/segments.php?s=8l&d=abfgl) | ![](http://www.kreativekorp.com/lib/segments.php?s=8m&d=abdfgm) | ![](http://www.kreativekorp.com/lib/segments.php?s=8n&d=abefgn) |

### 9-Segment

Add `h`, `j`, or `k` *and* `l`, `m`, or `n` to the `s` parameter:

| `segments.php?s=9hl&d=adhl` | `segments.php?s=9hn&d=bcefh` | `segments.php?s=9jm&d=ajm` | `segments.php?s=9kl&d=acdgk` | `segments.php?s=9kn&d=abefgn` |
| --------------------------- | ---------------------------- | -------------------------- | --------------------------- | ----------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=9hl&d=adhl) | ![](http://www.kreativekorp.com/lib/segments.php?s=9hn&d=bcefh) | ![](http://www.kreativekorp.com/lib/segments.php?s=9jm&d=ajm) | ![](http://www.kreativekorp.com/lib/segments.php?s=9kl&d=acdgk) | ![](http://www.kreativekorp.com/lib/segments.php?s=9kn&d=abefgn) |

### 11-Segment

Adds the `h`, `k`, `l`, and `n` segments:

| `segments.php?s=11&d=bck` | `segments.php?s=11&d=efkn` | `segments.php?s=11&d=bcefh` | `segments.php?s=11&d=abefgn` | `segments.php?s=11&d=befl` |
| ------------------------- | -------------------------- | --------------------------- | ---------------------------- | -------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=11&d=bck) | ![](http://www.kreativekorp.com/lib/segments.php?s=11&d=efkn) | ![](http://www.kreativekorp.com/lib/segments.php?s=11&d=bcefh) | ![](http://www.kreativekorp.com/lib/segments.php?s=11&d=abefgn) | ![](http://www.kreativekorp.com/lib/segments.php?s=11&d=befl) |

### Kaktovik

Specify segment designators:

| `segments.php?s=k&d=c` | `segments.php?s=k&d=a` | `segments.php?s=k&d=abcf` | `segments.php?s=k&d=abcdfg` | `segments.php?s=k&d=abcdefgh` |
| ---------------------- | ---------------------- | ------------------------- | --------------------------- | ----------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=c) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=a) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=abcf) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=abcdfg) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=abcdefgh) |

Or hex values:

| `segments.php?s=k&d=0x04` | `segments.php?s=k&d=0x01` | `segments.php?s=k&d=0x27` | `segments.php?s=k&d=0x6F` | `segments.php?s=k&d=0xFF` |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=0x04) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=0x01) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=0x27) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=0x6F) | ![](http://www.kreativekorp.com/lib/segments.php?s=k&d=0xFF) |

### Cistercian

Specify segment designators:

| `segments.php?s=c&d=u1u2u3u4z1z2z3` | `segments.php?s=c&d=v1v2v3v4z1z2z3` | `segments.php?s=c&d=w1w2w3w4z1z2z3` | `segments.php?s=c&d=x1x2x3x4z1z2z3` | `segments.php?s=c&d=y1y2y3y4z1z2z3` | `segments.php?s=c&d=u1v2x3y4z2` |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- | ------------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=u1u2u3u4z1z2z3) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=v1v2v3v4z1z2z3) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=w1w2w3w4z1z2z3) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=x1x2x3x4z1z2z3) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=y1y2y3y4z1z2z3) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=u1v2x3y4z2) |

Or hex values:

| `segments.php?s=c&d=0x708421` | `segments.php?s=c&d=0x710842` | `segments.php?s=c&d=0x721084` | `segments.php?s=c&d=0x742108` | `segments.php?s=c&d=0x784210` | `segments.php?s=c&d=0x282041` |
| ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- |
| ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=0x708421) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=0x710842) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=0x721084) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=0x742108) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=0x784210) | ![](http://www.kreativekorp.com/lib/segments.php?s=c&d=0x282041) |
