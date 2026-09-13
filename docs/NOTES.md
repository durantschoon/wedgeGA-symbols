# NOTES — running findings (append-only, dated)

Per the `FOUNDATION.md` charter: findings and open questions, newest at the
bottom. Never rewrite old entries; correct them with a later dated entry.

## 2026-09-13 — session 2 picks up the charter

**State on arrival.** `main` carries `docs/THE-CASE.md`, `docs/GAFRO-CONNECTION.md`
and the README link (865d575); `foundation` has the charter and has merged main.
Menu item 1 (the argument) is drafted.

**Citations re-verified against gafro-lean** (read-only). Every Lean quotation in
THE-CASE §5 and GAFRO-CONNECTION matches the source verbatim:
`wedge_grade_additive` (`GafroLean/Laws.lean:110`), `product_mask_law`
(`Laws.lean:56`), `wedge_nilpotent_basisVector` (`Products.lean:522`),
`wedge_self_eq_zero_of_grade_pos` (`Products.lean:529`), `mono_mul`
(`GafroLeanBridge/StructureConstants.lean:357`). KP-003 file exists.

**Package defects found (menu item 2, CTAN readiness):**

1. *Fixed.* `\wedgeGA` / `\antiwedgeGA` were fragile: used in a `\section`
   title they crash compilation (`Undefined control sequence
   \tikz@deactivatthings`) because the TOC write expands `\tikz`. Now
   `\DeclareRobustCommand`. A GA paper with a join in a heading would have
   hit this immediately.
2. *Fixed, separate commit — author may revert.* Atom class was `\mathrel`;
   `\wedge`/`\vee` are `\mathbin`. Measured at 10pt: the glyph alone is
   6.70pt vs `\wedge` 6.67pt (a match), but `a\wedgeGA b` was 21.83pt vs
   `a\wedge b` 20.69pt — the whole 1.1pt excess was relation spacing. As
   `\mathbin` it is 20.72pt. Since the README pitches the symbols as drop-in
   replacements for `\wedge`/`\vee`, `\mathbin` is the correct class (it also
   gets binary-operator line-break penalties). If the extra air was a
   deliberate taste call, revert that one commit.
3. *Open.* The root `Makefile` fails from the repo root (`No rule to make
   target wedgeGA.svg`); it only works as `make -C examples -f ../Makefile`.
   (`examples/wedgeGA.sty` is a git-tracked symlink to `../wedgeGA.sty`, so
   there is no sync hazard.) Also needs `pdf2svg`, which is not installed here.
4. *Open.* No `LICENSE` file. CTAN requires one; LPPL 1.3c is the LaTeX norm.
   The author's choice — not assumed.
5. *Open.* Documentation is `.sty` comments only; CTAN expects a README plus
   a doc PDF (or a `.dtx`).

6. *Open — taste.* After the `\mathbin` fix, text/display sizes match
   `\wedge` within 0.03pt and unary contexts (`-\wedgeGA b`) demote
   correctly. But in subscripts `x_{a\wedgeGA b}` is 20.77pt vs 19.46pt for
   `x_{a\wedge b}`: script style has no operator spacing, so the 1.3pt is
   the glyph itself. The `\mathchoice` scales (0.53 / 0.45 / 0.37) shrink
   script to ~85% of text size; Computer Modern shrinks `\wedge` to ~70%.
   Scales of ~0.37 / ~0.27 would match. Left alone: the larger script glyph
   may be deliberate, since the embedded legacy ∧ must stay legible small.

**Open questions for the author:** license choice; whether `\mathbin` spacing
is right for the author's eye; script-size scale (item 6); which menu
direction next.

**Research in flight (session 2):** a primary-source hunt for the Rota
"backwards" quote, a survey of others who raised the inversion, and the
dual-PGA counterpoint (in Gunn's plane-based PGA, `∧` of two planes is
their intersection line — does that undercut THE-CASE §1?). Results to be
appended here.
