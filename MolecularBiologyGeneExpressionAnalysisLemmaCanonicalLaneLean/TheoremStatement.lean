import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneExpressionAdmittedObject where
  dataset : Type
  expressionMatrix : dataset → dataset → ℝ
  differentialExpressionSignificant : Prop
  conclusion : differentialExpressionSignificant

def GeneExpressionWitnessClosed (O : GeneExpressionAdmittedObject) : Prop :=
  O.differentialExpressionSignificant

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse