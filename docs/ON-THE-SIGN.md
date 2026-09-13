# On the Sign of the Outer Product

*An essay in two manners: the first after Hermann Grassmann, the second after David Hestenes. Both men used the term "outer product," so it serves as the title. Translations from Grassmann's German are new for this essay. Citations are gathered at the end, and fuller notes are in [THE-CASE.md](THE-CASE.md) and [NOTES.md](NOTES.md).*

---

## I. After Grassmann

Grassmann opened the foreword to his *Ausdehnungslehre* of 1844 with the small case that first set him going: he had grown used to regarding the displacements AB and BA as opposite magnitudes. My own starting point was smaller still. I came to his algebra from computer graphics, by way of Eric Lengyel's talks, and the first thing that stopped me was two points. The outer product of two points a and b is the line through them. Anyone who has met a lattice, or a first course in logic, would write that line as a ∨ b, since it is the least thing that contains both. The algebra I was learning wrote it a ∧ b, and it gave the ∨ to the point where two lines cross, which is the greatest thing the two lines have in common.

I do not claim that the algebra is wrong. Its theorems stand whatever we draw between the letters, and nothing I say here touches a single one of them. My claim concerns the sign. It rests on a principle Grassmann himself set down in the foreword of 1862, when he explained why he wrote some operations alike and one differently. It would be absurd, he wrote, "to denote differently operations that obey the same laws in every respect," and where an operation's laws differ from the others', "it was necessary to distinguish it by its notation." On this view a sign answers to what the operation does, and it is fair to ask whether ours does.

We ask, then, what the outer product does. Given two subspaces that share nothing but the origin, it yields the subspace they span, and the grades add, so that a vector with a vector gives an element of plane, and a point with a line gives a plane. Given two subspaces that share a direction, it yields zero. Spanning is the join in the lattice of subspaces, and the join obeys a law of dimension which, written in lattice notation, reads

  dim(U ∨ W) + dim(U ∧ W) = dim U + dim W.

When U and W meet only at the origin the second term vanishes and dimensions simply add, which is the rule the outer product follows for its grades. The regressive product Grassmann defined in 1862 as the quantity "whose complement is the progressive product of the complements," and so it finds what two subspaces hold in common. That is De Morgan's rule, the same rule that in logic carries ∨ over to ∧ and back again. The two products of the algebra and the two operations of the lattice therefore correspond member for member, and our present signs pair them crosswise.

Grassmann is not the author of the crossing. He wrote the outer product by juxtaposition, marked the regressive product with a point set between the factors, and in 1862 enclosed both in one square bracket and let the grades tell them apart. The wedge came a century later. The best account of its origin I have found places it with Claude Chevalley between 1951 and 1954, carried into general use by Bourbaki, though that account rests on one careful blogger's survey of the books and leaves an earlier Bourbaki volume unexamined. I have no quarrel with Chevalley. He was a great algebraist, and in the calculus of differential forms, where no regressive product appears, the wedge never meets its partner and so never contradicts it.

It will be objected that a sign is only a convention, and that any convention serves once it is agreed. If agreement were the whole of the matter, we might write + for multiplication and × for addition and trust every reader to remember, and nobody proposes this, because the agreement between a sign and the meaning it carries across the rest of mathematics is part of what makes the sign readable at all. Grassmann was careful to say that "names matter little here," and then to name the question that does matter: whether a boundary drawn between two domains would split, arbitrarily and against the nature of the thing, what belongs together. The span of subspaces and the join of a lattice belong together. Our signs draw the boundary straight through them.

The correspondence I have described is not mine, and I do not think it optional. The form in which I propose to honor it, a pair of glyphs drawn in TikZ, is mine, and it is imperfect. The new wedge is a ∨ whose base folds up into a small ∧, and the new antiwedge is a ∧ with a small ∨ at its peak. A reader who knows only the old signs finds them there, and a reader who knows the lattice sees the larger shape. In the foreword to his second book, seventeen years after the first had gone almost unread, Grassmann wrote that even if this one should lie idle as long or longer, a time would come when it "will be drawn out of the dust of oblivion, and the ideas set down in it will bear fruit." They have borne it, and they are taught now under signs he never used. I would like the small inner mark to be needed for a long while, and then, some day, for no one to need it.

---

## II. After Hestenes

Geometric algebra has won more of its arguments than once seemed likely. Physicists meet the geometric product in some graduate courses, roboticists write kinematics with it, and graphics programmers ship it. One small argument has not been had at all, because the field inherited its answer. The outer product, which joins subspaces, is written with ∧, the sign that everywhere else in mathematics means meet.

Let there be no mistake about the scope of the complaint. There is nothing wrong with the wedge in the calculus of differential forms, where it arose, and where no ∨ stands beside it to be contradicted. The trouble begins only where the regressive product returns, and geometric algebra is the place where it returned.

The costs are specific.

(a) *Two communities read the same signs in opposite senses.* When Bernd Sturmfels presents the invariant theory developed by Rota's school, he must stop to explain: "For geometric reasons we write the exterior product in Λ(V) as '∨' instead of the usual '∧', and refer to it as the join operation." From the other side, the supplement to Dorst, Fontijne and Mann's textbook concedes: "Because of our preemptive use of '∧' for the outer product, we cannot simply appropriate lattice theory's notation." That book therefore writes join and meet as ∪ and ∩, a third notation for the same pair. Hestenes warned in 1986 that "we cannot afford the laissez-faire proliferation of mathematical definitions and notations." Here is a proliferation, and it was forced.

(b) *Students must learn to read against the grain.* Logic has written ∧ for conjunction since Heyting in 1930, and ∨ for disjunction since Russell's manuscripts of 1902. A student who comes to geometric algebra after a course in logic or discrete mathematics must learn that the sign for "and" now means the operation that grows.

(c) *Checking formulas will not expose the error.* This is the insidious part. Lattice theory has a principle of duality: exchange ∧ and ∨ throughout a theorem and you obtain another theorem. The relations between the two signs therefore cannot tell you which one is the join. Only order can, meaning which operation goes up, and in geometric algebra that is grade. A reader who checks identities will never catch the crossing. Only a reader who asks which product raises grade will. A convention that no test can detect survives indefinitely. The gafro implementations of conformal geometric algebra learned this about a different convention, a sign in the axis-to-bivector map, which passed every test suite until two implementations' outputs met ([GAFRO-CONNECTION.md](GAFRO-CONNECTION.md)).

What should a sign satisfy? Hestenes put the general demand plainly: "we need rational criteria to distinguish good design from poor design. Custom is not enough." For the present question I propose three criteria. A sign should agree with the meaning it carries in neighboring mathematics. It should remain readable to those trained in the old usage. And whichever convention a document uses, it should declare it. The bare swap, writing ∨ for the outer product tomorrow, meets the first criterion and fails the second. The status quo meets the second and fails the first. The transitional glyphs are designed to meet both, and the package exists to make the third cheap.

A claim of this kind should be paid for with an equation. The join in a lattice of subspaces obeys

  dim(U ∨ W) = dim U + dim W  whenever  U ∧ W = 0.

For blades, the outer product obeys

  grade(A ∧ B) = grade A + grade B  whenever  A ∧ B ≠ 0.

Set the two lines side by side and the same law appears twice, with the sign turned over. For the basis blades of CGA(4,1) the second line is a theorem: in the Lean 4 formalization gafro-lean it is `wedge_grade_additive`, checked by the kernel over every ordered pair of basis blades with disjoint support.

Hestenes gave us a name for this kind of trouble. A mathematical virus, in his definition, is "a preconception about the structure, function or method of mathematics which impairs one's ability to do mathematics." He added that a virus "is most likely to be a remnant of an earlier evolutionary stage in which it had a useful functional role to play; a role made defunct by subsequent evolution." In his taxonomy I would place a small new strain, the preconception that the sign attached to the outer product is merely a convention and therefore beyond criticism. It fits his description of a remnant exactly. In differential forms the wedge played a useful role and harmed no one. The revival of Grassmann's regressive product, which Hestenes helped bring about, is the subsequent evolution that made its role defunct.

Ironically, Hestenes himself carries the strain. In the 1991 paper with Renatus Ziegler on projective geometry, the support of the outer product is described as "the usual 'lattice join' of the supports of A and B," and the next line defines it as J = A ∧ B. In *Mathematical Viruses* he quotes Barnabei, Brini and Rota with approval: it would be "capricious to limit such a calculus to a single operation, just as capricious as limiting the algebra of sets to the single operation of union," and he writes the union-like operation with the sign for meet. I say this in the spirit in which he once noted Grassmann's own dismissal of Hamilton "without due credit." The founders of a reform rarely finish it. I suspect he kept the wedge for the reason reformers keep most of what they inherit: a reform spends its credibility on the changes that matter most, and his changes were far larger than this one.

One case deserves its own paragraph, because it is the strongest objection. In plane-based projective geometric algebra, the vectors represent planes, and the outer product of two planes is the line where they meet. There ∧ is a geometric meet, and Dorst and De Keninck teach it with the mnemonic ∧ for ∩ and ∨ for ∪. I do not propose to take that mnemonic away. The outer product still spans in the algebra, and it is the geometric reading that turns span into intersection. The wedgeGA glyphs name the algebraic operation, so a reader of plane-based PGA who wants the geometric reading still finds the old ∧ inside the new sign.

Hestenes coined the dictum "Mathematics is too important to be left to the mathematicians!" Signs are the part of mathematics that most people meet first, which makes them too important to be left to custom. Three requests follow.

- *To authors:* whatever sign you use for the outer product, declare it in one sentence, and say what it means.
- *To designers of new systems,* such as Typst packages, font tables and Unicode proposals: the convention there is still fluid, and nothing obliges you to inherit the crossing.
- *To the geometric algebra community:* try the transitional glyphs in one paper and see whether a reader from lattice theory, logic or Grassmann–Cayley algebra can follow it without a footnote.

---

## Citations

- Grassmann, *Die lineale Ausdehnungslehre* (1844), Vorrede, as reprinted in the 2nd ed. (1878), pp. III–V. [archive.org](https://archive.org/details/dieausdehnungsl04grasgoog)
- Grassmann, *Die Ausdehnungslehre* (1862), Vorrede, pp. V–VIII, and No. 94. [archive.org](https://archive.org/details/dieausdehnugsle00grasgoog)
- Hestenes, "A Unified Language for Mathematics and Physics" (1986), Introduction.
- Hestenes, "Mathematical Viruses" (1992), §§1–4, quoting Barnabei, Brini & Rota, *J. Algebra* 96 (1985).
- Hestenes & Ziegler, "Projective Geometry with Clifford Algebra," *Acta Appl. Math.* 23 (1991), §3.1.
- Hestenes, Oersted Medal Lecture (2002), *Am. J. Phys.* 71 (2003), §IV.
- Hestenes, "Grassmann's Vision" (1996), §I.
- Sturmfels, *Algorithms in Invariant Theory*, 2nd ed. (2008), §3.3.
- Grunberg, supplement to Dorst, Fontijne & Mann, *Geometric Algebra for Computer Science* (2008).
- Dorst & De Keninck, *A Guided Tour to the Plane-Based Geometric Algebra PGA* (2022), §3.1.
- Nolte, "Hermann Grassmann's Nimble Wedge Product," *Galileo Unbound* (2019).
- J. Miller, *Earliest Uses of Symbols of Set Theory and Logic*, MacTutor.
- gafro-lean, `GafroLean/Laws.lean`, `wedge_grade_additive`.
