#import "/templates/permanent.typ": *
#show: style

= Normal Distribution

Rather than describing a particular pattern of *events*, the normal distribution can be seen as
a pattern of patterns. Most distributions, when observed many times via *sampling*, will appear
normally distributed. Visually, they present as the well known 'bell curve' and abide by the
*3-sigma rule*.

$
  X tilde.op N(mu, sigma^2) quad quad
  f(x) = 1/(sigma sqrt(2 pi)) e^(-1/2 (x - mu)^2/sigma^2), -oo < x < oo
$

#hide[
  = Related
  #link("Event.typ")[Event]
  #link("Sample_Mean.typ")[Sample_Mean]
  #link("3-Sigma_Rule.typ")[3-Sigma_Rule]
]
