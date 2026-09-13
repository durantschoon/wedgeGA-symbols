# Writing workshop: how ON-THE-SIGN was made

A companion to [ON-THE-SIGN.md](ON-THE-SIGN.md), for the author's own writing. It covers the habits that make prose read as machine-written, the moves borrowed from Grassmann and Hestenes, where the essay itself falls short, and some exercises.

## 1. Five habits to hunt

Each "before" comes from the first draft of [THE-CASE.md](THE-CASE.md) (commit 865d575). None of these habits is wrong once. They become a tell through repetition, and because each one settles the argument's tension for the reader too neatly.

**The "not X; it is Y" antithesis.**
Before: "This is not an aesthetic quibble about glyph shapes; it is a semantic collision between GA's symbols and the meaning those same symbols carry everywhere adjacent."
The essay instead opens with the collision itself: two points, their line, and how a lattice theorist and a GA text would each write it. The reader reaches "semantic collision" without being told. *Rule: show the case and let the reader name it.*

**Reflexive triplets.**
Before: "no flag-day, no ambiguity, no schism."
Three nouns sound complete, which is why they arrive without being chosen. The essay does have three criteria, but each one is used afterward to test the bare swap, the status quo and the glyphs. *Rule: a list earns its place when every item does later work.*

**The announced insight.**
Before: "**They are also precisely why this package exists in the form it does.** … That is the package's key insight."
If a sentence has to say it is important, the paragraph hasn't shown that it is. The essay describes the glyphs plainly in the last paragraph of Part I, after the argument has made the reason obvious.

**The fragment closer.**
Before: "Actions over attributed quotations."
This is a slogan standing in for a conclusion. Hestenes does use short verdicts, but always as full sentences that come after the evidence and make a claim the paragraph has just supported: "Custom is not enough."

**The tidy coda.**
Before: "Both are correct." · "This is a joke, but only about the timescale."
Ending on a neat verdict tells the reader what to feel. Part I ends instead on a wish, and Part II on a request.

To find these in a draft:

```sh
grep -nE "not (just|merely|only)|; it is|key insight|precisely|\*\*[^*]+\*\*" docs/*.md
```

## 2. Grassmann's moves

| Move | His version | In the essay |
|---|---|---|
| Begin with the small case that set you going | 1844: "Den ersten Anstoss gab mir die Betrachtung des Negativen in der Geometrie" (the first push came from negatives in geometry) | the two points a and b |
| Concept, then law, then sign | 1862: signs follow laws ("widersinnig … verschieden zu bezeichnen", absurd to denote them differently) | Part I ¶3: what the product does, then the dimension law, then the pairing |
| One long periodic sentence per paragraph, among plain ones | "Wenn ich …, so …", with the main verb held to the end | "If agreement were the whole of the matter, we might write + for multiplication …" |
| Answer an objection by generalizing it to absurdity | 1862: on that view "all of arithmetic would be mere shorthand" | + for multiplication and × for addition |
| Confident about the truth, humble about his form | 1862: "die Form … eine unvollkommene ist und sein muss" (the form is imperfect and must be) | "The correspondence … is not mine … The form … is mine, and it is imperfect." |
| "I" for discovery, "we" for demonstration | the forewords against the body of the work | "We ask, then, what the outer product does." |
| Hold the one image until the end | the dust of oblivion, the fruit | the small inner mark no one needs any more |

## 3. Hestenes's moves

| Move | His version | In the essay |
|---|---|---|
| Field, then costs, then criteria, then demonstration, then history, then challenge | the shape of the Oersted lecture | the order of Part II |
| Concede before diagnosing | "There is nothing wrong with using coordinates when they are appropriate." | "There is nothing wrong with the wedge in the calculus of differential forms …" |
| Pay for a claim with an equation | ∂F = J; Cramer's rule without a basis | the two dimension laws side by side |
| An extended metaphor with a taxonomy | MV/C, MV/Q, "coordinitis" | a new strain; the "remnant" quotation |
| Honor an elder by correcting him | Grassmann dismissing Hamilton "without due credit" | Hestenes–Ziegler's "lattice join" and `J = A∧B` |
| Short verdicts after the evidence, used sparingly | "Custom is not enough." | "Here is a proliferation, and it was forced." |

## 4. Traps avoided

- **No mock-archaic diction for Grassmann.** He wrote plainly. His long sentences come from German syntax, not ornament.
- **No exclamation marks of our own.** The essay's only one is Hestenes's, inside a quotation.
- **No opinions on ∧/∨ put in Grassmann's mouth.** He never used either glyph, gave both products the same bracket in 1862, and said names matter little. The essay uses only his *principle*: signs follow laws.
- **No claiming Hestenes as an ally on the glyphs.** He wrote ∧ for the join. The essay honors him by applying his method to his own practice.

## 5. Where the essay is weakest

Worth arguing with, and a good place to practise:

- "I do not claim that the algebra is wrong. … My claim concerns the sign." This is close to the antithesis habit. It does set the scope, but try cutting it and see whether Part I loses anything.
- The criteria paragraph's "meets the first criterion and fails the second / meets the second and fails the first" is true, but its symmetry arrives a little too easily.
- "The founders of a reform rarely finish it." This is a guess dressed as a law.
- Presenting "a new strain" of mathematical virus is a playful extension of Hestenes's taxonomy. A Hestenes reader might find it presumptuous. If so, keep the "remnant" quotation and drop the strain.

## 6. Exercises

1. **Grassmann drill.** Rewrite the THE-CASE §4 paragraph that begins "Points 1–3 are correct." Use no bold, and let the transitional design follow from the concession without being announced.
2. **Hestenes drill.** Pick any claim in THE-CASE and find the equation or theorem that pays for it. If you can't find one, the claim may be softer than it sounds.
3. **Your own voice.** The README's voice is yours, and it has things neither author has: digression, jokes at your own expense, the mosquito and the mountain climber. Write a 150-word opening for a talk that starts from the two-points case, in *that* voice. The goal is to see which of your habits are strengths.
4. **Tell count.** Run the grep above on anything you write this month. Count the hits, then cut half.

Paste a paragraph into a session and ask for "a Grassmann read" or "a Hestenes read", and it will be marked up for moves used and habits to cut.
