| _tl;dr_ |
|--|
|For people who know the old symbols, to recognize the new, look for the tiny upward pointing $\wedge$ in the new wedge (see it at the bottom of this: <img src="docs/wedgeGA.svg" alt="\wedgeGA" style="height:1em; vertical-align:-0.15em;">?) and the downward pointing $\vee$ at the top of the new antiwedge (<img src="docs/antiwedgeGA.svg" alt="\antiwedgeGA" style="height:1em; vertical-align:-0.15em;">) and then just read as you normally would.|

More longwindedly, if you are used to the old symbols ($\wedge$, $\vee$) and want to switch to a set of symbols which is more consistent with the rest of math and logic, instead of trying to fix the world by just swapping them (exposing all prior documents as completely bass ackwards but causing irrecoverable choas in the Geometric Algebra world), you can use these new symbols which have a special helper built into them. The new wedge has the tiny upward pointing $\wedge$ in it and the new antiwedge has a downward pointing $\vee$ in it.

So <img src="docs/wedgeGA.svg" alt="\wedgeGA" style="height:1em; vertical-align:-0.15em;"> can replace `\wedge` ($\wedge$) or `\land` ($\land$) (if you're using that)

and `\antiwedgeGA` (<img src="docs/antiwedgeGA.svg" alt="\antiwedgeGA" style="height:1em; vertical-align:-0.15em;">) can replace `\vee` ($\vee$) or `\lor` ($\lor$).

... actually I'm partial to `\mountainGA` for `\antiwedgeGA` but I'd be pushing my luck with that one (see the latex code at the end of the .sty file for an explanation). And of course, the new wedge symbol looks like a W, coincidentally enough, and the new anti-wedge like the letter M.

So for everyone who has been using the old symbols, I regard you as TRAITORS TO BEAUTY OF THE HIGHEST DEGREE ;), but you've also been forging the path to bring this math to the people, so actually I forgive and quite frankly thank you (everyone except the dastard who created them -- and it wasn't Hermann Grassmann! (some history below)).

# wedgeGA-symbols

I was only aware of the swapped usage from mathematicians who would point this out in basic resources for Geometric/Grassmann Algebras. Here's one reference (this is from Chrome browser's AI ... Google Gemini maybe? ... I extracted one sentence for highlighting converted the latex to markdown):

## A fragment of history

> Gian-Carlo Rota was a prominent modern proponent of Grassmann's original point of view on the exterior algebra, which he and his students referred to as "geometric algebra". He advocated for a return to Grassmann's original synthetic approach, where the symbols in the algebra directly denote geometric objects ("pieces of space") rather than just coordinates or numbers. Regarding the specific symbols used for the exterior product: Rota used the term "progressive product" (a translation of Grassmann's _fortschreitendes Produkt_) for the exterior product. This name highlights that the operation increases the grade (dimension) of the geometric objects involved (e.g., the product of a point and a line is a plane, a 1-vector and a 1-vector is a 2-vector, which represents an area element). While the common symbol for the exterior or wedge product today is $\land$ (which Rota was certainly familiar with), Rota sometimes used other notation in his work, such as a simple concatenation (juxtaposition) or square brackets in specific contexts. One source notes that "Geometric algebra" is a term occasionally used to describe Rota's circle of ideas, but it is often treated as a synonym for Clifford algebra by most authors.

<mark> Rota was also aware that the standard symbol for the join operation in projective geometry and lattice theory is $\lor$, but in exterior algebra the "wedge" symbol $\land$ is used, which he considered "backwards" in a certain sense. He noted that $\lor$ should correspond to the union operation in some generalized sense, given the geometric interpretation of the product spanning a subspace. </mark>

> In essence, Rota's "choice of symbols" was tied to his philosophical preference for a synthetic, geometrically intuitive notation that reflected the combinatorial and geometric nature of Grassmann's ideas, which he sought to revive and bring into mainstream mathematics. He emphasized the conceptual meaning behind the symbols, such as "progressive product," rather than just their conventional use.

Note to self: Review <https://ar5iv.labs.arxiv.org/html/0904.3349>

## Why these new symbols

Coming from the computer graphics world and having learned traditional vector calculus in the American education system, I actually became quite upset (closest I get to autism) that this beautiful math had the exact opposite symbols that they should have. And apparently the wedge and the vee were not Grassman's but added by the person who collected his notes. These days I like to think of that person as a knowing saboteur who deprived all of us from this math winning out! \[Edit\] Ok, it looks like it was [Claude Chevalley](https://en.wikipedia.org/wiki/Claude_Chevalley) if you believe this blog article that says: “the wedge symbol seems to have originated with Claude Chevalley sometime between 1951 and 1954.” ([source](https://galileo-unbound.blog/2019/12/02/hermann-grassmanns-nimble-wedge-product/?utm_source=chatgpt.com)) and then the symbols were picked up by Bourbaki propelling them toward a status of canon. Ok, Chevalley is probably somebody's favorite mathematician so I should stop bashing him, now that the culprit has been exposed.

And although I will never get the US to adopt SI units instead of imperial, for some reason I feel like spending the effort to help right this particular wrong before the poison spreads too far!

# Gratitude

* Forever and always to
  * Freya Holmér [Why can't you multiply vectors?](https://www.youtube.com/watch?v=htYh-Tq7ZBI) *You should probably just watch this before anything else.*
    * The first time I saw Freya Holmér's amazing [YouTube channel](https://www.youtube.com/@acegikmo) I thought to myself "Oh if only I could suggest to her to look at Grassmann Algebras" and I had todo items for years saying "Suggest Grassmann Algebras to Freya Holmér" and I always assumed she'd think I'm a total loon. And now look! I was completely inconsequential with her making this (2 years ago now even ... I guess I stopped paying attention to the world).
  * [Eric Lengyel](https://terathon.com/lengyel/) whose GDC (2012?, 2014?) presentations were the first place I heard of Grassmann Algebras
  * David Hestenes [Grassmann's Vision](https://davidhestenes.net/geocalc/pdf/GrassmannsVision.pdf)
  * David Geo Holmes (& STEMCstudio) [_17 Lesson Videos on GA_](https://www.youtube.com/playlist?list=PLxo3PbygE0PLdFFy_2b02JAaUsleFW8py)
    * Coming from a Computer Science background I really enjoyed these introductory videos using Typescript.

# Random

* I'm certain I saw a copy of David Hestenes' book on Bret Victor's ([WorryDream](https://worrydream.com/)) literal, physical bookshelf at an open house of Dynamicland in Oakland, CA, USA.
