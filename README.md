# wedgeGA — Proposed Geometric Algebra Wedge and Antiwedge Symbols for LaTeX

This package defines two custom TikZ-based symbols:

- `\wedgeGA` — stylized “wedge” (<img src="docs/wedgeGA.svg" alt="\wedgeGA" style="height:1em; vertical-align:-0.15em;">) for outer product
- `\antiwedgeGA` — inverted “wedge” (<img src="docs/antiwedgeGA.svg" alt="\antiwedgeGA" style="height:1em; vertical-align:-0.15em;">) for inner/dual operations

It aims to provide visual distinction between the *exterior* and its *dual* operation in Geometric Algebra.

## Usage

```latex
\usepackage{wedgeGA}

$A \wedgeGA B \antiwedgeGA C$
```

For full examples, see the examples/ directory (which I also might populate with various works viewing the new symbols used in them just so I can see what they'd look like).
<br>
<br>

<p align="center">
 <img width="427" height="32" alt="old_wedges_vs_new_v2" src="https://github.com/user-attachments/assets/93bb715a-71e7-4a36-ab40-51f44b614ead" />
</p>
<br>

# An Explanation

| _tl;dr_ |
|--|
|For people who know the old symbols, to recognize the new, look for the tiny upward pointing $\wedge$ in the new wedge (see it at the bottom of this: <img src="docs/wedgeGA.svg" alt="\wedgeGA" style="height:1em; vertical-align:-0.15em;">?) and the downward pointing $\vee$ at the top of the new antiwedge (<img src="docs/antiwedgeGA.svg" alt="\antiwedgeGA" style="height:1em; vertical-align:-0.15em;">) and then just read as you normally would.|

More longwindedly, if you are only familiar with the old symbols ($\wedge$, $\vee$) and want to switch to a set of symbols which is more consistent with the rest of math and logic, instead of trying to fix the world by just swapping the two (as they should have been, but now exposing all prior documents as completely bass ackwards and causing irrecoverable choas in the Geometric Algebra world), you can use these new symbols; as you transition, look for the special helpers to see the old symbols in the new. The new wedge has the tiny upward pointing $\wedge$ in it and the new antiwedge has a downward pointing $\vee$ in it, harkening back to your misguided youth when you saw the Geometric Algebra world written downside up.

So `\wedgeGA` (<img src="docs/wedgeGA.svg" alt="\wedgeGA" style="height:1em; vertical-align:-0.15em;">) can replace `\wedge` ($\wedge$) or `\land` ($\land$) (if you're using that)

and `\antiwedgeGA` (<img src="docs/antiwedgeGA.svg" alt="\antiwedgeGA" style="height:1em; vertical-align:-0.15em;">) can replace `\vee` ($\vee$) or `\lor` ($\lor$).

... actually I'm partial to `\mountainGA` for `\antiwedgeGA` but I'd be pushing my luck with that one (see the latex code at the end of the `.sty` file for the full joke). And of course, the new wedge symbol looks like a W, coincidentally enough, and the new anti-wedge like the letter M -- hopefully not too much (I'm open to suggestions here from any of you fontastically gifted graphic designers).

So for everyone who has been using the old symbols, I regard you as **TRAITORS TO BEAUTY OF THE HIGHEST DEGREE** 😉, but you've also been forging the path to bring this math to the rest of the world, so actually I forgive - and quite frankly thank - you (everyone except the dastard who created them -- and it wasn't Hermann Grassmann! (some history below)).

# wedgeGA-symbols

I was only aware of the swapped usage from mathematicians who would point this out in basic resources for Geometric/Grassmann Algebras (ie. other people saw this problem first, definitely not me, I'm just suggesting a fix). Here's one reference (this is from Chrome browser's AI ... Google Gemini maybe? ... I extracted one sentence for highlighting converted the latex to markdown):

## A fragment of history

> Gian-Carlo Rota was a prominent modern proponent of Grassmann's original point of view on the exterior algebra, which he and his students referred to as "geometric algebra". He advocated for a return to Grassmann's original synthetic approach, where the symbols in the algebra directly denote geometric objects ("pieces of space") rather than just coordinates or numbers. Regarding the specific symbols used for the exterior product: Rota used the term "progressive product" (a translation of Grassmann's _fortschreitendes Produkt_) for the exterior product. This name highlights that the operation increases the grade (dimension) of the geometric objects involved (e.g., the product of a point and a line is a plane, a 1-vector and a 1-vector is a 2-vector, which represents an area element). While the common symbol for the exterior or wedge product today is $\land$ (which Rota was certainly familiar with), Rota sometimes used other notation in his work, such as a simple concatenation (juxtaposition) or square brackets in specific contexts. One source notes that "Geometric algebra" is a term occasionally used to describe Rota's circle of ideas, but it is often treated as a synonym for Clifford algebra by most authors.

<mark> Rota was also aware that the standard symbol for the join operation in projective geometry and lattice theory is $\lor$, but in exterior algebra the "wedge" symbol $\land$ is used, which he considered "backwards" in a certain sense. He noted that $\lor$ should correspond to the union operation in some generalized sense, given the geometric interpretation of the product spanning a subspace. </mark>

> In essence, Rota's "choice of symbols" was tied to his philosophical preference for a synthetic, geometrically intuitive notation that reflected the combinatorial and geometric nature of Grassmann's ideas, which he sought to revive and bring into mainstream mathematics. He emphasized the conceptual meaning behind the symbols, such as "progressive product," rather than just their conventional use.

Note to self: Review [An Algebra of Pieces of Space — Hermann Grassmann to Gian Carlo Rota](https://ar5iv.labs.arxiv.org/html/0904.3349) by Henry Crapo (see here the math symbols used with modular lattices are properly in line with the use of the symbols in the world of Logic). The piece, published in 2009, is a remembrance of Rota. Here is a [remebrance of Crapo](https://matroidunion.org/?p=2443) published in 2019. Everybody hug your loved ones, now.

## Why these new symbols

Coming from the computer graphics world and having learned traditional vector calculus in the American education system, I actually became quite upset (closest I get to autism) that this beautiful math had the exact opposite symbols that they should have. And apparently the wedge and the vee were not Grassman's but added by the person who collected his notes. These days I like to think of that person as a knowing saboteur who deprived all of us from the rightful math winning out! ... \[Edit\] Ok, it looks like it was [Claude Chevalley](https://en.wikipedia.org/wiki/Claude_Chevalley) if you believe this blog article that says: “the wedge symbol seems to have originated with Claude Chevalley sometime between 1951 and 1954.” ([source](https://galileo-unbound.blog/2019/12/02/hermann-grassmanns-nimble-wedge-product/?utm_source=chatgpt.com)) and then the symbols were picked up by Bourbaki propelling them toward a status of canon. Ok, Chevalley is probably somebody's favorite mathematician and also an early (in the recent sense) advocate of these mathematics (his only, yet still grievous, sin being that he merely guessed at symbology _exactly opposite_ what he should have(†)) so I should stop bashing him, now that the culprit has been exposed. Ok, even he is forgiven now. So maybe humanity can use these transitional symbols (<img src="docs/wedgeGA.svg" alt="\wedgeGA" style="height:1em; vertical-align:-0.15em;">, <img src="docs/antiwedgeGA.svg" alt="\antiwedgeGA" style="height:1em; vertical-align:-0.15em;">) for 100 years and then get the $\lor$ and $\land$ back with their correct orientation (kidding-not-kidding we could decrease the old inner-vee over 100 years by 10% each year, so that in 2125, they will have returned to their true orientation).

# Gratitude

Forever and always to

* Freya Holmér [Why can't you multiply vectors?](https://www.youtube.com/watch?v=htYh-Tq7ZBI) _Although I saw this chronologically last, you should probably watch this first if you've never seen GA before._
  * The first time I saw Freya Holmér's amazing [YouTube channel](https://www.youtube.com/@acegikmo) many years ago, I thought to myself "Oh if only I could suggest to her to look at Grassmann Algebras" and I had ADHD-level todo items for years scribbled away in the corner of notes saying "Suggest Grassmann Algebras to Freya Holmér" and I always assumed (certainly rightly) that she'd think I'm a total loon, so I did nothing. And now look! I was completely inconsequential with her making this phenomenal presentation 😻 (2 years ago now even ... I guess I stopped paying attention to the world) and yet, I have been reprieved.
* [Eric Lengyel](https://terathon.com/lengyel/) whose GDC (2012?, 2014?) presentations were the first place I heard of Grassmann Algebras
* David Hestenes: Who knows if Eric Lengyel or any of us would have heard of GA, if it were not for physicist David Hestenes.
  * [Space-Time Algebra](https://davidhestenes.net/geocalc/html/STA.html) in his tour de force 1966 book, Hestenes introduced the modern form of geometric algebra, showing the electric and magnetic fields can combine into a single spacetime bivector, before he presents all four of Maxwell's equations represented by a single elegant formula.
  * [Grassmann's Vision](https://davidhestenes.net/geocalc/pdf/GrassmannsVision.pdf)
  * [Primer on Geometric Algebra](https://davidhestenes.net/geocalc/pdf/PrimerGeometricAlgebra.pdf)
  * [Projective Geometry with Clifford Algebra*](https://davidhestenes.net/geocalc/pdf/PGwithCA.pdf) a 1991 paper which references Gian Carlo Rota's advocacy of Grassmann Algebras.
* David Geo Holmes (& STEMCstudio) [_17 Lesson Videos on GA_](https://www.youtube.com/playlist?list=PLxo3PbygE0PLdFFy_2b02JAaUsleFW8py)
  * Coming from a Computer Science background I really enjoyed these introductory videos using Typescript to build up the "geometric number" objects.

# Random

* I'm certain I saw a copy of David Hestenes' book on Bret Victor's ([WorryDream](https://worrydream.com/)) literal, physical bookshelf at an open house of Dynamicland in Oakland, CA, USA.
* Winner of the best software project name in any category ever: https://github.com/enkimute/ganja.js
  * Don't miss this quirky game they made: [Wedge](https://enkimute.github.io/ganja.js/examples/example_game_wedge.html)
* Cool posters here https://projectivegeometricalgebra.org/ ... wait, what's this at the very bottom of the page, a proposal for official unicode values of wedge and antiwedge ... oh the dot in the wedge, that's a nice touch, BUT STILL UPSIDE DOWN, NO? Also really the product is the sum of a dot and a wedge (there's no 2nd dot that goes inside the wedge, but I do see the appeal), but you're even using the terms "join" and "meet" in your poster on projective geometric algebra 😭. But if someone offered me these gorgeous posters, I would not say no ... on a quick read, ah, this is Lengyel's page.
* (†) Yeah, so that's you too Benjamin Franklin on choosing +/- believing that electrons flow from + to -, when they actually move from what we call - to + (in Franklin's case the reversal has a nice side benefit that all the analogies of gravity, potential and water flowing work with this labelling. I see no such saving grace for the current wedge and vee).
