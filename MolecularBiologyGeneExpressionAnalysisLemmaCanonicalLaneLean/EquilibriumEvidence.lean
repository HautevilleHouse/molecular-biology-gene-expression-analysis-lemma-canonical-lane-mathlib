import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  match A.object with
  | { population := _, equilibrium := h, _ } => exact h

end HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean