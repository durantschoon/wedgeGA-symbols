# The Case for the Symbol Correction

*The README makes this argument with feeling. This document makes it with citations. Both are correct.*

## 1. The claim, stated precisely

The exterior product (Grassmann's *fortschreitendes Produkt*, "progressive product") **joins** subspaces: the product of blades representing independent subspaces represents the span of their union, and grades **add** — a 1-vector wedge a 1-vector is a 2-vector; a point joined with a line is a plane. It is, in every structural sense, a *join*.

Across the rest of mathematics, the symbols for join and meet are settled:

- **Lattice theory / order theory:** `∨` is join (least upper bound), `∧` is meet (greatest lower bound).
- **Logic:** `∨` is disjunction (union of truth conditions), `∧` is conjunction (intersection).
- **Set-theoretic cousins:** `∪`/`∨` go with union-like operations, `∩`/`∧` with intersection-like ones. The subspaces of a vector space form a (modular) lattice in which the span of a union is literally the lattice join and the intersection is literally the lattice meet.

Geometric Algebra's prevailing convention writes the joining, grade-*raising* operation as `∧` ("wedge", "outer product") and the meet-like, grade-*lowering* regressive product as `∨`. That is inverted relative to lattice theory, logic, and the lattice of subspaces the operations act on. This is not an aesthetic quibble about glyph shapes; it is a semantic collision between GA's symbols and the meaning those same symbols carry everywhere adjacent.

## 2. The rest of mathematics already writes it the other way

This is not a fringe reading. The Grassmann–Cayley algebra literature — the tradition of Gian-Carlo Rota and his school, which took Grassmann's progressive/regressive pair most seriously — uses the lattice-consistent symbols, explicitly and deliberately.

Neil White's survey chapter on the Grassmann–Cayley algebra (Handbook of Discrete and Computational Geometry, ch. 60) defines, verbatim:

> **"Join of points:** An exterior product of *k* points, *k* ≤ *d*, computed in the exterior algebra of *V*. We denote such a product by *a*₁ ∨ *a*₂ ∨ ··· ∨ *a*ₖ, or simply *a*₁*a*₂···*a*ₖ, **rather than *a*₁ ∧ *a*₂ ∧ ··· ∧ *a*ₖ, which is commonly used in exterior algebra**."
>
> **"Join:** The exterior product operation on Λ*V*."

and writes the meet as `A ∧ B` (a bracket-expansion formula that is nonzero only when the factors together span the space). The join *is* the exterior product, written `∨`; the meet is written `∧`. The convention is stated as a conscious departure from "what is commonly used in exterior algebra" — that is, the Rota school looked at the common convention and corrected it. ([White, ch. 60, verified](https://www.csun.edu/~ctoth/Handbook/chap60.pdf))

The same convention runs through the primary literature of that school:

- Barnabei, Brini, Rota, *On the exterior calculus of invariant theory*, J. Algebra **96** (1985) 120–160 — the foundational treatment of join and meet in Cayley–Grassmann algebras. (Cited here on the strength of the surrounding literature that follows its conventions; I have not been able to check the 1985 typography page-by-page.)
- Henry Crapo, *An algebra of pieces of space — Hermann Grassmann to Gian Carlo Rota* ([arXiv:0904.3349](https://arxiv.org/abs/0904.3349)) — the note the README flags for review. Verified: Crapo identifies "join (exterior product)" in so many words, writes meets with `∧` (e.g. the meet `ab ∧ cd`), and quotes Grassmann's own analysis (¶126) identifying the regressive product's "common system" with the lattice-theoretic meet and the "nearest covering system" with the lattice-theoretic join.

On Rota's own view: the README quotes a secondary AI-generated account claiming Rota considered the standard wedge convention "backwards." **That specific quotation is unverified** — no primary source has been found for the word, and it should not be cited as Rota's. What *is* verifiable, and stronger, is his school's practice: when Rota and his collaborators built the algebra whose whole point is the join/meet pair, they wrote the exterior product as `∨`. Actions over attributed quotations.

## 3. The history, carefully hedged

The `∧` symbol was **not** Grassmann's. Grassmann wrote progressive products by juxtaposition (*ab*) and regressive products with a period, and the *Ausdehnungslehre* predates the lattice-theoretic fixing of `∨`/`∧` in any case.

Where did the wedge come from? The best account located is a blog post by David D. Nolte ([galileo-unbound.blog, 2019](https://galileo-unbound.blog/2019/12/02/hermann-grassmanns-nimble-wedge-product/)), whose evidence runs: Cartan (1945) used brackets; Chevalley's 1946 book and his 1951 *Introduction to the Theory of Algebraic Functions of One Variable* used a small square; Chevalley's 1954 *The Algebraic Theory of Spinors* uses the wedge. The post concludes "the wedge symbol seems to have originated with Chevalley sometime between 1951 and 1954 and gained widespread use after that," with Bourbaki's editions helping canonise it — while candidly admitting the author had not obtained the original 1943 Bourbaki *Algèbre* to rule it out as an earlier source.

So the honest statement is: **the wedge appears to be a mid-20th-century typographical choice, plausibly Chevalley's circa 1951–54, canonised via Bourbaki — a hedged claim resting on one blogger's book-by-book survey, not on peer-reviewed history.** What needs no hedging: it was a notational choice made a century after Grassmann, by someone choosing a glyph, not deriving one. A choice like that can be revisited without disturbing a single theorem.

## 4. The steelman — why `∧` might deserve to stay

An honest advocate states the opposing case at full strength:

1. **Seventy years of canon.** Every differential geometry text, every physics paper with differential forms, every exterior-algebra course since the 1950s writes `dx ∧ dy`. Notation is a coordination equilibrium; the value of a symbol is mostly that everyone else uses it the same way. A "corrected" minority notation can be worse *in practice* than a wrong majority one.
2. **Local mnemonics work.** Within differential forms, `∧` never meets a `∨` at all — there is no regressive product in most treatments, so no inversion is ever visible. And `∧` has accreted its own associations: "wedge" as the shape of an oriented area element, alignment with "alternating." A reader trained in forms parses `∧` instantly and correctly.
3. **Switching costs are real and asymmetric.** A bare swap — writing `∨` for the exterior product tomorrow — would make every existing GA document silently ambiguous. Which convention is this paper using? That is a far worse failure mode than a semantically inverted but *consistent* symbol. Benjamin Franklin's conventional current flows the wrong way to this day because the cost of flipping it exceeds the cost of teaching the exception.

These points are correct. **They are also precisely why this package exists in the form it does.** The package does not propose the bare swap; it proposes *transitional glyphs* with the legacy symbol embedded: the new wedge carries a small legacy `∧` inside it, the new antiwedge a small legacy `∨`. A reader of either convention parses the symbol correctly — the old guard reads the embedded legacy glyph, the reformed reads the outer shape — and no document that uses them is ambiguous about which operation is meant. The transitional design concedes the steelman's every point about coordination and switching costs, and routes around them. That is the package's key insight, and it is why the proposal is a migration path rather than a manifesto.

## 5. The machine-checked hook

"The wedge is a join" is usually offered as intuition. In the author's gafro-lean project (`~/Repos/ds/gafro-lean`) — a Lean 4 formalization of CGA(4,1) bridged to Mathlib's `CliffordAlgebra` — it is a kernel-checked theorem. From `GafroLean/Laws.lean`:

```lean
/-- The outer product adds grades on the pairs it admits. -/
theorem wedge_grade_additive : ∀ am (ha : am < 32) bm (hb : bm < 32),
    disjointBlades (BladeIndex.mk am ha) (BladeIndex.mk bm hb) = true →
      (productBlade (BladeIndex.mk am ha) (BladeIndex.mk bm hb)).grade
        = (BladeIndex.mk am ha).grade + (BladeIndex.mk bm hb).grade
```

The wedge of blades with disjoint support has grade equal to the *sum* of the grades — checked by the Lean kernel on all 1024 ordered blade pairs. Grades add; the operation is progressive; the span grows. And from `GafroLean/Products.lean`, the companion facts: the product's support is the union of disjoint supports (`product_mask_law`: bitwise `xor`, which on disjoint masks *is* union), and dependence annihilates —

```lean
/-- **Wedge nilpotency** on basis vectors: `eᵢ ∧ eᵢ = 0`. -/
theorem wedge_nilpotent_basisVector : ∀ i (hi : i < 5),
    wedgeWeight (BasisIndex.mk i hi).blade (BasisIndex.mk i hi).blade = 0
```

together with its general form `wedge_self_eq_zero_of_grade_pos` (every positive-grade blade wedges itself to zero). Support union, grade addition, vanishing on dependence: that is the signature of a join operation on the subspace lattice, and here it is a theorem, not a mnemonic. The symbol dispute is about which glyph to attach to a *proved* semantics.

## 6. Adoption path

1. **Use the package in new papers.** `\usepackage{wedgeGA}`, then `\wedgeGA` and `\antiwedgeGA` — or `\renewcommand` the legacy macros (the `.sty` header shows a reversible setup). New documents become convention-explicit at zero reader cost.
2. **The transitional glyphs do the diplomacy.** Readers of either convention parse them; no flag-day, no ambiguity, no schism.
3. **Declare, regardless.** Even a paper that keeps `∧` should say in one line which operation it denotes and why. Undeclared conventions are how a century of confusion compounds (see [GAFRO-CONNECTION.md](GAFRO-CONNECTION.md) for a machine-checked case study of what an undeclared convention costs).
4. **The 100-year sunset.** Humanity uses the transitional symbols for a century, and then `∨` and `∧` return home with their correct orientations. This is a joke, but only about the timescale.
