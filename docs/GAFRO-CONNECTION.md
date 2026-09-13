# The gafro Connection

This notation proposal is not free-floating advocacy. It sits next to the gafro family of Geometric Algebra implementations (gafro-cpp, gafro-rust, gafro-julia, gafro-idris2, gafro-lean), and the family's formal work supplies both the evidence for the semantic claim and a cautionary tale about what undeclared conventions cost.

## The formal results

gafro-lean (`~/Repos/ds/gafro-lean`) is a Lean 4 formalization of CGA(4,1) whose laws are kernel-checked theorems, not test assertions:

- **The join-semantics of the wedge is a theorem.** `wedge_grade_additive` (grades add on disjoint blades, all 1024 ordered pairs), `product_mask_law` (the product's support is the symmetric difference — the union, when disjoint), `wedge_nilpotent_basisVector` and `wedge_self_eq_zero_of_grade_pos` (dependence annihilates). See `GafroLean/Laws.lean` and `GafroLean/Products.lean`, and the quotations in [THE-CASE.md](THE-CASE.md) §5.
- **The bridge to Mathlib.** `GafroLeanBridge/StructureConstants.lean` proves that Mathlib's abstract `CliffordAlgebra Q41` multiplies basis monomials by *exactly* the repository's 32×32 weight table:

  ```lean
  theorem mono_mul (a b : BladeIndex) :
      mono a * mono b = ((geoWeight a b : Int) : ℝ) • mono (productBlade a b)
  ```

  So the concrete implementation and the general mathematical object are the same algebra by proof, and associativity is inherited from Mathlib rather than re-enumerated. The semantic claims about the wedge are claims about *the* exterior structure of *the* Clifford algebra — not about one library's private definitions.

## The cautionary tale: KP-003

In 2026 the family discovered it was split on an arbitrary-but-undeclared convention: the map from a rotation axis `(ax, ay, az)` to a unit bivector. Two maps exist, agreeing on x and z and differing in sign on y (because `e31 = −e13`). gafro-rust's fixture generator and gafro-julia used the componentwise map (`ay·e13`, left-handed); gafro-idris2 and gafro-lean used the right-handed dual (`ay·e31`). Nobody had declared a choice; each implementation believed it was doing the obvious thing — a julia source comment even called its left-handed map "canonical CGA convention." The split hid inside passing test suites for months because only one vendored oracle value discriminated, and surfaced as a real cross-implementation bug in the geometric Jacobian (max discrepancy 0.778837 in one column). Resolving it took a family-wide decision (right-handed everywhere), coordinated fixes at six generator sites, fixture regeneration, and re-vendoring across four repositories. Full record: `gafro-lean/docs/stages/known-problems/KP-003-family-axis-convention-split.md`.

## The meta-point

KP-003 was a sign convention; the wedge/vee inversion is a symbol convention. The lesson is the same: **conventions should be declared, and where possible semantically motivated, because undeclared ones are indistinguishable from correct ones until the day two communities' outputs meet.** The GA literature's `∧`-for-join is exactly such a convention — arbitrary, undeclared at its origin (a glyph choice in the early 1950s), and now load-bearing across two communities (GA and the lattice/logic/Grassmann–Cayley world) that assign it opposite meanings. The wedgeGA transitional glyphs are the notational analogue of KP-003's fix: a single, named, self-documenting boundary that both conventions can read, instead of a silent divergence waiting for its discriminating test case.
