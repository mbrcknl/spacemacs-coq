# Simple Spacemacs layer for Coq

Includes [Proof General][] and [Company-Coq][]. Retains original Proof General
key bindings.

[Proof General]: https://github.com/ProofGeneral/PG
[Company-Coq]: https://github.com/cpitclaudel/company-coq

## Installation

- Install Coq dependencies

        $ opam switch 4.03.0
        $ eval $(opam config env)
        $ opam install batteries core camlp5

- Install Coq with company-coq patches

        $ mkdir -p ~/local/packages
        $ cd ~/local/packages
        $ git clone git@github.com:mbrcknl/coq.git
        $ cd coq
        $ git checkout v8.5-company-coq
        $ ./configure -local
        $ make

- Add `~/local/packages/coq/bin` to your `PATH`.

- Install Proof General

        $ cd ~/.emacs.d/private/local
        $ git clone git@github.com:ProofGeneral/PG.git ProofGeneral
        $ cd ProofGeneral
        $ make

- Install Spacemacs layer

        $ cd ~/.emacs.d/private
        $ git clone git@github.com:mbrcknl/spacemacs-coq

- Add `coq` layer to `~/.spacemacs`

