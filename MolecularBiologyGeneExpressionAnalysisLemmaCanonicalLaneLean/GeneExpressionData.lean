import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneExpressionData where
  geneId : String
  expressionLevel : Float
  condition : String
  replicate : Nat
  isNormalized : Prop

def expresssionLevelNonnegative (d : GeneExpressionData) : Prop :=
  d.expressionLevel ≥ 0

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse