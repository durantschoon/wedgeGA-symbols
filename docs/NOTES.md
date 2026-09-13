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

## 2026-09-13 — research results: Rota, prior critics, plane-based PGA

Source texts were read by a research agent; the five quotes marked ✓ were
re-checked by grep against the downloaded text.

**The Rota "backwards" quote: unsupported.** No primary source uses the
word or states an opinion on the glyphs. Most likely origin: an AI summary
attributing to Rota the opinion of a blogger, Alex Kritchevsky ("Exterior
Algebra #8", 2020): "Cartan and the vector analysis folks definitely got the
symbol ∧ for the exterior product wrong. Projective geometers and Rota got it
right: it should be ∨". What Rota's school *did* write, as quoted by Hestenes
in "Mathematical Viruses" (1992) from Barnabei–Brini–Rota 1985 ✓: "It would,
however, be capricious to limit such a calculus to a single operation, just
as capricious as limiting the algebra of sets to the single operation of
union." The same passage's "a step backwards in clarity" is about duality,
not glyphs, and may have seeded the AI wording. BBR 1985, DRS 1974 and
GRS 1987 typography remain unread (paywalled).

Two other unverified claims in the README's AI-quoted block: that Rota's
circle called it "geometric algebra" (Crapo says "Grassmann-Cayley algebra
and Peano spaces"), and that Rota wrote products with "square brackets" (in
that school `[abc]` is the bracket, a determinant).

**Others who write ∨ for the exterior product, or say why:**
- Sturmfels, *Algorithms in Invariant Theory*, 2nd ed. (2008), §3.3 p. 94 ✓:
  "For geometric reasons we write the exterior product in Λ(V) as '∨'
  instead of the usual '∧', and refer to it as the join operation."
  The cleanest citable rationale.
- Grunberg, supplement to Dorst–Fontijne–Mann *GA4CS* (2008) ✓, a concession
  from inside mainstream GA: "Because of our preemptive use of '∧' for the
  outer product, we cannot simply appropriate lattice theory's notation".
- Gunn, arXiv:1411.6502 §3.3 ✓: writes the point-algebra wedge "as ∨ (join)".
- Brini–Regonati arXiv:1010.2964; Vourdas arXiv:1810.04430 ("Most of the
  literature uses the opposite notation"); Bidleman et al. arXiv:2504.00889.
- Hestenes & Ziegler (1991) use ∧ for join and call its support the
  "lattice join", without remarking on the clash.
- Symbol history: ∨ for disjunction in Russell's manuscripts 1902–06; ∧ for
  conjunction from Heyting 1930 (Jeff Miller, *Earliest Uses of Symbols*).
  Both predate the exterior wedge. Bourbaki *Algèbre* ch. III (1948) is an
  unexamined candidate earlier than Chevalley 1954.

**Plane-based PGA: a real limit on THE-CASE's claim.** When 1-vectors
represent planes, the exterior product still spans in the algebra, but the
annihilator map turns span into geometric intersection. So `∧` *is* the
geometric meet there, and PGA's glyphs already agree with lattice and set
symbols. Dorst 2024 ✓: "a ∧ b denotes the linear span of the vectors
representing two planes". Dorst & De Keninck's *Guided Tour* makes the
mnemonic explicit (∧ like ∩, ∨ like ∪). THE-CASE §1's "in every structural
sense, a join" holds for the lattice of subspaces of the generating space,
not for the geometry. A ∨-shaped `\wedgeGA` in plane-based PGA would make
the meet of planes look like a join. **The package must declare whether its
glyph encodes algebraic role (Rota, Sturmfels) or geometric role (Gunn).**

**Lengyel correction (README "Random").** His site reports sponsoring the
existing code points ⟑ U+27D1 and ⟇ U+27C7, for the geometric product and
antiproduct. It is not a wedge/antiwedge proposal.

## 2026-09-13 — author decisions; essay written

**Decisions (author).**
- The glyphs name the *algebraic* role of the operations (Rota, Sturmfels),
  and plane-based PGA is addressed openly as the cost.
- The README's Rota block keeps the author's text, with an additive note
  giving the verified sources.

**Written.**
- `docs/ON-THE-SIGN.md`: the essay in two manners, after Grassmann and after
  Hestenes, grounded in a style study of their actual prose.
- `docs/WRITING-WORKSHOP.md`: its companion, covering the habits cut, the
  moves used, the essay's weak spots, and exercises.
- THE-CASE, factual corrections only; its LLM-voice sentences are kept as
  workshop material:
  - §1 qualified ("join in the lattice of subspaces").
  - §2 adds Sturmfels, Brini–Regonati, Vourdas, Gunn, Grunberg's concession
    and Hestenes–Ziegler; replaces the Rota paragraph; drops "corrected it".
  - §3 adds Russell 1902 / Heyting 1930 and the Bourbaki 1948 lead.
  - §4 adds plane-based PGA as steelman point 4, with the package's answer.

**Quotes in the essay, checked against source text** (downloaded
archive.org scans and author PDFs):
- Grassmann 1844 Vorrede: the first push, and the arbitrary coordinates.
- Grassmann 1862 Vorrede: absurd to denote differently, necessary to
  distinguish, names matter little, 17 years and the dust of oblivion.
- Grassmann 1862 No. 94: the complement definition.
- Hestenes: UL 1986 (laissez-faire; custom is not enough); MV 1992 (the
  definition, remnant, nothing wrong, capricious); Oersted (the dictum);
  H–Z 1991 (lattice join, J = A∧B); GV (without due credit).

The German translations were made by the research agent, from the verified
German text. One paraphrase is not verified word for word: G8's "arbitrarily
and against the nature of the thing". Its German line is OCR-damaged.

**Still open.**
- ~~License choice.~~ Resolved below.
- Script-size scale (item 6 above).
- The Makefile.
- BBR 1985 and Bourbaki 1948 typography, both unread.
- Hestenes & Sobczyk 1984 join/meet notation (∪/∩?), unverified.

## 2026-09-13 — licensing; page fix

**Licenses (author decision).**
- The package (`wedgeGA.sty`, `examples/`) is LPPL 1.3c or later, status
  `maintained`, maintainer Durant Schoon. The root `LICENSE` is the official
  text from latex-project.org (2008-05-04). The copy bundled with
  KOMA-Script carries an older 2006 date.
- The docs are CC BY 4.0. `docs/LICENSE` holds the official legal code.

**Provenance flag for the author.** `docs/ExteriorAlgebraArticle.{md,tex}`
say they are "Modified from the original at galileo-unbound.blog" (Nolte,
2019), and the `*form*.png` figures appear to come from, or derive from,
that post. `docs/LICENSE` excludes them from CC BY. Hosting a modified copy
of a copyrighted blog post in a public repo may need Nolte's permission, or
the files could be replaced with a link. The author's call.

**Web page fix.** The legacy mark inside each glyph did not show red. It
was colored by an inline `style` attribute inside an SVG `<symbol>`, and
the artifact host's CSP strips inline styles. The glyphs are now drawn
directly, with class-based CSS.

## 2026-09-13 — correction: the "CSP stripped the red" diagnosis was wrong

The entry above, and the commit message of e6bc59f, say the host's CSP
stripped an inline style so the legacy mark never showed red. That was a
guess. The author has since confirmed the red *was* rendering: the author
has a perceptual condition that delays seeing it. The class-based glyph
rewrite is harmless and stays. The real change is adb5087: orange replaces
red, since blue/orange is the colour-vision-safe pair, and the caption now
names the mark's position ("inner mark") so the cue does not rest on colour
alone.
