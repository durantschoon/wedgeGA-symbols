
_tl;dr_ For people who know the old symbols, to recognize the new, look for the tiny upward pointing $\wedge$ in the new wedge and the downward pointing $\vee$ in the new antiwedge (and read as you normally would).

_TODO render graphics to get the new symbols to show in the previous sentence._

More longwindedly, if you are used to the old (IMO incorrect) symbols $\wedge$ and $\vee$, instead of trying to fix the world by just swapping them (exposing all prior documents as completely bass ackwards but causing irrecoverable choas in the Geometric Algebra world), these new symbols have a special helper build into them. The new wedge has the tiny upward pointing $\wedge$ in it and the new antiwedge has a downward pointing $\vee$ in it.

So `\wedgeGA` ($\wedgeGA$ $\leftarrow$ yes I'll fix this in the README) can replace `\wedge` ($\wedge$) or `\land` ($\land$) (if you're using that)

and \antiwedgeGA ($\antiwedgeGA$) can replace `\vee` ($\vee$) or `\lor` ($\lor$).

... actually I'm partial to `\mountainGA` for `\wedgeGA` but I'd be pushing my luck with that one (see the latex code at the end of the .sty file for an explanation).

So for everyone who has been using the old symbols, I regard you as TRAITORS TO BEAUTY OF THE HIGHEST DEGREE, but also you've been forging the path to bring this math to the people, so actually I forgive and quite frankly thank you (everyone except the dastard who created them -- and it was't Hermann Grassmann! (TODO provide proof below)).

# wedgeGA-symbols

I'll do my research and maybe make a video. For now (this is from Chrome browser's AI ... Google Gemini maybe? ... I extracted one sentence for highlighting converted the latex to markdown):

## A fragment of history

> Gian-Carlo Rota was a prominent modern proponent of Grassmann's original point of view on the exterior algebra, which he and his students referred to as "geometric algebra". He advocated for a return to Grassmann's original synthetic approach, where the symbols in the algebra directly denote geometric objects ("pieces of space") rather than just coordinates or numbers. Regarding the specific symbols used for the exterior product: Rota used the term "progressive product" (a translation of Grassmann's fortschreitendes Produkt) for the exterior product. This name highlights that the operation increases the grade (dimension) of the geometric objects involved (e.g., the product of a point and a line is a plane, a 1-vector and a 1-vector is a 2-vector, which represents an area element).While the common symbol for the exterior or wedge product today is \(\l and \) (which Rota was certainly familiar with), Rota sometimes used other notation in his work, such as a simple concatenation (juxtaposition) or square brackets in specific contexts. One source notes that "Geometric algebra" is a term occasionally used to describe Rota's circle of ideas, but it is often treated as a synonym for Clifford algebra by most authors.

<mark> Rota was also aware that the standard symbol for the join operation in projective geometry and lattice theory is $\lor$, but in exterior algebra the "wedge" symbol $\land$ is used, which he considered "backwards" in a certain sense. He noted that $\lor$ should correspond to the union operation in some generalized sense, given the geometric interpretation of the product spanning a subspace. </mark>

> In essence, Rota's "choice of symbols" was tied to his philosophical preference for a synthetic, geometrically intuitive notation that reflected the combinatorial and geometric nature of Grassmann's ideas, which he sought to revive and bring into mainstream mathematics. He emphasized the conceptual meaning behind the symbols, such as "progressive product," rather than just their conventional use.

## Why these new symbols

Coming from the computer graphics world and having learned traditional vector calculus in the American education system, I actually became quite upset (closest I get to autism) that this beautiful math had inconsistent symbols. I'll have to look this up again, but apparently the wedge and the vee were not Grassman's but added by the person show collected his notes or something. These days I like to think of that person as a knowing saboteur who deprived all of us from this math winning out. This I hope is helpful for anyone who is undecided about switching to new symbols to invoke the proper anger anger against this person and have nothing to do with their wicked plot! (not-to-self: hopefuly it doesn't turn out to be a beloved famous mathematician).

I will never get the US to adopt SI units instead of imperial but for some reason I feel like spending the effort to help right this wrong.

_TODO finish writing this_

# Gratitude

* Forever and always to
  * [Eric Lengyel](https://terathon.com/lengyel/) whose GDC (2012?, 2014?) presentations were the first place I heard of Grassmann Algebras
  * David Hestenes [Grassmann's Vision](https://davidhestenes.net/geocalc/pdf/GrassmannsVision.pdf) 
  * Freya Holmér [Why can't you multiply vectors?](https://www.youtube.com/watch?v=htYh-Tq7ZBI) 

