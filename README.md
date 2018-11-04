NimfastText is a [Nim](https://nim-lang.org/) wrapper for the [fastText](https://github.com/facebookresearch/fastText) library.

NimfastText is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The fastText source code is downloaded using Git so having ```git``` in the path is required.

__Installation__

NimfastText can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install nimgen

> nimble install https://github.com/genotrance/nimfastText
```

This will download, wrap and install nimfastText in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

NimfastText is not supported on gcc < 5.x. PRs enabling support are welcome. See [here](https://forum.nim-lang.org/t/4354#27119) for details.

__Usage__

Module documentation can be found [here](http://nimgen.genotrance.com/nimfastText).

```nim
import nimfastText/fasttext

var ft: FastText
```

Refer to the ```tests``` directory for examples on how the library can be used.

__Credits__

NimfastText wraps the fastText source code and all licensing terms of [fastText](https://github.com/facebookresearch/fastText/blob/master/LICENSE) apply to the usage of this package.

Credits go out to [c2nim](https://github.com/nim-lang/c2nim/) as well without which this package would be greatly limited in its abilities.

__Feedback__

NimfastText is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/nimfastText) with an MIT license so issues, forks and PRs are most appreciated.
