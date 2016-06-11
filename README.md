# Simple Spacemacs layer for Coq

Includes [Proof General][] and [Company-Coq][]. Retains original Proof General
key bindings.

[Proof General]: https://github.com/ProofGeneral/PG
[Company-Coq]: https://github.com/cpitclaudel/company-coq

## Installation

- Install Proof General manually

        $ cd ~/.emacs.d/private/local
        $ git clone git@github.com:ProofGeneral/PG.git ProofGeneral
        $ cd ProofGeneral
        $ make

- Install Spacemacs layer

        $ cd ~/.emacs.d/private
        $ git clone git@github.com:mbrcknl/spacemacs-coq

- Add `coq` layer to `~/.spacemacs`

